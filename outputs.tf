output "sa_id" {
  value       = yandex_iam_service_account.this.id
  description = "The ID of the service account"
}

output "sa_name" {
  value       = yandex_iam_service_account.this.name
  description = "The name of the service account"
}

output "sa_folder_id" {
  value       = yandex_iam_service_account.this.folder_id
  description = "The folder ID of the service account"
}

output "sa_static_access_key" {
  value       = try(yandex_iam_service_account_static_access_key.this[0], null)
  description = "Full information about static access key"
  sensitive   = true
}

output "sa_key" {
  value       = try(yandex_iam_service_account_key.this[0], null)
  description = "Full information about key"
  sensitive   = true
}

output "sa_api_key" {
  value       = try(yandex_iam_service_account_api_key.this[0], null)
  description = "Full information about api key"
  sensitive   = true
}

output "sa_roles" {
  value       = try(keys(yandex_resourcemanager_folder_iam_member.this), null)
  description = "A list of service account roles"
}
