import { Injectable } from '@nestjs/common';
import * as crypto from 'crypto';
import Token from './token.entity';
import { DataSource } from 'typeorm';
import { User } from 'src/user.entity';

@Injectable()
export class AuthService {
  constructor(private dataSource: DataSource) {}

  async findUserByToken(token: string) {
    const tokenRepo = this.dataSource.getRepository(Token);
    const tokenObj = await tokenRepo.findOne({
      where: { token },
      relations: { user: true },
    });
    if (tokenObj === null) {
      return null;
    }
    return tokenObj.user;
  }

  async generateTokenFor(user: User) {
    // Véletlen string generálása
    const veletlen = crypto.randomBytes(32);
    const tokenString = veletlen.toString('hex');
    // Eltenni adatbázisba
    const token = new Token();
    token.user = user;
    token.token = tokenString;
    await this.dataSource.getRepository(Token).insert(token);

    return tokenString;
  }
  async deleteTokenFor(token: string) {
    const tokenRepo = this.dataSource.getRepository(Token);
    await tokenRepo.delete({ token });
  }
}
