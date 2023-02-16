import { Column, Entity, PrimaryColumn } from 'typeorm';

@Entity()
export class Vezerloegyseg {
  @PrimaryColumn()
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
