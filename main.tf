resource "yandex_iam_service_account" "this" {
  name        = var.sa_name
  description = var.sa_description
  folder_id   = var.sa_folder_id
}

resource "yandex_resourcemanager_folder_iam_member" "this" {
  for_each = var.sa_roles

  folder_id = var.sa_folder_id
  member    = "serviceAccount:${yandex_iam_service_account.this.id}"
  role      = each.value
}

resource "yandex_iam_service_account_static_access_key" "this" {
  count = var.create_static_access_key ? 1 : 0

  service_account_id = yandex_iam_service_account.this.id
  description        = var.sa_static_access_key_description
  pgp_key            = var.sa_pgp_key
}

resource "yandex_iam_service_account_key" "this" {
  count = var.create_key ? 1 : 0

  service_account_id = yandex_iam_service_account.this.id
  description        = var.sa_key_description
  format             = var.sa_key_format
  key_algorithm      = var.sa_key_algorithm
  pgp_key            = var.sa_pgp_key
}

resource "yandex_iam_service_account_api_key" "this" {
  count = var.create_api_key ? 1 : 0

  service_account_id = yandex_iam_service_account.this.id
  description        = var.sa_api_key_description
  pgp_key            = var.sa_pgp_key
}
