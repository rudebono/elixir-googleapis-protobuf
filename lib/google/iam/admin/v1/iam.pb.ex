defmodule Google.Iam.Admin.V1.ServiceAccountKeyAlgorithm do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :KEY_ALG_UNSPECIFIED | :KEY_ALG_RSA_1024 | :KEY_ALG_RSA_2048

  field :KEY_ALG_UNSPECIFIED, 0

  field :KEY_ALG_RSA_1024, 1

  field :KEY_ALG_RSA_2048, 2
end

defmodule Google.Iam.Admin.V1.ServiceAccountPrivateKeyType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TYPE_UNSPECIFIED | :TYPE_PKCS12_FILE | :TYPE_GOOGLE_CREDENTIALS_FILE

  field :TYPE_UNSPECIFIED, 0

  field :TYPE_PKCS12_FILE, 1

  field :TYPE_GOOGLE_CREDENTIALS_FILE, 2
end

defmodule Google.Iam.Admin.V1.ServiceAccountPublicKeyType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TYPE_NONE | :TYPE_X509_PEM_FILE | :TYPE_RAW_PUBLIC_KEY

  field :TYPE_NONE, 0

  field :TYPE_X509_PEM_FILE, 1

  field :TYPE_RAW_PUBLIC_KEY, 2
end

defmodule Google.Iam.Admin.V1.ServiceAccountKeyOrigin do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ORIGIN_UNSPECIFIED | :USER_PROVIDED | :GOOGLE_PROVIDED

  field :ORIGIN_UNSPECIFIED, 0

  field :USER_PROVIDED, 1

  field :GOOGLE_PROVIDED, 2
end

defmodule Google.Iam.Admin.V1.RoleView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :BASIC | :FULL

  field :BASIC, 0

  field :FULL, 1
end

defmodule Google.Iam.Admin.V1.ListServiceAccountKeysRequest.KeyType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :KEY_TYPE_UNSPECIFIED | :USER_MANAGED | :SYSTEM_MANAGED

  field :KEY_TYPE_UNSPECIFIED, 0

  field :USER_MANAGED, 1

  field :SYSTEM_MANAGED, 2
end

defmodule Google.Iam.Admin.V1.Role.RoleLaunchStage do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ALPHA | :BETA | :GA | :DEPRECATED | :DISABLED | :EAP

  field :ALPHA, 0

  field :BETA, 1

  field :GA, 2

  field :DEPRECATED, 4

  field :DISABLED, 5

  field :EAP, 6
end

defmodule Google.Iam.Admin.V1.Permission.PermissionLaunchStage do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ALPHA | :BETA | :GA | :DEPRECATED

  field :ALPHA, 0

  field :BETA, 1

  field :GA, 2

  field :DEPRECATED, 3
end

defmodule Google.Iam.Admin.V1.Permission.CustomRolesSupportLevel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SUPPORTED | :TESTING | :NOT_SUPPORTED

  field :SUPPORTED, 0

  field :TESTING, 1

  field :NOT_SUPPORTED, 2
end

defmodule Google.Iam.Admin.V1.LintResult.Level do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :LEVEL_UNSPECIFIED | :CONDITION

  field :LEVEL_UNSPECIFIED, 0

  field :CONDITION, 3
end

defmodule Google.Iam.Admin.V1.LintResult.Severity do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SEVERITY_UNSPECIFIED | :ERROR | :WARNING | :NOTICE | :INFO | :DEPRECATED

  field :SEVERITY_UNSPECIFIED, 0

  field :ERROR, 1

  field :WARNING, 2

  field :NOTICE, 3

  field :INFO, 4

  field :DEPRECATED, 5
end

defmodule Google.Iam.Admin.V1.ServiceAccount do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          project_id: String.t(),
          unique_id: String.t(),
          email: String.t(),
          display_name: String.t(),
          etag: binary,
          description: String.t(),
          oauth2_client_id: String.t(),
          disabled: boolean
        }

  defstruct [
    :name,
    :project_id,
    :unique_id,
    :email,
    :display_name,
    :etag,
    :description,
    :oauth2_client_id,
    :disabled
  ]

  field :name, 1, type: :string
  field :project_id, 2, type: :string
  field :unique_id, 4, type: :string
  field :email, 5, type: :string
  field :display_name, 6, type: :string
  field :etag, 7, type: :bytes, deprecated: true
  field :description, 8, type: :string
  field :oauth2_client_id, 9, type: :string
  field :disabled, 11, type: :bool
end

defmodule Google.Iam.Admin.V1.CreateServiceAccountRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          account_id: String.t(),
          service_account: Google.Iam.Admin.V1.ServiceAccount.t() | nil
        }

  defstruct [:name, :account_id, :service_account]

  field :name, 1, type: :string
  field :account_id, 2, type: :string
  field :service_account, 3, type: Google.Iam.Admin.V1.ServiceAccount
end

defmodule Google.Iam.Admin.V1.ListServiceAccountsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:name, :page_size, :page_token]

  field :name, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Iam.Admin.V1.ListServiceAccountsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          accounts: [Google.Iam.Admin.V1.ServiceAccount.t()],
          next_page_token: String.t()
        }

  defstruct [:accounts, :next_page_token]

  field :accounts, 1, repeated: true, type: Google.Iam.Admin.V1.ServiceAccount
  field :next_page_token, 2, type: :string
end

defmodule Google.Iam.Admin.V1.GetServiceAccountRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Iam.Admin.V1.DeleteServiceAccountRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Iam.Admin.V1.PatchServiceAccountRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_account: Google.Iam.Admin.V1.ServiceAccount.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:service_account, :update_mask]

  field :service_account, 1, type: Google.Iam.Admin.V1.ServiceAccount
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Iam.Admin.V1.UndeleteServiceAccountRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Iam.Admin.V1.UndeleteServiceAccountResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          restored_account: Google.Iam.Admin.V1.ServiceAccount.t() | nil
        }

  defstruct [:restored_account]

  field :restored_account, 1, type: Google.Iam.Admin.V1.ServiceAccount
end

defmodule Google.Iam.Admin.V1.EnableServiceAccountRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Iam.Admin.V1.DisableServiceAccountRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Iam.Admin.V1.ListServiceAccountKeysRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          key_types: [[Google.Iam.Admin.V1.ListServiceAccountKeysRequest.KeyType.t()]]
        }

  defstruct [:name, :key_types]

  field :name, 1, type: :string

  field :key_types, 2,
    repeated: true,
    type: Google.Iam.Admin.V1.ListServiceAccountKeysRequest.KeyType,
    enum: true
end

defmodule Google.Iam.Admin.V1.ListServiceAccountKeysResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keys: [Google.Iam.Admin.V1.ServiceAccountKey.t()]
        }

  defstruct [:keys]

  field :keys, 1, repeated: true, type: Google.Iam.Admin.V1.ServiceAccountKey
end

defmodule Google.Iam.Admin.V1.GetServiceAccountKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          public_key_type: Google.Iam.Admin.V1.ServiceAccountPublicKeyType.t()
        }

  defstruct [:name, :public_key_type]

  field :name, 1, type: :string
  field :public_key_type, 2, type: Google.Iam.Admin.V1.ServiceAccountPublicKeyType, enum: true
end

defmodule Google.Iam.Admin.V1.ServiceAccountKey do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          private_key_type: Google.Iam.Admin.V1.ServiceAccountPrivateKeyType.t(),
          key_algorithm: Google.Iam.Admin.V1.ServiceAccountKeyAlgorithm.t(),
          private_key_data: binary,
          public_key_data: binary,
          valid_after_time: Google.Protobuf.Timestamp.t() | nil,
          valid_before_time: Google.Protobuf.Timestamp.t() | nil,
          key_origin: Google.Iam.Admin.V1.ServiceAccountKeyOrigin.t(),
          key_type: Google.Iam.Admin.V1.ListServiceAccountKeysRequest.KeyType.t()
        }

  defstruct [
    :name,
    :private_key_type,
    :key_algorithm,
    :private_key_data,
    :public_key_data,
    :valid_after_time,
    :valid_before_time,
    :key_origin,
    :key_type
  ]

  field :name, 1, type: :string
  field :private_key_type, 2, type: Google.Iam.Admin.V1.ServiceAccountPrivateKeyType, enum: true
  field :key_algorithm, 8, type: Google.Iam.Admin.V1.ServiceAccountKeyAlgorithm, enum: true
  field :private_key_data, 3, type: :bytes
  field :public_key_data, 7, type: :bytes
  field :valid_after_time, 4, type: Google.Protobuf.Timestamp
  field :valid_before_time, 5, type: Google.Protobuf.Timestamp
  field :key_origin, 9, type: Google.Iam.Admin.V1.ServiceAccountKeyOrigin, enum: true
  field :key_type, 10, type: Google.Iam.Admin.V1.ListServiceAccountKeysRequest.KeyType, enum: true
end

defmodule Google.Iam.Admin.V1.CreateServiceAccountKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          private_key_type: Google.Iam.Admin.V1.ServiceAccountPrivateKeyType.t(),
          key_algorithm: Google.Iam.Admin.V1.ServiceAccountKeyAlgorithm.t()
        }

  defstruct [:name, :private_key_type, :key_algorithm]

  field :name, 1, type: :string
  field :private_key_type, 2, type: Google.Iam.Admin.V1.ServiceAccountPrivateKeyType, enum: true
  field :key_algorithm, 3, type: Google.Iam.Admin.V1.ServiceAccountKeyAlgorithm, enum: true
end

defmodule Google.Iam.Admin.V1.UploadServiceAccountKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          public_key_data: binary
        }

  defstruct [:name, :public_key_data]

  field :name, 1, type: :string
  field :public_key_data, 2, type: :bytes
end

defmodule Google.Iam.Admin.V1.DeleteServiceAccountKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Iam.Admin.V1.SignBlobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          bytes_to_sign: binary
        }

  defstruct [:name, :bytes_to_sign]

  field :name, 1, type: :string, deprecated: true
  field :bytes_to_sign, 2, type: :bytes, deprecated: true
end

defmodule Google.Iam.Admin.V1.SignBlobResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key_id: String.t(),
          signature: binary
        }

  defstruct [:key_id, :signature]

  field :key_id, 1, type: :string, deprecated: true
  field :signature, 2, type: :bytes, deprecated: true
end

defmodule Google.Iam.Admin.V1.SignJwtRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          payload: String.t()
        }

  defstruct [:name, :payload]

  field :name, 1, type: :string, deprecated: true
  field :payload, 2, type: :string, deprecated: true
end

defmodule Google.Iam.Admin.V1.SignJwtResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key_id: String.t(),
          signed_jwt: String.t()
        }

  defstruct [:key_id, :signed_jwt]

  field :key_id, 1, type: :string, deprecated: true
  field :signed_jwt, 2, type: :string, deprecated: true
end

defmodule Google.Iam.Admin.V1.Role do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          title: String.t(),
          description: String.t(),
          included_permissions: [String.t()],
          stage: Google.Iam.Admin.V1.Role.RoleLaunchStage.t(),
          etag: binary,
          deleted: boolean
        }

  defstruct [:name, :title, :description, :included_permissions, :stage, :etag, :deleted]

  field :name, 1, type: :string
  field :title, 2, type: :string
  field :description, 3, type: :string
  field :included_permissions, 7, repeated: true, type: :string
  field :stage, 8, type: Google.Iam.Admin.V1.Role.RoleLaunchStage, enum: true
  field :etag, 9, type: :bytes
  field :deleted, 11, type: :bool
end

defmodule Google.Iam.Admin.V1.QueryGrantableRolesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          full_resource_name: String.t(),
          view: Google.Iam.Admin.V1.RoleView.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:full_resource_name, :view, :page_size, :page_token]

  field :full_resource_name, 1, type: :string
  field :view, 2, type: Google.Iam.Admin.V1.RoleView, enum: true
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
end

defmodule Google.Iam.Admin.V1.QueryGrantableRolesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          roles: [Google.Iam.Admin.V1.Role.t()],
          next_page_token: String.t()
        }

  defstruct [:roles, :next_page_token]

  field :roles, 1, repeated: true, type: Google.Iam.Admin.V1.Role
  field :next_page_token, 2, type: :string
end

defmodule Google.Iam.Admin.V1.ListRolesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          view: Google.Iam.Admin.V1.RoleView.t(),
          show_deleted: boolean
        }

  defstruct [:parent, :page_size, :page_token, :view, :show_deleted]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :view, 4, type: Google.Iam.Admin.V1.RoleView, enum: true
  field :show_deleted, 6, type: :bool
end

defmodule Google.Iam.Admin.V1.ListRolesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          roles: [Google.Iam.Admin.V1.Role.t()],
          next_page_token: String.t()
        }

  defstruct [:roles, :next_page_token]

  field :roles, 1, repeated: true, type: Google.Iam.Admin.V1.Role
  field :next_page_token, 2, type: :string
end

defmodule Google.Iam.Admin.V1.GetRoleRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Iam.Admin.V1.CreateRoleRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          role_id: String.t(),
          role: Google.Iam.Admin.V1.Role.t() | nil
        }

  defstruct [:parent, :role_id, :role]

  field :parent, 1, type: :string
  field :role_id, 2, type: :string
  field :role, 3, type: Google.Iam.Admin.V1.Role
end

defmodule Google.Iam.Admin.V1.UpdateRoleRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          role: Google.Iam.Admin.V1.Role.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :role, :update_mask]

  field :name, 1, type: :string
  field :role, 2, type: Google.Iam.Admin.V1.Role
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Google.Iam.Admin.V1.DeleteRoleRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          etag: binary
        }

  defstruct [:name, :etag]

  field :name, 1, type: :string
  field :etag, 2, type: :bytes
end

defmodule Google.Iam.Admin.V1.UndeleteRoleRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          etag: binary
        }

  defstruct [:name, :etag]

  field :name, 1, type: :string
  field :etag, 2, type: :bytes
end

defmodule Google.Iam.Admin.V1.Permission do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          title: String.t(),
          description: String.t(),
          only_in_predefined_roles: boolean,
          stage: Google.Iam.Admin.V1.Permission.PermissionLaunchStage.t(),
          custom_roles_support_level: Google.Iam.Admin.V1.Permission.CustomRolesSupportLevel.t(),
          api_disabled: boolean,
          primary_permission: String.t()
        }

  defstruct [
    :name,
    :title,
    :description,
    :only_in_predefined_roles,
    :stage,
    :custom_roles_support_level,
    :api_disabled,
    :primary_permission
  ]

  field :name, 1, type: :string
  field :title, 2, type: :string
  field :description, 3, type: :string
  field :only_in_predefined_roles, 4, type: :bool, deprecated: true
  field :stage, 5, type: Google.Iam.Admin.V1.Permission.PermissionLaunchStage, enum: true

  field :custom_roles_support_level, 6,
    type: Google.Iam.Admin.V1.Permission.CustomRolesSupportLevel,
    enum: true

  field :api_disabled, 7, type: :bool
  field :primary_permission, 8, type: :string
end

defmodule Google.Iam.Admin.V1.QueryTestablePermissionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          full_resource_name: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:full_resource_name, :page_size, :page_token]

  field :full_resource_name, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Iam.Admin.V1.QueryTestablePermissionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          permissions: [Google.Iam.Admin.V1.Permission.t()],
          next_page_token: String.t()
        }

  defstruct [:permissions, :next_page_token]

  field :permissions, 1, repeated: true, type: Google.Iam.Admin.V1.Permission
  field :next_page_token, 2, type: :string
end

defmodule Google.Iam.Admin.V1.QueryAuditableServicesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          full_resource_name: String.t()
        }

  defstruct [:full_resource_name]

  field :full_resource_name, 1, type: :string
end

defmodule Google.Iam.Admin.V1.QueryAuditableServicesResponse.AuditableService do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Iam.Admin.V1.QueryAuditableServicesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          services: [Google.Iam.Admin.V1.QueryAuditableServicesResponse.AuditableService.t()]
        }

  defstruct [:services]

  field :services, 1,
    repeated: true,
    type: Google.Iam.Admin.V1.QueryAuditableServicesResponse.AuditableService
end

defmodule Google.Iam.Admin.V1.LintPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          lint_object: {atom, any},
          full_resource_name: String.t()
        }

  defstruct [:lint_object, :full_resource_name]

  oneof :lint_object, 0
  field :full_resource_name, 1, type: :string
  field :condition, 5, type: Google.Type.Expr, oneof: 0
end

defmodule Google.Iam.Admin.V1.LintResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          level: Google.Iam.Admin.V1.LintResult.Level.t(),
          validation_unit_name: String.t(),
          severity: Google.Iam.Admin.V1.LintResult.Severity.t(),
          field_name: String.t(),
          location_offset: integer,
          debug_message: String.t()
        }

  defstruct [
    :level,
    :validation_unit_name,
    :severity,
    :field_name,
    :location_offset,
    :debug_message
  ]

  field :level, 1, type: Google.Iam.Admin.V1.LintResult.Level, enum: true
  field :validation_unit_name, 2, type: :string
  field :severity, 3, type: Google.Iam.Admin.V1.LintResult.Severity, enum: true
  field :field_name, 5, type: :string
  field :location_offset, 6, type: :int32
  field :debug_message, 7, type: :string
end

defmodule Google.Iam.Admin.V1.LintPolicyResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          lint_results: [Google.Iam.Admin.V1.LintResult.t()]
        }

  defstruct [:lint_results]

  field :lint_results, 1, repeated: true, type: Google.Iam.Admin.V1.LintResult
end

defmodule Google.Iam.Admin.V1.IAM.Service do
  @moduledoc false
  use GRPC.Service, name: "google.iam.admin.v1.IAM"

  rpc :ListServiceAccounts,
      Google.Iam.Admin.V1.ListServiceAccountsRequest,
      Google.Iam.Admin.V1.ListServiceAccountsResponse

  rpc :GetServiceAccount,
      Google.Iam.Admin.V1.GetServiceAccountRequest,
      Google.Iam.Admin.V1.ServiceAccount

  rpc :CreateServiceAccount,
      Google.Iam.Admin.V1.CreateServiceAccountRequest,
      Google.Iam.Admin.V1.ServiceAccount

  rpc :UpdateServiceAccount,
      Google.Iam.Admin.V1.ServiceAccount,
      Google.Iam.Admin.V1.ServiceAccount

  rpc :PatchServiceAccount,
      Google.Iam.Admin.V1.PatchServiceAccountRequest,
      Google.Iam.Admin.V1.ServiceAccount

  rpc :DeleteServiceAccount,
      Google.Iam.Admin.V1.DeleteServiceAccountRequest,
      Google.Protobuf.Empty

  rpc :UndeleteServiceAccount,
      Google.Iam.Admin.V1.UndeleteServiceAccountRequest,
      Google.Iam.Admin.V1.UndeleteServiceAccountResponse

  rpc :EnableServiceAccount,
      Google.Iam.Admin.V1.EnableServiceAccountRequest,
      Google.Protobuf.Empty

  rpc :DisableServiceAccount,
      Google.Iam.Admin.V1.DisableServiceAccountRequest,
      Google.Protobuf.Empty

  rpc :ListServiceAccountKeys,
      Google.Iam.Admin.V1.ListServiceAccountKeysRequest,
      Google.Iam.Admin.V1.ListServiceAccountKeysResponse

  rpc :GetServiceAccountKey,
      Google.Iam.Admin.V1.GetServiceAccountKeyRequest,
      Google.Iam.Admin.V1.ServiceAccountKey

  rpc :CreateServiceAccountKey,
      Google.Iam.Admin.V1.CreateServiceAccountKeyRequest,
      Google.Iam.Admin.V1.ServiceAccountKey

  rpc :UploadServiceAccountKey,
      Google.Iam.Admin.V1.UploadServiceAccountKeyRequest,
      Google.Iam.Admin.V1.ServiceAccountKey

  rpc :DeleteServiceAccountKey,
      Google.Iam.Admin.V1.DeleteServiceAccountKeyRequest,
      Google.Protobuf.Empty

  rpc :SignBlob, Google.Iam.Admin.V1.SignBlobRequest, Google.Iam.Admin.V1.SignBlobResponse

  rpc :SignJwt, Google.Iam.Admin.V1.SignJwtRequest, Google.Iam.Admin.V1.SignJwtResponse

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse

  rpc :QueryGrantableRoles,
      Google.Iam.Admin.V1.QueryGrantableRolesRequest,
      Google.Iam.Admin.V1.QueryGrantableRolesResponse

  rpc :ListRoles, Google.Iam.Admin.V1.ListRolesRequest, Google.Iam.Admin.V1.ListRolesResponse

  rpc :GetRole, Google.Iam.Admin.V1.GetRoleRequest, Google.Iam.Admin.V1.Role

  rpc :CreateRole, Google.Iam.Admin.V1.CreateRoleRequest, Google.Iam.Admin.V1.Role

  rpc :UpdateRole, Google.Iam.Admin.V1.UpdateRoleRequest, Google.Iam.Admin.V1.Role

  rpc :DeleteRole, Google.Iam.Admin.V1.DeleteRoleRequest, Google.Iam.Admin.V1.Role

  rpc :UndeleteRole, Google.Iam.Admin.V1.UndeleteRoleRequest, Google.Iam.Admin.V1.Role

  rpc :QueryTestablePermissions,
      Google.Iam.Admin.V1.QueryTestablePermissionsRequest,
      Google.Iam.Admin.V1.QueryTestablePermissionsResponse

  rpc :QueryAuditableServices,
      Google.Iam.Admin.V1.QueryAuditableServicesRequest,
      Google.Iam.Admin.V1.QueryAuditableServicesResponse

  rpc :LintPolicy, Google.Iam.Admin.V1.LintPolicyRequest, Google.Iam.Admin.V1.LintPolicyResponse
end

defmodule Google.Iam.Admin.V1.IAM.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Iam.Admin.V1.IAM.Service
end
