import Login from 'src/login.entity';
import { Entity, ManyToOne, PrimaryColumn } from 'typeorm';

@Entity()
export default class Token {
  @PrimaryColumn()
  token: string;

  @ManyToOne(() => Login)
  user: Login;

  // Lejárati dátum
}
