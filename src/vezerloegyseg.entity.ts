import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class Vezerloegyseg {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  leiras: string;

  @Column()
  vezerloegysegkomponens: string;

  @Column()
  quantity: number;

  @Column()
  price: number;
}
