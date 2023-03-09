import {
  IsDefined,
  IsEmail,
  IsNotEmpty,
  IsString,
  IsStrongPassword,
  MinLength,
} from 'class-validator';

export default class registerDto {
  @IsNotEmpty()
  @IsString()
  @IsDefined({ message: 'A felhasználónév megadása kötelező' })
  username: string;
  @IsDefined()
  @IsEmail()
  email: string;
  @IsString()
  @MinLength(8)
  @IsNotEmpty()
  @IsStrongPassword()
  @IsDefined({ message: 'Jelszó megadása kötelező!' })
  password: string;
  @IsString()
  @IsDefined({ message: 'Jelszó megadása kötelező!' })
  passwordagain: string;
}
