import { Column, Entity, PrimaryColumn } from 'typeorm';

@Entity()
export class Pilotak {
  @PrimaryColumn()
  id: number;

  @Column()
  nev: string;

  @Column()
  kor: number;

  @Column()
  nemzetiseg: string;

  @Column()
  csapat: string;

  @Column()
  szerzettpontok: number;
}
