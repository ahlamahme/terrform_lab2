
resource "aws_instance" "web1" {
    ami = var.ami
    instance_type = var.instance_type
    subnet_id = aws_subnet.public_subnet.id
    vpc_security_group_ids = [aws_security_group.http-allowed.id]
    tags = {
    Name = "web1"
  }
    user_data = <<-EOF
    #!/bin/bash
    echo "*** Installing apache2"
    sudo apt update -y
    sudo apt install apache2 -y
    echo "*** Completed Installing apache2"
    EOF  
}


resource "aws_instance" "web2" {
    ami = var.ami
    instance_type = var.instance_type
    subnet_id = aws_subnet.private_subnet.id
    vpc_security_group_ids = [aws_security_group.http-allowed.id]
    tags = {
    Name = "web2"
  }
    user_data = <<-EOF
    #!/bin/bash
    echo "*** Installing apache2"
    sudo apt update -y
    sudo apt install apache2 -y
    echo "*** Completed Installing apache2"
    EOF

    
}