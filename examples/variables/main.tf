terraform {
  backend "local" {
    path = var.state_file_path
  }
}

resource "random_integer" "example" {
  min = var.min_value
  max = var.max_value
}

output "random_value" {
  value = random_integer.example.result
}