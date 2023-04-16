import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class Kaszni {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  leiras: string;

  @Column()
  kasznikomponens: string;

  @Column()
  quantity: number;

  @Column()
  price: number;
}
