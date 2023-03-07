import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export default class Login {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  username: string;

  @Column()
  password: string;
}
