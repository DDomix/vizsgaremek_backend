import {
  BadRequestException,
  Body,
  Controller,
  Delete,
  Post,
  Req,
  UnauthorizedException,
} from '@nestjs/common';
import { DataSource } from 'typeorm';
import LoginDto from './login.dto';
import * as bcrypt from 'bcrypt';
import { AuthService } from './auth.service';
import registerDto from 'src/user.dto';
import * as userEntity from 'src/user.entity';
import { Request } from 'express';

@Controller('auth')
export class AuthController {
  constructor(
    private dataSource: DataSource,
    private authService: AuthService,
  ) {}

  @Post('login')
  async login(@Body() loginData: LoginDto) {
    // Ennek az ideáls helye egy "user" modulban lesz
    const userRepo = this.dataSource.getRepository(userEntity.User);
    const user = await userRepo.findOneBy({ username: loginData.username });
    if (user === null) {
      throw new UnauthorizedException('Hibás felhasználónév vagy jelszó');
    }
    if (!(await bcrypt.compare(loginData.password, user.password))) {
      throw new UnauthorizedException('Hibás jelszó');
    }

    return {
      token: await this.authService.generateTokenFor(user),
    };
  }

  // logout: törli a token-t

  @Delete('logout')
  async logout(@Req() req: Request) {
    const token = req.headers.authorization.split(' ')[1]; // Token kinyerése a fejlécből
    await this.authService.deleteTokenFor(token);
  }
  // register: új user létrehozása

  @Post('users')
  async newCourse(@Body() userData: registerDto) {
    if (userData.password !== userData.passwordagain) {
      throw new BadRequestException('Passwords must match');
    }
    const user = new userEntity.User();
    user.email = userData.email;
    user.password = await bcrypt.hash(userData.password, 12);
    user.username = userData.username;
    const userRepo = this.dataSource.getRepository(userEntity.User);
    const existingUser = await userRepo.findOne({
      where: [{ username: userData.username }, { email: userData.email }],
    });
    if (existingUser) {
      let errorMsg = '';

      if (existingUser.username === userData.username) {
        errorMsg += 'A felhasználónév már foglalt!\n';
      }

      if (existingUser.email === userData.email) {
        errorMsg += 'Az email cím már foglalt!\n';
      }

      throw new BadRequestException(errorMsg);
    } else {
      await userRepo.save(user);
    }
  }
}
