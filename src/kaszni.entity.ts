import { Column, Entity, PrimaryColumn } from 'typeorm';

@Entity()
export class Kaszni {
  @PrimaryColumn()
  id: number;

  @Column()
  kasznikomponensek: string;

  @Column()
  darabszam: number;

  @Column()
  leiras: string;

  @Column()
  ar: number;
}
