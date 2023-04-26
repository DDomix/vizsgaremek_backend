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
import checkoutDto from './checkout.dto';
import driversDto from './drivers.dto';
import { Pilotak } from './drivers.entity';
import kaszniDto from './kaszni.dto';
import { Kaszni } from './kaszni.entity';
import motorDto from './motor.dto';
import { Motor } from './motor.entity';
import ShopDto from './shop.dto';
import { Shop } from './shop.entity';
import { User } from './user.entity';
import vezerloegysegDto from './vezerloegyseg.dto';
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

  @Get('/api/shop/:id')
  async listShop(@Param() userData: Shop) {
    const usersRepo = this.dataSource.getRepository(Shop);
    return await usersRepo.findOne({
      where: {
        id: userData.id,
      },
    });
  }

  @Post('api/checkout')
  async checkout(@Body() checkoutBody: checkoutDto[]) {
    const shoprepo = this.dataSource.getRepository(Shop);
    for (let co of checkoutBody) {
      const shopItem = await shoprepo.findOne({ where: { id: co.id } });
      const newquantity=shopItem.quantity-co.amount;
      console.log(shopItem.quantity);
      console.log(co.amount);
      shopItem.quantity=newquantity;
      console.log(shopItem);
      await shoprepo.save(shopItem);
    }
    return{message: 'Checkout successful' };
  }


  @Post('api/shop')
  async filter(@Body() userData: ShopDto) {
    const shoprepo = this.dataSource.getRepository(Shop);
    if (userData.team) {
      const filtering = await shoprepo.find({
        where: {
          team: Like(`%${userData.team}%`),
          type: userData.type,
          size: userData.size,
          color: userData.color,
        },
      });
      return filtering;
    } else {
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

  @Get('api/shop/checkout')
  async checkoutlist() {
    const repo = this.dataSource.getRepository(Shop);
    return await repo.find();
  }

  @Delete('/api/users/:id')
  deleteCourse(@Param('id') id: number) {
    const userRepo = this.dataSource.getRepository(User);
    userRepo.delete(id);
  }

  @Post('api/engine')
  async enginefilter(@Body() engineData: motorDto) {
    const engineRepo = this.dataSource.getRepository(Motor);
    if (engineData.motorkomponens) {
      const filtering = await engineRepo.find({
        where: { motorkomponens: Like(`%${engineData.motorkomponens}%`) },
      });
      return filtering;
    } else {
      const allEngines = await engineRepo.find();
      return allEngines;
    }
  }

  @Post('api/bodywork')
  async bodyworkfilter(@Body() bodyworkData: kaszniDto) {
    const bodyworkRepo = this.dataSource.getRepository(Kaszni);
    if (bodyworkData.kasznikomponens) {
      const filtering = await bodyworkRepo.find({
        where: { kasznikomponens: Like(`%${bodyworkData.kasznikomponens}%`) },
      });
      return filtering;
    } else {
      const allBodywork = await bodyworkRepo.find();
      return allBodywork;
    }
  }

  @Post('api/driveability')
  async driveabilityfilter(@Body() driveabilityData: vezerloegysegDto) {
    const bodyworkRepo = this.dataSource.getRepository(Vezerloegyseg);
    if (driveabilityData.vezerloegysegkomponens) {
      const filtering = await bodyworkRepo.find({
        where: {
          vezerloegysegkomponens: Like(
            `%${driveabilityData.vezerloegysegkomponens}%`,
          ),
        },
      });
      return filtering;
    } else {
      const allDriveability = await bodyworkRepo.find();
      return allDriveability;
    }
  }

  @Post('api/drivers')
  async drivers(@Body() driversData: driversDto) {
    const driverrepo = this.dataSource.getRepository(Pilotak);
    if (driversData.nev || driversData.csapat || driversData.nemzetiseg) {
      const filtering = await driverrepo.find({
        where: {
          nev: Like(`%${driversData.nev || ''}%`),
          csapat: Like(`%${driversData.csapat || ''}%`),
          helyezes: driversData.helyezes,
          kategoria: driversData.kategoria,
          kor: driversData.kor,
          nemzetiseg: Like(`%${driversData.nemzetiseg || ''}%`),
          szerzettpontok: driversData.szerzettpontok,
        },
      });
      return filtering;
    } else {
      const alldrivers = await driverrepo.find();
      return alldrivers;
    }
  }
}
