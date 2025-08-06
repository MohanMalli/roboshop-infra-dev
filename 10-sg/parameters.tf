<<<<<<< HEAD
resource "aws_ssm_parameter" "frontend_sg_id" {
 name = "/${var.project}/${var.environment}/frontend_sg_id " # /roboshop/dev/fronend_sg_id
 type = "String"
 value = module.frontend.sg_id
}

resource "aws_ssm_parameter" "bastion_sg_id" {
 name = "/${var.project}/${var.environment}/bastion_sg_id " # /roboshop/dev/bastion_sg_id
 type = "String"
 value = module.bastion.sg_id
}

resource "aws_ssm_parameter" "backend_alb_sg_id" {
 name = "/${var.project}/${var.environment}/backend_alb_sg_id" # /roboshop/dev/backend_alb_sg_id
 type = "String"
 value = module.backend_alb.sg_id
}

resource "aws_ssm_parameter" "vpn_sg_id" {
 name = "/${var.project}/${var.environment}/vpn_sg_id"  # /roboshop/dev/vpn_sg_id
 type = "String"
 value = module.vpn.sg_id
}

=======
>>>>>>> 4d20c48 (terraform)
resource "aws_ssm_parameter" "mongodb_sg_id" {
 name = "/${var.project}/${var.environment}/mongodb_sg_id" # /roboshop/dev/mongodb_sg_id
 type = "String"
 value = module.mongodb.sg_id
}

resource "aws_ssm_parameter" "redis_sg_id" {
 name = "/${var.project}/${var.environment}/redis_sg_id" # /roboshop/dev/redis_sg_id
 type = "String"
 value = module.redis.sg_id
}

resource "aws_ssm_parameter" "mysql_sg_id" {
<<<<<<< HEAD
 name = "/${var.project}/${var.environment}/mysql_sg_id" # /roboshop/dev/vpn_sg_id
=======
 name = "/${var.project}/${var.environment}/mysql_sg_id" # /roboshop/dev/mysql_sg_id
>>>>>>> 4d20c48 (terraform)
 type = "String"
 value = module.mysql.sg_id
}

resource "aws_ssm_parameter" "rabbitmq_sg_id" {
<<<<<<< HEAD
 name = "/${var.project}/${var.environment}/rabbitmq_sg_id" # /roboshop/dev/vpn_sg_id
 type = "String"
 value = module.rabbitmq.sg_id
}
=======
 name = "/${var.project}/${var.environment}/rabbitmq_sg_id" # /roboshop/dev/rabbitmq_sg_id
 type = "String"
 value = module.rabbitmq.sg_id
}

resource "aws_ssm_parameter" "catalogue_sg_id" {
 name = "/${var.project}/${var.environment}/catalogue_sg_id" # /roboshop/dev/catalogue_sg_id
 type = "String"
 value = module.catalogue.sg_id
}

resource "aws_ssm_parameter" "user_sg_id" {
 name = "/${var.project}/${var.environment}/user_sg_id" # /roboshop/dev/catalogue_sg_id
 type = "String"
 value = module.user.sg_id
}

resource "aws_ssm_parameter" "cart_sg_id" {
 name = "/${var.project}/${var.environment}/cart_sg_id" # /roboshop/dev/catalogue_sg_id
 type = "String"
 value = module.cart.sg_id
}

resource "aws_ssm_parameter" "payment_sg_id" {
 name = "/${var.project}/${var.environment}/payment_sg_id" # /roboshop/dev/catalogue_sg_id
 type = "String"
 value = module.payment.sg_id
}

resource "aws_ssm_parameter" "shipping_sg_id" {
 name = "/${var.project}/${var.environment}/shipping_sg_id" # /roboshop/dev/catalogue_sg_id
 type = "String"
 value = module.shipping.sg_id
}

resource "aws_ssm_parameter" "backend_alb_sg_id" {
 name = "/${var.project}/${var.environment}/backend_alb_sg_id" # /roboshop/dev/backend_alb_sg_id
 type = "String"
 value = module.backend_alb.sg_id
}

resource "aws_ssm_parameter" "frontend_sg_id" {
 name = "/${var.project}/${var.environment}/frontend_sg_id " # /roboshop/dev/fronend_sg_id
 type = "String"
 value = module.frontend.sg_id
}

resource "aws_ssm_parameter" "frontend_alb_sg_id" {
 name = "/${var.project}/${var.environment}/frontend_alb_sg_id " # /roboshop/dev/fronend_sg_id
 type = "String"
 value = module.frontend_alb.sg_id
}

resource "aws_ssm_parameter" "bastion_sg_id" {
 name = "/${var.project}/${var.environment}/bastion_sg_id " # /roboshop/dev/bastion_sg_id
 type = "String"
 value = module.bastion.sg_id
}

resource "aws_ssm_parameter" "vpn_sg_id" {
 name = "/${var.project}/${var.environment}/vpn_sg_id"  # /roboshop/dev/vpn_sg_id
 type = "String"
 value = module.vpn.sg_id
}

/*resource "aws_ssm_parameter" "mongodb_sg_id" {
 name = "/${var.project}/${var.environment}/mongodb_sg_id" # /roboshop/dev/mongodb_sg_id
 type = "String"
 value = module.mongodb.sg_id
}*/

 
>>>>>>> 4d20c48 (terraform)
