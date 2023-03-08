import { BadRequestException, UseGuards } from '@nestjs/common';
import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  Post,
  Render,
  Request,
} from '@nestjs/common';
import { DataSource } from 'typeorm';
import { AuthGuard } from '@nestjs/passport/dist';
import { AppService } from './app.service';
import { Pilotak } from './drivers.entity';
import { Kaszni } from './kaszni.entity';
import { Motor } from './motor.entity';
import registerDto from './register.dto';
import { Register } from './register.entity';
import { Vezerloegyseg } from './vezerloegyseg.entity';
import { Login } from './login.entity';
import * as bcrypt from 'bcrypt';

@Controller()
export class AppController {
  getHello(): any {
    throw new Error('Method not implemented.');
  }
  constructor(
    private readonly appService: AppService,
    private dataSource: DataSource,
  ) {}

  @Get()
  @Render('index')
  index() {
    return { message: 'Welcome to the homepage' };
  }

  @Get('profile')
  @UseGuards(AuthGuard('bearer'))
  ownProfile(@Request() req) {
    const user: Login = req.user;
    return {
      username: user.username,
    };
  }

  @Get('api/motor')
  async listMotor() {
    const repo = this.dataSource.getRepository(Motor);
    return await repo.find();
  }

  @Get('api/kaszni')
  async listKaszni() {
    const repo = this.dataSource.getRepository(Kaszni);
    return await repo.find();
  }

  @Get('api/vezerloegyseg')
  async listVezerloegyseg() {
    const repo = this.dataSource.getRepository(Vezerloegyseg);
    return await repo.find();
  }

  @Get('api/pilotak')
  async listPilotak() {
    const repo = this.dataSource.getRepository(Pilotak);
    return await repo.find();
  }

  @Get('/api/users')
  listRegister() {
    const usersRepo = this.dataSource.getRepository(Register);
    return usersRepo.find();
  }

  @Post('/api/users')
  async newCourse(@Body() userData: registerDto) {
    if (userData.password !== userData.passwordagain) {
      throw new BadRequestException('Passwords must match');
    }
    const user = new Register();
    user.email = userData.email;
    user.password = await bcrypt.hash(userData.password, 12);
    user.username = userData.username;
    const userRepo = this.dataSource.getRepository(Register);
    if (await userRepo.findOneBy({ username: userData.username })) {
      throw new BadRequestException('Ilyen már van');
    } else {
      await userRepo.save(user);
    }
  }

  @Delete('/api/users/:id')
  deleteCourse(@Param('id') id: number) {
    const userRepo = this.dataSource.getRepository(Register);
    userRepo.delete(id);
  }
}
