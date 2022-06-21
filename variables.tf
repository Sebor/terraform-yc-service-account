variable "sa_name" {
  type        = string
  description = "Name of the service account. Can be updated without creating a new resource"
}

variable "sa_roles" {
  type        = set(string)
  default     = []
  description = "A set of service account roles"
}

variable "sa_description" {
  type        = string
  default     = null
  description = "Description of the service account"
}

variable "sa_folder_id" {
  type        = string
  description = "ID of the folder that the service account will be created in. Defaults to the provider folder configuration"
}

variable "create_static_access_key" {
  type        = bool
  default     = false
  description = <<EOF
  Whether to create a pair of keys is used to access Yandex Object Storage on behalf of service account
  EOF
}

variable "create_key" {
  type        = bool
  default     = false
  description = <<EOF
  Whether to create a pair of keys is used to create a JSON Web Token which is necessary for requesting an IAM Token for a service account
  EOF
}

variable "create_api_key" {
  type        = bool
  default     = false
  description = <<EOF
  Whether to create an api key.
  The API key is a private key used for simplified authorization in the Yandex.Cloud API
  EOF
}

variable "sa_static_access_key_description" {
  type        = string
  default     = null
  description = "The description of the service account static key"
}

variable "sa_key_description" {
  type        = string
  default     = null
  description = "The description of the key pair"
}

variable "sa_key_format" {
  type        = string
  default     = null
  description = "The output format of the keys. PEM_FILE is the default format"
}

variable "sa_key_algorithm" {
  type        = string
  default     = null
  description = "The algorithm used to generate the key. RSA_2048 is the default algorithm"
}

variable "sa_api_key_description" {
  type        = string
  default     = null
  description = "The description of the api key"
}

variable "sa_pgp_key" {
  type        = string
  default     = null
  description = <<EOF
  An optional PGP key to encrypt the resulting secret key material.
  May either be a base64-encoded public key or a keybase username in the form keybase:keybaseusername
  EOF
}
