
resource "aws_instance" "first_server" {
ami="ami-0fa1ca9559f1892ec"
instance_type="t2.micro"
key_name="ammu"
tags = {
name="first_server"
 user_data =<<EOF
    #!/bin/bash
    sudo yum -y update
    sudo yum install -y httpd
    sudo enable httpd
    sudo systemctl start httpd
    EOF

}

}