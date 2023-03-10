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
import { AppService } from './app.service';
import { Pilotak } from './drivers.entity';
import { Kaszni } from './kaszni.entity';
import { Motor } from './motor.entity';
import { User } from './user.entity';
import { Vezerloegyseg } from './vezerloegyseg.entity';

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
    const usersRepo = this.dataSource.getRepository(User);
    return usersRepo.find();
  }

  @Delete('/api/users/:id')
  deleteCourse(@Param('id') id: number) {
    const userRepo = this.dataSource.getRepository(User);
    userRepo.delete(id);
  }
}
