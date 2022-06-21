# Service Account

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.0 |
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | >= 0.75 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | >= 0.75 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_iam_service_account.this](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/iam_service_account) | resource |
| [yandex_iam_service_account_api_key.this](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/iam_service_account_api_key) | resource |
| [yandex_iam_service_account_key.this](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/iam_service_account_key) | resource |
| [yandex_iam_service_account_static_access_key.this](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/iam_service_account_static_access_key) | resource |
| [yandex_resourcemanager_folder_iam_member.this](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/resourcemanager_folder_iam_member) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_api_key"></a> [create\_api\_key](#input\_create\_api\_key) | Whether to create an api key.<br>  The API key is a private key used for simplified authorization in the Yandex.Cloud API | `bool` | `false` | no |
| <a name="input_create_key"></a> [create\_key](#input\_create\_key) | Whether to create a pair of keys is used to create a JSON Web Token which is necessary for requesting an IAM Token for a service account | `bool` | `false` | no |
| <a name="input_create_static_access_key"></a> [create\_static\_access\_key](#input\_create\_static\_access\_key) | Whether to create a pair of keys is used to access Yandex Object Storage on behalf of service account | `bool` | `false` | no |
| <a name="input_sa_api_key_description"></a> [sa\_api\_key\_description](#input\_sa\_api\_key\_description) | The description of the api key | `string` | `null` | no |
| <a name="input_sa_description"></a> [sa\_description](#input\_sa\_description) | Description of the service account | `string` | `null` | no |
| <a name="input_sa_folder_id"></a> [sa\_folder\_id](#input\_sa\_folder\_id) | ID of the folder that the service account will be created in. Defaults to the provider folder configuration | `string` | n/a | yes |
| <a name="input_sa_key_algorithm"></a> [sa\_key\_algorithm](#input\_sa\_key\_algorithm) | The algorithm used to generate the key. RSA\_2048 is the default algorithm | `string` | `null` | no |
| <a name="input_sa_key_description"></a> [sa\_key\_description](#input\_sa\_key\_description) | The description of the key pair | `string` | `null` | no |
| <a name="input_sa_key_format"></a> [sa\_key\_format](#input\_sa\_key\_format) | The output format of the keys. PEM\_FILE is the default format | `string` | `null` | no |
| <a name="input_sa_name"></a> [sa\_name](#input\_sa\_name) | Name of the service account. Can be updated without creating a new resource | `string` | n/a | yes |
| <a name="input_sa_pgp_key"></a> [sa\_pgp\_key](#input\_sa\_pgp\_key) | An optional PGP key to encrypt the resulting secret key material.<br>  May either be a base64-encoded public key or a keybase username in the form keybase:keybaseusername | `string` | `null` | no |
| <a name="input_sa_roles"></a> [sa\_roles](#input\_sa\_roles) | A set of service account roles | `set(string)` | `[]` | no |
| <a name="input_sa_static_access_key_description"></a> [sa\_static\_access\_key\_description](#input\_sa\_static\_access\_key\_description) | The description of the service account static key | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_sa_api_key"></a> [sa\_api\_key](#output\_sa\_api\_key) | Full information about api key |
| <a name="output_sa_folder_id"></a> [sa\_folder\_id](#output\_sa\_folder\_id) | The folder ID of the service account |
| <a name="output_sa_id"></a> [sa\_id](#output\_sa\_id) | The ID of the service account |
| <a name="output_sa_key"></a> [sa\_key](#output\_sa\_key) | Full information about key |
| <a name="output_sa_name"></a> [sa\_name](#output\_sa\_name) | The name of the service account |
| <a name="output_sa_roles"></a> [sa\_roles](#output\_sa\_roles) | A list of service account roles |
| <a name="output_sa_static_access_key"></a> [sa\_static\_access\_key](#output\_sa\_static\_access\_key) | Full information about static access key |
<!-- END_TF_DOCS -->
