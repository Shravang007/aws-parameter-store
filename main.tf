resource "aws_ssm_parameter" "params" {
  count = length(var.params)
  name  = var.params[count.index].name
  type  = var.params[count.index].type
  value = var.params[count.index].value
  key_id = "65440a1c-b9ad-4ac4-9614-e06631037055"
 }

variable "params" {
  default = [
    { name = "roboshop.dev.frontend.catalogue_url", value = "http://catalogue-dev.devopspractice73.online:8080/", type = "String" },
    { name = "roboshop.dev.frontend.user_url", value = "http://user-dev.devopspractice73.online:8080/", type = "String" },
    { name = "roboshop.dev.frontend.cart_url", value = "http://cart-dev.devopspractice73.online:8080/", type = "String" },
    { name = "roboshop.dev.frontend.payment_url", value = "http://payment-dev.devopspractice73.online:8080/", type = "String" },
    { name = "roboshop.dev.frontend.shipping_url", value = "http://shipping-dev.devopspractice73.online:8080/", type = "String" },
    { name = "roboshop.dev.cart.redis_host", value = "redis-dev.devopspractice73.online", type = "String" },
    { name = "roboshop.dev.cart.catalogue_host", value = "catalogue-dev.devopspractice73.online", type = "String" },
    { name = "roboshop.dev.cart.catalogue_port", value = "8080", type = "String" },
    { name = "roboshop.dev.catalogue.mongo", value = "true", type = "String" },
    { name = "roboshop.dev.catalogue.mongo_url", value = "mongodb://mongodb-dev.devopspractice73.online:27017/catalogue", type = "String" },
    { name = "roboshop.dev.payment.cart_host", value = "cart-dev.devopspractice73.online", type = "String" },
    { name = "roboshop.dev.payment.cart_port", value = "8080", type = "String" },
    { name = "roboshop.dev.payment.user_host", value = "user-dev.devopspractice73.online", type = "String" },
    { name = "roboshop.dev.payment.user_port", value = "8080", type = "String" },
    { name = "roboshop.dev.payment.amqp_host", value = "rabbitmq-dev.devopspractice73.online", type = "String" },
    { name = "roboshop.dev.payment.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.dev.shipping.cart_endpoint", value = "cart-dev.devopspractice73.online:8080", type = "String" },
    { name = "roboshop.dev.shipping.db_host", value = "mysql-dev.devopspractice73.online", type = "String" },
    { name = "roboshop.dev.user.mongo", value = "true", type = "String" },
    { name = "roboshop.dev.user.redis_host", value = "redis-dev.devopspractice73.online", type = "String" },
    { name = "roboshop.dev.user.mongo_url", value = "mongodb://mongodb-dev.devopspractice73.online:27017/users", type = "String" },
    { name = "roboshop.dev.rabbitmq.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.dev.mysql.amqp_username", value = "roboshop", type = "String" },

    #Passwords never keep in Git Repos. It will keep in parameter store manually
    { name = "roboshop.dev.payment.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.mysql.amqp_password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.rabbitmq.amqp_pass", value = "roboshop123", type = "SecureString" },


  ]
}