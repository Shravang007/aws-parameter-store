resource "aws_ssm_parameter" "params" {
  count = length(var.params)
  name  = var.params[count.index].name
  type  = var.params[count.index].type
  value = var.params[count.index].value
  key_id = "65440a1c-b9ad-4ac4-9614-e06631037055"
 }

variable "params" {
  default = [
    { name = "roboshop.dev.frontend.catalogue_url", value = "http://catalogue-dev.devopspractice73.online/", type = "String" },
    { name = "roboshop.dev.frontend.user_url", value = "http://user-dev.devopspractice73.online/", type = "String" },
    { name = "roboshop.dev.frontend.cart_url", value = "http://cart-dev.devopspractice73.online/", type = "String" },
    { name = "roboshop.dev.frontend.payment_url", value = "http://payment-dev.devopspractice73.online/", type = "String" },
    { name = "roboshop.dev.frontend.shipping_url", value = "http://shipping-dev.devopspractice73.online/", type = "String" },

    { name = "roboshop.dev.cart.redis_host", value = "elasticache-dev.fjiben.ng.0001.use1.cache.amazonaws.com", type = "String" },
    { name = "roboshop.dev.cart.catalogue_host", value = "catalogue", type = "String" },
    { name = "roboshop.dev.cart.catalogue_port", value = "8080", type = "String" },

    { name = "roboshop.dev.catalogue.mongo", value = "true", type = "String" },
    { name = "roboshop.dev.catalogue.docdb_endpoint", value = "docdb-dev.cluster-cq66jjycz9yh.us-east-1.docdb.amazonaws.com", type = "String" },


    { name = "roboshop.dev.payment.cart_host", value = "cart", type = "String" },
    { name = "roboshop.dev.payment.cart_port", value = "8080", type = "String" },
    { name = "roboshop.dev.payment.user_host", value = "user", type = "String" },
    { name = "roboshop.dev.payment.user_port", value = "8080", type = "String" },
    { name = "roboshop.dev.payment.amqp_host", value = "rabbitmq-dev.devopspractice73.online", type = "String" },
    { name = "roboshop.dev.payment.amqp_user", value = "roboshop", type = "String" },

    { name = "roboshop.dev.shipping.cart_endpoint", value = "cart-dev.devopspractice73.online:80", type = "String" },
    { name = "roboshop.dev.shipping.db_host", value = "rds-dev.cluster-cq66jjycz9yh.us-east-1.rds.amazonaws.com", type = "String" },

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
    { name = "roboshop.dev.rabbitmq.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.docdb.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.catalogue.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-dev.cluster-cq66jjycz9yh.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },
    { name = "roboshop.dev.user.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-dev.cluster-cq66jjycz9yh.us-east-1.docdb.amazonaws.com:27017/user?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },


    ##Prod ENV
    { name = "roboshop.prod.frontend.catalogue_url", value = "http://catalogue-prod.devopspractice73.online/", type = "String" },
    { name = "roboshop.prod.frontend.user_url", value = "http://user-prod.devopspractice73.online/", type = "String" },
    { name = "roboshop.prod.frontend.cart_url", value = "http://cart-prod.devopspractice73.online/", type = "String" },
    { name = "roboshop.prod.frontend.payment_url", value = "http://payment-prod.devopspractice73.online/", type = "String" },
    { name = "roboshop.prod.frontend.shipping_url", value = "http://shipping-prod.devopspractice73.online/", type = "String" },

    { name = "roboshop.prod.cart.redis_host", value = "elasticache-prod-001.fjiben.0001.use1.cache.amazonaws.com", type = "String" },
    { name = "roboshop.prod.cart.catalogue_host", value = "catalogue-prod.devopspractice73.online", type = "String" },
    { name = "roboshop.prod.cart.catalogue_port", value = "80", type = "String" },

    { name = "roboshop.prod.catalogue.mongo", value = "true", type = "String" },
    { name = "roboshop.prod.catalogue.docdb_endpoint", value = "docdb-prod.cluster-cq66jjycz9yh.us-east-1.docdb.amazonaws.com", type = "String" },


    { name = "roboshop.prod.payment.cart_host", value = "cart-prod.devopspractice73.online", type = "String" },
    { name = "roboshop.prod.payment.cart_port", value = "80", type = "String" },
    { name = "roboshop.prod.payment.user_host", value = "user-prod.devopspractice73.online", type = "String" },
    { name = "roboshop.prod.payment.user_port", value = "80", type = "String" },
    { name = "roboshop.prod.payment.amqp_host", value = "rabbitmq-prod.devopspractice73.online", type = "String" },
    { name = "roboshop.prod.payment.amqp_user", value = "roboshop", type = "String" },

    { name = "roboshop.prod.shipping.cart_endpoint", value = "cart-prod.devopspractice73.online:80", type = "String" },
    { name = "roboshop.prod.shipping.db_host", value = "rds-prod.cluster-cq66jjycz9yh.us-east-1.rds.amazonaws.com", type = "String" },

    { name = "roboshop.prod.user.mongo", value = "true", type = "String" },
    { name = "roboshop.prod.user.redis_host", value = "elasticache-prod-001.fjiben.0001.use1.cache.amazonaws.com", type = "String" },

    { name = "roboshop.prod.rabbitmq.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.prod.mysql.username", value = "roboshop", type = "String" },
    { name = "roboshop.prod.mysql.endpoint", value = "rds-prod.cluster-cq66jjycz9yh.us-east-1.rds.amazonaws.com", type = "String" },

    { name = "roboshop.prod.docdb.username", value = "roboshop", type = "String" },
    { name = "roboshop.prod.user.docdb_endpoint", value = "docdb-prod.cluster-cq66jjycz9yh.us-east-1.docdb.amazonaws.com", type = "String" },



    #Passwords never keep in Git Repos. It will keep in parameter store manually
    { name = "roboshop.prod.payment.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.prod.mysql.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.prod.rabbitmq.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.prod.docdb.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.prod.catalogue.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-prod.cluster-cq66jjycz9yh.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },
    { name = "roboshop.prod.user.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-prod.cluster-cq66jjycz9yh.us-east-1.docdb.amazonaws.com:27017/user?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },

    #Nexus
    { name = "roboshop.nexus.username", value = "admin", type = "SecureString" },
    { name = "roboshop.nexus.password", value = "admin123", type = "SecureString" },

    #App_versions

    { name = "roboshop.prod.frontend.app_version", value = "1.0.0", type = "String" },
    { name = "roboshop.prod.cart.app_version", value = "1.0.0", type = "String" },
    { name = "roboshop.prod.catalogue.app_version", value = "1.0.1", type = "String" },
    { name = "roboshop.prod.payment.app_version", value = "1.0.8", type = "String" },
    { name = "roboshop.prod.shipping.app_version", value = "1.0.0", type = "String" },
    { name = "roboshop.prod.user.app_version", value = "1.0.1", type = "String" },



  ]
}







