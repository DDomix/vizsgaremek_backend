import {
  IsDefined,
  IsEmail,
  IsNotEmpty,
  IsString,
  IsStrongPassword,
  MinLength,
} from 'class-validator';

export default class loginDto {
  @IsNotEmpty()
  @IsString()
  @IsDefined({ message: 'A felhasználónév megadása kötelező' })
  usernames: string;
  @IsString()
  @MinLength(8)
  @IsNotEmpty()
  @IsStrongPassword()
  @IsDefined({ message: 'Jelszó megadása kötelező!' })
  password: string;
}
