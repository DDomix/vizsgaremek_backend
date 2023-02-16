import { IsInt, IsNotEmpty, IsString } from 'class-validator';

export default class vezerloegysegDto {
  @IsNotEmpty()
  @IsString()
  leiras: string;

  @IsNotEmpty()
  @IsString()
  vezerloegysegkomponensek: string;

  @IsNotEmpty()
  @IsInt()
  darabszam: number;

  @IsNotEmpty()
  @IsInt()
  ar: number;
}
