import { 
    IsArray, 
    IsIn, 
    IsInt, 
    IsNumber, 
    IsOptional, 
    IsPositive, 
    IsString, 
    MinLength 
} from "class-validator";

export class CreateProductDto {
    
    @IsString()
    @MinLength(3)
    title: string;

    @IsString()
    @IsOptional()
    description: string;

    @IsInt()
    @IsPositive()
    @IsOptional()
    stock?: number;

    @IsNumber()
    @IsPositive()
    @IsOptional()
    price?: number;

    @IsIn(['Male', 'Female'])
    gender: string;

    @IsString()
    slug: string;

    @IsString({each: true})
    @IsArray()
    sizes: string[];

    @IsString()
    @IsOptional()
    type?: string;
}
