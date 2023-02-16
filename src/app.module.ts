import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { Kaszni } from './kaszni.entity';
import { Login } from './login.entity';
import { Motor } from './motor.entity';
import { Register } from './user.entity';
import { Vezerloegyseg } from './vezerloegyseg.entity';

@Module({
  imports: [
    TypeOrmModule.forRoot({
      type: 'mysql',
      host: 'localhost',
      username: 'root',
      password: '',
      database: 'f1',
      entities: [Motor, Login, Register, Kaszni, Vezerloegyseg],
      synchronize: true,
    }),
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
