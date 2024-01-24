
resource "aws_dynamodb_table" "tokens" {
  hash_key = "user-id"
  range_key = "file-id"
  name     = "git-radar-tokens"

  attribute {
    name = "user-id"
    type = "S"
  }

  attribute {
    name = "file-name" //infraestructure/version 2/xd/modules/Databases/main.tf
    type = "N"
  }
  //TODO hacer clave compleja id usuario + id archivo
  tags = {
    enviroment = var.environment
  }
}

resource "aws_dynamodb_table" "users" {
  hash_key = "user-id"
  name     = "git-radar-users"

  attribute {
    name = "user-id"
    type = "S"
  }


  tags = {
    enviroment = var.environment
  }

}

resource "aws_dynamodb_table" "users-models" {
  hash_key = "user-id"
  name     = "git-radar-users-models"

  attribute {
    name = "user-id"
    type = "S"
  }

  tags = {
    enviroment = var.environment
  }
}