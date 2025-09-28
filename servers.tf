resource "aws_security_group" "youtube_sg" {
  vpc_id      = aws_vpc.youtube.id
  name        = "youtube-sg"
  description = "Allow SSH and HTTP inbound traffic"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "All traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "youtube_instance" {
  ami             = "ami-0c55b159cbfafe1f0"
  instance_type   = "t2.micro"
  subnet_id       = aws_subnet.youtube_sub1.id
  security_groups = [aws_security_group.youtube_sg.id]

  tags = {
    Name = "youtube-instance"
  }
}

resource "aws_instance" "youtube_instance2" {
  ami             = "ami-0c55b159cbfafe1f0"
  instance_type   = "t2.micro"
  subnet_id       = aws_subnet.youtube_sub2.id
  security_groups = [aws_security_group.youtube_sg.id]

  tags = {
    Name = "youtube-instance-2"
  }
}

resource "aws_instance" "youtube_instance3" {
  ami             = "ami-0c55b159cbfafe1f0"
  instance_type   = "t2.micro"
  subnet_id       = aws_subnet.youtube_sub3.id
  security_groups = [aws_security_group.youtube_sg.id]

  tags = {
    Name = "youtube-instance-3"
  }
}   