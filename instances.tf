#INSTANCES 
 resource "aws_instance" "nginx1" {
   ami = nonsensitive(data.aws_ssm_parameter.ami.value)
   instance_type = "t2.micro"
   subnet_id = aws_subnet.subnet1.id
   vpc_security_group_ids = [aws_security_group.nginx-sg.id]

   user_data = <<EOF
   #! /bin/bash
   sudo amazon-linux-extras install -y nginx1
   sudo service nginx start
   sudo rm /usr/share/nginx/html/index.html
   echo '<html><head><title>Taco team server</title></head><body style=\"background-color:#1F778D\"><p>hello world</p></body></html>
   EOF

   tags = local.common_tags
 }

  resource "aws_instance" "nginx2" {
   ami = nonsensitive(data.aws_ssm_parameter.ami.value)
   instance_type = "t2.micro"
   subnet_id = aws_subnet.subnet2.id
   vpc_security_group_ids = [aws_security_group.nginx-sg.id]

   user_data = <<EOF
   #! /bin/bash
   sudo amazon-linux-extras install -y nginx1
   sudo service nginx start
   sudo rm /usr/share/nginx/html/index.html
   echo '<html><head><title>Taco team server subnet 2</title></head><body style=\"background-color:#1F778D\"><p>hello world</p></body></html>
   EOF

   tags = local.common_tags
 }