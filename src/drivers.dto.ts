import { IsInt, IsNotEmpty, IsString } from 'class-validator';

export default class driversDto {
  @IsNotEmpty()
  @IsString()
  nev: string;

  @IsInt()
  @IsNotEmpty()
  kor: number;

  @IsNotEmpty()
  @IsString()
  nemzetiseg: string;

  @IsNotEmpty()
  @IsString()
  csapat: string;

  @IsInt()
  @IsNotEmpty()
  szerzettpontok: number;

  @IsString()
  @IsNotEmpty()
  kategoria: string;

  @IsInt()
  @IsNotEmpty()
  helyezes: number;
}
