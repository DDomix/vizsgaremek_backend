import { Column, Entity, PrimaryColumn } from 'typeorm';

@Entity()
export class Vezerloegyseg {
  @PrimaryColumn()
  id: number;

  @Column()
  vezerloegysegkomponensek: string;

  @Column()
  darabszam: number;

  @Column()
  leiras: string;

  @Column()
  ar: number;
}
