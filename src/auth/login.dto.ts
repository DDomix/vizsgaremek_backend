import {
  IsDefined,
  IsNotEmpty,
  IsString,
  IsStrongPassword,
  MinLength,
} from 'class-validator';

export default class loginDto {
  @IsNotEmpty()
  @IsString()
  @IsDefined({ message: 'A felhasználónév megadása kötelező' })
  username: string;
  @IsString()
  @MinLength(8)
  @IsNotEmpty()
  @IsStrongPassword()
  @IsDefined({ message: 'Jelszó megadása kötelező!' })
  password: string;
}
