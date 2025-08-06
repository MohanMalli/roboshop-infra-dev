 resource "aws_instance" "mongodb" {
  ami           = local.ami_id 
  instance_type = "t3.micro"
  vpc_security_group_ids = [local.mongodb_sg_id] 
  subnet_id  = local.database_subnet_id

  tags = merge(
    local.common_tags,
    {
      Name = "${var.project}-${var.environment}-mongodb"
    }
  )
}

<<<<<<< HEAD
=======
# null-resource

>>>>>>> 4d20c48 (terraform)
resource "terraform_data" "mongodb" {
  triggers_replace = [
    aws_instance.mongodb.id
  ]

 provisioner "file" {
  source = "bootstrap.sh"
  destination = "/tmp/bootstrap.sh"  #copying file
 }

 connection {
  type     = "ssh"
  user     = "ec2-user"
  password = "DevOps321"
  host     = aws_instance.mongodb.private_ip
  }

  provisioner "remote-exec" {
  inline = [
    "chmod +x /tmp/bootstrap.sh",
<<<<<<< HEAD
    "sudo sh /tmp/bootstrap.sh mongodb"
=======
    "sudo sh /tmp/bootstrap.sh mongodb ${var.environment}"
>>>>>>> 4d20c48 (terraform)
   ]
 }
}

<<<<<<< HEAD
=======
#redis
>>>>>>> 4d20c48 (terraform)
 resource "aws_instance" "redis" {
  ami           = local.ami_id 
  instance_type = "t3.micro"
  vpc_security_group_ids = [local.redis_sg_id] 
  subnet_id  = local.database_subnet_id

  tags = merge(
    local.common_tags,
    {
      Name = "${var.project}-${var.environment}-redis"
    }
  )
}

resource "terraform_data" "redis" {
  triggers_replace = [
    aws_instance.redis.id
  ]

 provisioner "file" {
  source = "bootstrap.sh"
  destination = "/tmp/bootstrap.sh"  #copying file
 }

 connection {
  type     = "ssh"
  user     = "ec2-user"
  password = "DevOps321"
  host     = aws_instance.redis.private_ip
  }

  provisioner "remote-exec" {
  inline = [
    "chmod +x /tmp/bootstrap.sh",
<<<<<<< HEAD
    "sudo sh /tmp/bootstrap.sh redis"
=======
    "sudo sh /tmp/bootstrap.sh redis ${var.environment}"
>>>>>>> 4d20c48 (terraform)
   ]
 }
}

<<<<<<< HEAD

=======
#mysql
>>>>>>> 4d20c48 (terraform)
 resource "aws_instance" "mysql" {
  ami           = local.ami_id 
  instance_type = "t3.micro"
  vpc_security_group_ids = [local.mysql_sg_id] 
  subnet_id  = local.database_subnet_id
  iam_instance_profile ="EC2RoleToFetchSSMParams"

  tags = merge(
    local.common_tags,
    {
      Name = "${var.project}-${var.environment}-mysql"
    }
  )
}

resource "terraform_data" "mysql" {
  triggers_replace = [
    aws_instance.mysql.id
  ]

 provisioner "file" {
  source = "bootstrap.sh"
  destination = "/tmp/bootstrap.sh"  #copying file
 }

 connection {
  type     = "ssh"
  user     = "ec2-user"
  password = "DevOps321"
  host     = aws_instance.mysql.private_ip
  }

  provisioner "remote-exec" {
  inline = [
    "chmod +x /tmp/bootstrap.sh",
<<<<<<< HEAD
    "sudo sh /tmp/bootstrap.sh mysql"
=======
    "sudo sh /tmp/bootstrap.sh mysql ${var.environment}"
>>>>>>> 4d20c48 (terraform)
   ]
 }
}

<<<<<<< HEAD
=======
#rabbitmq
>>>>>>> 4d20c48 (terraform)
 resource "aws_instance" "rabbitmq" {
  ami           = local.ami_id 
  instance_type = "t3.micro"
  vpc_security_group_ids = [local.rabbitmq_sg_id] 
  subnet_id  = local.database_subnet_id

  tags = merge(
    local.common_tags,
    {
      Name = "${var.project}-${var.environment}-rabbitmq"
    }
  )
}

<<<<<<< HEAD
=======

>>>>>>> 4d20c48 (terraform)
resource "terraform_data" "rabbitmq" {
  triggers_replace = [
    aws_instance.rabbitmq.id
  ]

 provisioner "file" {
  source = "bootstrap.sh"
  destination = "/tmp/bootstrap.sh"  #copying file
 }

 connection {
  type     = "ssh"
  user     = "ec2-user"
  password = "DevOps321"
<<<<<<< HEAD
  host     = aws_instance.mysql.private_ip
=======
  host     = aws_instance.rabbitmq.private_ip
>>>>>>> 4d20c48 (terraform)
  }

  provisioner "remote-exec" {
  inline = [
    "chmod +x /tmp/bootstrap.sh",
<<<<<<< HEAD
    "sudo sh /tmp/bootstrap.sh rabbitmq"
=======
    "sudo sh /tmp/bootstrap.sh rabbitmq ${var.environment}"
>>>>>>> 4d20c48 (terraform)
   ]
 }
}

resource "aws_route53_record" "mongodb" {
 zone_id = var.zone_id
<<<<<<< HEAD
 name = "mongodb.${var.zone_name}"
=======
 name = "mongodb-${var.environment}.${var.zone_name}" #mongodb-dev.malli.site
>>>>>>> 4d20c48 (terraform)
 type = "A"
 ttl  = 1
 records = [aws_instance.mongodb.private_ip]
 allow_overwrite = true
}

resource "aws_route53_record" "redis" {
 zone_id = var.zone_id
<<<<<<< HEAD
 name = "redis.${var.zone_name}"
=======
 name = "redis-${var.environment}.${var.zone_name}"
>>>>>>> 4d20c48 (terraform)
 type = "A"
 ttl  = 1
 records = [aws_instance.redis.private_ip]
 allow_overwrite = true
}


resource "aws_route53_record" "mysql" {
 zone_id = var.zone_id
<<<<<<< HEAD
 name = "mysql.${var.zone_name}"
=======
 name = "mysql-${var.environment}.${var.zone_name}"
>>>>>>> 4d20c48 (terraform)
 type = "A"
 ttl  = 1
 records = [aws_instance.mysql.private_ip]
 allow_overwrite = true
}


resource "aws_route53_record" "rabbitmq" {
 zone_id = var.zone_id
<<<<<<< HEAD
 name = "rabbitmq.${var.zone_name}"
=======
 name = "rabbitmq-${var.environment}.${var.zone_name}"
>>>>>>> 4d20c48 (terraform)
 type = "A"
 ttl  = 1
 records = [aws_instance.rabbitmq.private_ip]
 allow_overwrite = true
}
