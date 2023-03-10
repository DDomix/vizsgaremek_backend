import { Column, Entity, PrimaryColumn } from 'typeorm';

@Entity()
export class Kaszni {
  @PrimaryColumn()
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
