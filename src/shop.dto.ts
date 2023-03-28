import { IsDefined, IsInt, IsNotEmpty, IsString } from 'class-validator';

export default class ShopDto {
  @IsNotEmpty()
  @IsString()
  @IsDefined()
  type: string;

  @IsNotEmpty()
  @IsString()
  @IsDefined()
  team: string;

  @IsNotEmpty()
  @IsString()
  @IsDefined()
  size: string;

  @IsNotEmpty()
  @IsString()
  @IsDefined()
  color: string;

  @IsNotEmpty()
  @IsInt()
  @IsDefined()
  price: number;

  @IsNotEmpty()
  @IsInt()
  @IsDefined()
  quantity: number;
}
