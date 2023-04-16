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
import { DataSource, Like } from 'typeorm';
import { AppService } from './app.service';
import { Pilotak } from './drivers.entity';
import { Kaszni } from './kaszni.entity';
import { Motor } from './motor.entity';
import { Shop } from './shop.entity';
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
  ) { }

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

  @Get('/api/shop/:id')
  async listShop(@Param() userData: Shop) {
    const usersRepo = this.dataSource.getRepository(Shop);
    return await usersRepo.findOne({
      where: {
        id: userData.id,
      },
    });
  }

  @Post('api/shop')
  async filter(@Body() userData: Shop) {
    const shoprepo = this.dataSource.getRepository(Shop);
    if (userData.team){
      const filtering = await shoprepo.find({
        where: {
          team: Like(`%${userData.team}%`),
          type: userData.type,
          size: userData.size,
          color: userData.color,
        },
      });
      return filtering;
    }else{
      return await shoprepo.find({
      where: {
        team: userData.team,
        type: userData.type,
        size: userData.size,
        color: userData.color,
      },
    });
    }
    
  }

  @Get('api/shop/chechout')
  async checkoutlist() {
    const repo = this.dataSource.getRepository(Shop);
    return await repo.find();
  }

  @Get('/api/shop/checkout/:id')
  async checkout(@Param() ID: number) {
    const shopRepo = this.dataSource.getRepository(Shop);
    const one = await shopRepo.findOne({
      where: {
        id: ID,
      },
    });
    one.quantity - 1;
    return one;
  }

  @Delete('/api/users/:id')
  deleteCourse(@Param('id') id: number) {
    const userRepo = this.dataSource.getRepository(User);
    userRepo.delete(id);
  }

  @Post('api/engine')
  async enginefilter(@Body() engineData: Motor) {
    const engineRepo = this.dataSource.getRepository(Motor);
    if (engineData.motorkomponens) {
      const filtering = await engineRepo.find({ where: { motorkomponens: Like(`%${engineData.motorkomponens}%`) } });
      return filtering;
    } else {
      const allEngines = await engineRepo.find();
      return allEngines;
    }
  }

  @Post('api/bodywork')
  async bodyworkfilter(@Body() bodyworkData: Kaszni) {
    const bodyworkRepo = this.dataSource.getRepository(Kaszni);
    if (bodyworkData.kasznikomponens) {
      const filtering = await bodyworkRepo.find({ where: { kasznikomponens: Like(`%${bodyworkData.kasznikomponens}%`) } });
      return filtering;
    } else {
      const allBodywork = await bodyworkRepo.find();
      return allBodywork;
    }
  }

  @Post('api/driveability')
  async driveabilityfilter(@Body() driveabilityData: Vezerloegyseg) {
    const bodyworkRepo = this.dataSource.getRepository(Vezerloegyseg);
    if (driveabilityData.vezerloegysegkomponens) {
      const filtering = await bodyworkRepo.find({ where: { vezerloegysegkomponens: Like(`%${driveabilityData.vezerloegysegkomponens}%`) } });
      return filtering;
    } else {
      const allDriveability = await bodyworkRepo.find();
      return allDriveability;
    }
  }
}
