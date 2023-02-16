import { IsInt, IsNotEmpty, IsString } from 'class-validator';

export default class kaszniDto {
  @IsNotEmpty()
  @IsString()
  leiras: string;

  @IsNotEmpty()
  @IsString()
  kasznikomponensek: string;

  @IsNotEmpty()
  @IsInt()
  darabszam: number;

  @IsNotEmpty()
  @IsInt()
  ar: number;
}
