import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class Pilotak {
  @PrimaryGeneratedColumn()
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

  @Column()
  kategoria: string;

  @Column()
  helyezes: number;
}
