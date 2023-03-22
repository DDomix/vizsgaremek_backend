import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity()
export class Shop {
    @PrimaryGeneratedColumn()
    id:number;
    
    @Column()
    name:string;
    
    @Column()
    team:string;

    @Column()
    size:string;
    
    @Column()
    color: string;

    @Column()
    price: number;

    @Column()
    quantity: number;
}