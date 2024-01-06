resource "aws_vpc" "robo_vpc_tf" {
    cidr_block       = "10.0.0.0/16"
    instance_tenancy = "default"

    tags = {
      Name = "robovpc"
  }
}

resource "aws_subnet" "robo_sub_tf" {
  vpc_id     = aws_vpc.robo_vpc_tf.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "robosub"
  }
}

resource "aws_internet_gateway" "robo_ig_tf" {
  vpc_id = aws_vpc.robo_vpc_tf.id

  tags = {
    Name = "roboig"
  }
}

resource "aws_route_table" "robo_table_tf" {
  vpc_id = aws_vpc.robo_vpc_tf.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.robo_ig_tf.id
  }

  tags = {
    Name = "robotable"
  }
}

resource "aws_route_table_association" "robo_table_association" {
  subnet_id      = aws_subnet.robo_sub_tf.id
  route_table_id = aws_route_table.robo_table_t.id
}