import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class Motor {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  leiras: string;

  @Column()
  motorkomponens: string;

  @Column()
  quantity: number;

  @Column()
  price: number;
}
