resource "aws_ssm_parameter" "params" {
  count = length(var.params)
  name  = var.params[count.index].name
  type  = var.params[count.index].type
  value = var.params[count.index].value
  key_id = "65440a1c-b9ad-4ac4-9614-e06631037055"
 }

variable "params" {
  default = [
    { name = "roboshop.dev.frontend.catalogue_url", value = "https://catalogue-dev.devopspractice73.online/", type = "String" },
    { name = "roboshop.dev.frontend.user_url", value = "https://user-dev.devopspractice73.online/", type = "String" },
    { name = "roboshop.dev.frontend.cart_url", value = "https://cart-dev.devopspractice73.online/", type = "String" },
    { name = "roboshop.dev.frontend.payment_url", value = "https://payment-dev.devopspractice73.online/", type = "String" },
    { name = "roboshop.dev.frontend.shipping_url", value = "https://shipping-dev.devopspractice73.online/", type = "String" },

    { name = "roboshop.dev.cart.redis_host", value = "elasticache-dev.fjiben.ng.0001.use1.cache.amazonaws.com", type = "String" },
    { name = "roboshop.dev.cart.catalogue_host", value = "catalogue-dev.devopspractice73.online", type = "String" },
    { name = "roboshop.dev.cart.catalogue_port", value = "80", type = "String" },

    { name = "roboshop.dev.catalogue.mongo", value = "true", type = "String" },
    { name = "roboshop.dev.catalogue.docdb_endpoint", value = "docdb-dev.cluster-cq66jjycz9yh.us-east-1.docdb.amazonaws.com", type = "String" },


    { name = "roboshop.dev.payment.cart_host", value = "cart-dev.devopspractice73.online", type = "String" },
    { name = "roboshop.dev.payment.cart_port", value = "80", type = "String" },
    { name = "roboshop.dev.payment.user_host", value = "user-dev.devopspractice73.online", type = "String" },
    { name = "roboshop.dev.payment.user_port", value = "80", type = "String" },
    { name = "roboshop.dev.payment.amqp_host", value = "rabbitmq-dev.devopspractice73.online", type = "String" },
    { name = "roboshop.dev.payment.amqp_user", value = "roboshop", type = "String" },

    { name = "roboshop.dev.shipping.cart_endpoint", value = "cart-dev.devopspractice73.online:80", type = "String" },
    { name = "roboshop.dev.shipping.db_host", value = "mysql-dev.devopspractice73.online", type = "String" },

    { name = "roboshop.dev.user.mongo", value = "true", type = "String" },
    { name = "roboshop.dev.user.redis_host", value = "elasticache-dev.fjiben.ng.0001.use1.cache.amazonaws.com", type = "String" },

    { name = "roboshop.dev.rabbitmq.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.dev.mysql.username", value = "roboshop", type = "String" },
    { name = "roboshop.dev.mysql.endpoint", value = "rds-dev.cluster-cq66jjycz9yh.us-east-1.rds.amazonaws.com", type = "String" },

    { name = "roboshop.dev.docdb.username", value = "roboshop", type = "String" },
    { name = "roboshop.dev.user.docdb_endpoint", value = "docdb-dev.cluster-cq66jjycz9yh.us-east-1.docdb.amazonaws.com", type = "String" },



    #Passwords never keep in Git Repos. It will keep in parameter store manually
    { name = "roboshop.dev.payment.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.mysql.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.rabbitmq.pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.docdb.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.catalogue.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-dev.cluster-cq66jjycz9yh.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },
    { name = "roboshop.dev.user.docdb_endpoint", value = "mongodb://roboshop:roboshop123@docdb-dev.cluster-cq66jjycz9yh.us-east-1.docdb.amazonaws.com:27017/user?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },


  ]
}




