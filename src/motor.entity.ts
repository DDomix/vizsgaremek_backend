import { Column, Entity, PrimaryColumn } from 'typeorm';

@Entity()
export class Motor {
  @PrimaryColumn()
  id: number;

  @Column()
  motorkomponensek: string;

  @Column()
  darabszam: number;

  @Column()
  leiras: string;

  @Column()
  ar: number;
}
