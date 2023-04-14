import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class Kaszni {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  leiras: string;

  @Column()
  kasznikomponensek: string;

  @Column()
  darabszam: number;

  @Column()
  ar: number;
}
