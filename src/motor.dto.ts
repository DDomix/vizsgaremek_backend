import { IsInt, IsNotEmpty, IsString } from 'class-validator';

export default class motorDto {
  @IsNotEmpty()
  @IsString()
  leiras: string;

  @IsNotEmpty()
  @IsString()
  motorkomponensek: string;

  @IsNotEmpty()
  @IsInt()
  darabszam: number;

  @IsNotEmpty()
  @IsInt()
  ar: number;
}
