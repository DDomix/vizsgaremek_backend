import {
  BadRequestException,
  Body,
  Controller,
  Post,
  UnauthorizedException,
} from '@nestjs/common';
import Login from 'src/login.entity';
import { DataSource } from 'typeorm';
import LoginDto from './login.dto';
import * as bcrypt from 'bcrypt';
import { AuthService } from './auth.service';
import registerDto from 'src/register.dto';
import { Register } from 'src/register.entity';

@Controller('auth')
export class AuthController {
  constructor(
    private dataSource: DataSource,
    private authService: AuthService,
  ) {}

  @Post('login')
  async login(@Body() loginData: LoginDto) {
    // Ennek az ideáls helye egy "user" modulban lesz
    const userRepo = this.dataSource.getRepository(Login);
    const user = await userRepo.findOneBy({ username: loginData.username });
    if (user === null) {
      throw new UnauthorizedException('Hibás felhasználónév vagy jelszó');
    }
    if (!(await bcrypt.compare(loginData.password, user.password))) {
      throw new UnauthorizedException('Hibás felhasználónév vagy jelszó');
    }

    return {
      token: await this.authService.generateTokenFor(user),
    };
  }

  // logout: törli a token-t
  // register: új user létrehozása
  @Post('/api/users')
  newCourse(@Body() userData: registerDto) {
    if (userData.password !== userData.passwordagain) {
      throw new BadRequestException('Passwords must match');
    }
    const user = new Register();
    user.email = userData.email;
    user.password = bcrypt.hash(userData.password);
    user.username = userData.username;
    const userRepo = this.dataSource.getRepository(Register);
    userRepo.save(user);
  }
}
