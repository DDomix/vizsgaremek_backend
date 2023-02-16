import { BadRequestException } from '@nestjs/common';
import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  Post,
  Render,
} from '@nestjs/common';
import { DataSource } from 'typeorm';
import { AppService } from './app.service';
import { Motor } from './motor.entity';
import registerDto from './register.dto';
import { Register } from './user.entity';

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

  @Get('api/motor')
  async listCsavar() {
    const repo = this.dataSource.getRepository(Motor);
    return await repo.find();
  }
  @Get('/api/users')
  listCourses() {
    const usersRepo = this.dataSource.getRepository(Register);
    return usersRepo.find();
  }

  @Post('/api/users')
  newCourse(@Body() userData: registerDto) {
    if (userData.password !== userData.passwordagain) {
      throw new BadRequestException('Passwords must match');
    }
    const user = new Register();
    user.email = userData.email;
    user.password = /*bcyrpt titkositas*/ ' ';
    user.username = userData.usernames;
    const userRepo = this.dataSource.getRepository(Register);
    userRepo.save(user);
  }

  @Delete('/api/users/:id')
  deleteCourse(@Param('id') id: number) {
    const userRepo = this.dataSource.getRepository(Register);
    userRepo.delete(id);
  }
}
