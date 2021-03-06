resource "aws_vpc" "myvpc" {
    cidr_block = "10.0.0.0/16"
  
}

resource "aws_subnet" "public_subnet" {
    vpc_id     = aws_vpc.myvpc.id
    cidr_block = "10.0.1.0/24"

    tags = {
        Name = "public_subnet"
    }
  
}