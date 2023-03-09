import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { AuthController } from './auth/auth.controller';
import Token from './auth/token.entity';
import TokenStrategy from './auth/token.strategy';
import { Pilotak } from './drivers.entity';
import { Kaszni } from './kaszni.entity';
import { User } from './user.entity';
import { Motor } from './motor.entity';
import { Vezerloegyseg } from './vezerloegyseg.entity';
import { AuthModule } from './auth/auth.module';

@Module({
  imports: [
    TypeOrmModule.forRoot({
      type: 'mysql',
      host: 'localhost',
      username: 'root',
      password: '',
      database: 'f1',
      entities: [Motor, User, Kaszni, Vezerloegyseg, Pilotak, Token],
      synchronize: true,
    }),
    AuthModule,
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
