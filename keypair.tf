resource "aws_key_pair" "bank_app_key" {
  key_name   = "bank-key"
  public_key = file(var.PUB_KEY)
}