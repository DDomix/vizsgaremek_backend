import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class Vezerloegyseg {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  leiras: string;

  @Column()
  vezerloegysegkomponensek: string;

  @Column()
  darabszam: number;

  @Column()
  ar: number;
}
