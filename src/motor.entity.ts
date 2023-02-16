import { Column, Entity, PrimaryColumn } from 'typeorm';

@Entity()
export class Motor {
  @PrimaryColumn()
  id: number;

  @Column()
  leiras: string;

  @Column()
  motorkomponensek: string;

  @Column()
  darabszam: number;

  @Column()
  ar: number;
}
