output "output" {
  value = local.users_data[*].username
}
output "role_user" {
  value = local.user_role_pair
}