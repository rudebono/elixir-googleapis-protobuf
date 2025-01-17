defmodule Google.Iam.Admin.V1.ServiceAccountKeyAlgorithm do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :KEY_ALG_UNSPECIFIED, 0
  field :KEY_ALG_RSA_1024, 1
  field :KEY_ALG_RSA_2048, 2
end

defmodule Google.Iam.Admin.V1.ServiceAccountPrivateKeyType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :TYPE_PKCS12_FILE, 1
  field :TYPE_GOOGLE_CREDENTIALS_FILE, 2
end

defmodule Google.Iam.Admin.V1.ServiceAccountPublicKeyType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :TYPE_NONE, 0
  field :TYPE_X509_PEM_FILE, 1
  field :TYPE_RAW_PUBLIC_KEY, 2
end

defmodule Google.Iam.Admin.V1.ServiceAccountKeyOrigin do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ORIGIN_UNSPECIFIED, 0
  field :USER_PROVIDED, 1
  field :GOOGLE_PROVIDED, 2
end

defmodule Google.Iam.Admin.V1.RoleView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :BASIC, 0
  field :FULL, 1
end

defmodule Google.Iam.Admin.V1.ListServiceAccountKeysRequest.KeyType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :KEY_TYPE_UNSPECIFIED, 0
  field :USER_MANAGED, 1
  field :SYSTEM_MANAGED, 2
end

defmodule Google.Iam.Admin.V1.Role.RoleLaunchStage do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ALPHA, 0
  field :BETA, 1
  field :GA, 2
  field :DEPRECATED, 4
  field :DISABLED, 5
  field :EAP, 6
end

defmodule Google.Iam.Admin.V1.Permission.PermissionLaunchStage do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ALPHA, 0
  field :BETA, 1
  field :GA, 2
  field :DEPRECATED, 3
end

defmodule Google.Iam.Admin.V1.Permission.CustomRolesSupportLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :SUPPORTED, 0
  field :TESTING, 1
  field :NOT_SUPPORTED, 2
end

defmodule Google.Iam.Admin.V1.LintResult.Level do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :LEVEL_UNSPECIFIED, 0
  field :CONDITION, 3
end

defmodule Google.Iam.Admin.V1.LintResult.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :ERROR, 1
  field :WARNING, 2
  field :NOTICE, 3
  field :INFO, 4
  field :DEPRECATED, 5
end

defmodule Google.Iam.Admin.V1.ServiceAccount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :project_id, 2, type: :string, json_name: "projectId", deprecated: false
  field :unique_id, 4, type: :string, json_name: "uniqueId", deprecated: false
  field :email, 5, type: :string, deprecated: false
  field :display_name, 6, type: :string, json_name: "displayName", deprecated: false
  field :etag, 7, type: :bytes, deprecated: true
  field :description, 8, type: :string, deprecated: false
  field :oauth2_client_id, 9, type: :string, json_name: "oauth2ClientId", deprecated: false
  field :disabled, 11, type: :bool, deprecated: false
end

defmodule Google.Iam.Admin.V1.CreateServiceAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :account_id, 2, type: :string, json_name: "accountId", deprecated: false
  field :service_account, 3, type: Google.Iam.Admin.V1.ServiceAccount, json_name: "serviceAccount"
end

defmodule Google.Iam.Admin.V1.ListServiceAccountsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Iam.Admin.V1.ListServiceAccountsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :accounts, 1, repeated: true, type: Google.Iam.Admin.V1.ServiceAccount
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Iam.Admin.V1.GetServiceAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Iam.Admin.V1.DeleteServiceAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Iam.Admin.V1.PatchServiceAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :service_account, 1, type: Google.Iam.Admin.V1.ServiceAccount, json_name: "serviceAccount"
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Iam.Admin.V1.UndeleteServiceAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Iam.Admin.V1.UndeleteServiceAccountResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :restored_account, 1,
    type: Google.Iam.Admin.V1.ServiceAccount,
    json_name: "restoredAccount"
end

defmodule Google.Iam.Admin.V1.EnableServiceAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Iam.Admin.V1.DisableServiceAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Iam.Admin.V1.ListServiceAccountKeysRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :key_types, 2,
    repeated: true,
    type: Google.Iam.Admin.V1.ListServiceAccountKeysRequest.KeyType,
    json_name: "keyTypes",
    enum: true
end

defmodule Google.Iam.Admin.V1.ListServiceAccountKeysResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :keys, 1, repeated: true, type: Google.Iam.Admin.V1.ServiceAccountKey
end

defmodule Google.Iam.Admin.V1.GetServiceAccountKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :public_key_type, 2,
    type: Google.Iam.Admin.V1.ServiceAccountPublicKeyType,
    json_name: "publicKeyType",
    enum: true,
    deprecated: false
end

defmodule Google.Iam.Admin.V1.ServiceAccountKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string

  field :private_key_type, 2,
    type: Google.Iam.Admin.V1.ServiceAccountPrivateKeyType,
    json_name: "privateKeyType",
    enum: true

  field :key_algorithm, 8,
    type: Google.Iam.Admin.V1.ServiceAccountKeyAlgorithm,
    json_name: "keyAlgorithm",
    enum: true

  field :private_key_data, 3, type: :bytes, json_name: "privateKeyData"
  field :public_key_data, 7, type: :bytes, json_name: "publicKeyData"
  field :valid_after_time, 4, type: Google.Protobuf.Timestamp, json_name: "validAfterTime"
  field :valid_before_time, 5, type: Google.Protobuf.Timestamp, json_name: "validBeforeTime"

  field :key_origin, 9,
    type: Google.Iam.Admin.V1.ServiceAccountKeyOrigin,
    json_name: "keyOrigin",
    enum: true

  field :key_type, 10,
    type: Google.Iam.Admin.V1.ListServiceAccountKeysRequest.KeyType,
    json_name: "keyType",
    enum: true

  field :disabled, 11, type: :bool
end

defmodule Google.Iam.Admin.V1.CreateServiceAccountKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :private_key_type, 2,
    type: Google.Iam.Admin.V1.ServiceAccountPrivateKeyType,
    json_name: "privateKeyType",
    enum: true

  field :key_algorithm, 3,
    type: Google.Iam.Admin.V1.ServiceAccountKeyAlgorithm,
    json_name: "keyAlgorithm",
    enum: true
end

defmodule Google.Iam.Admin.V1.UploadServiceAccountKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :public_key_data, 2, type: :bytes, json_name: "publicKeyData"
end

defmodule Google.Iam.Admin.V1.DeleteServiceAccountKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Iam.Admin.V1.DisableServiceAccountKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Iam.Admin.V1.EnableServiceAccountKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Iam.Admin.V1.SignBlobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: true
  field :bytes_to_sign, 2, type: :bytes, json_name: "bytesToSign", deprecated: true
end

defmodule Google.Iam.Admin.V1.SignBlobResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key_id, 1, type: :string, json_name: "keyId", deprecated: true
  field :signature, 2, type: :bytes, deprecated: true
end

defmodule Google.Iam.Admin.V1.SignJwtRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: true
  field :payload, 2, type: :string, deprecated: true
end

defmodule Google.Iam.Admin.V1.SignJwtResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key_id, 1, type: :string, json_name: "keyId", deprecated: true
  field :signed_jwt, 2, type: :string, json_name: "signedJwt", deprecated: true
end

defmodule Google.Iam.Admin.V1.Role do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :title, 2, type: :string
  field :description, 3, type: :string
  field :included_permissions, 7, repeated: true, type: :string, json_name: "includedPermissions"
  field :stage, 8, type: Google.Iam.Admin.V1.Role.RoleLaunchStage, enum: true
  field :etag, 9, type: :bytes
  field :deleted, 11, type: :bool
end

defmodule Google.Iam.Admin.V1.QueryGrantableRolesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :full_resource_name, 1, type: :string, json_name: "fullResourceName", deprecated: false
  field :view, 2, type: Google.Iam.Admin.V1.RoleView, enum: true
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Iam.Admin.V1.QueryGrantableRolesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :roles, 1, repeated: true, type: Google.Iam.Admin.V1.Role
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Iam.Admin.V1.ListRolesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :view, 4, type: Google.Iam.Admin.V1.RoleView, enum: true
  field :show_deleted, 6, type: :bool, json_name: "showDeleted"
end

defmodule Google.Iam.Admin.V1.ListRolesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :roles, 1, repeated: true, type: Google.Iam.Admin.V1.Role
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Iam.Admin.V1.GetRoleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Iam.Admin.V1.CreateRoleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :role_id, 2, type: :string, json_name: "roleId"
  field :role, 3, type: Google.Iam.Admin.V1.Role
end

defmodule Google.Iam.Admin.V1.UpdateRoleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :role, 2, type: Google.Iam.Admin.V1.Role
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Iam.Admin.V1.DeleteRoleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :bytes
end

defmodule Google.Iam.Admin.V1.UndeleteRoleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :bytes
end

defmodule Google.Iam.Admin.V1.Permission do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :title, 2, type: :string
  field :description, 3, type: :string

  field :only_in_predefined_roles, 4,
    type: :bool,
    json_name: "onlyInPredefinedRoles",
    deprecated: true

  field :stage, 5, type: Google.Iam.Admin.V1.Permission.PermissionLaunchStage, enum: true

  field :custom_roles_support_level, 6,
    type: Google.Iam.Admin.V1.Permission.CustomRolesSupportLevel,
    json_name: "customRolesSupportLevel",
    enum: true

  field :api_disabled, 7, type: :bool, json_name: "apiDisabled"
  field :primary_permission, 8, type: :string, json_name: "primaryPermission"
end

defmodule Google.Iam.Admin.V1.QueryTestablePermissionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :full_resource_name, 1, type: :string, json_name: "fullResourceName"
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Iam.Admin.V1.QueryTestablePermissionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :permissions, 1, repeated: true, type: Google.Iam.Admin.V1.Permission
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Iam.Admin.V1.QueryAuditableServicesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :full_resource_name, 1, type: :string, json_name: "fullResourceName"
end

defmodule Google.Iam.Admin.V1.QueryAuditableServicesResponse.AuditableService do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Iam.Admin.V1.QueryAuditableServicesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :services, 1,
    repeated: true,
    type: Google.Iam.Admin.V1.QueryAuditableServicesResponse.AuditableService
end

defmodule Google.Iam.Admin.V1.LintPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :lint_object, 0

  field :full_resource_name, 1, type: :string, json_name: "fullResourceName"
  field :condition, 5, type: Google.Type.Expr, oneof: 0
end

defmodule Google.Iam.Admin.V1.LintResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :level, 1, type: Google.Iam.Admin.V1.LintResult.Level, enum: true
  field :validation_unit_name, 2, type: :string, json_name: "validationUnitName"
  field :severity, 3, type: Google.Iam.Admin.V1.LintResult.Severity, enum: true
  field :field_name, 5, type: :string, json_name: "fieldName"
  field :location_offset, 6, type: :int32, json_name: "locationOffset"
  field :debug_message, 7, type: :string, json_name: "debugMessage"
end

defmodule Google.Iam.Admin.V1.LintPolicyResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :lint_results, 1,
    repeated: true,
    type: Google.Iam.Admin.V1.LintResult,
    json_name: "lintResults"
end

defmodule Google.Iam.Admin.V1.IAM.Service do
  @moduledoc false

  use GRPC.Service, name: "google.iam.admin.v1.IAM", protoc_gen_elixir_version: "0.14.0"

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

  rpc :DisableServiceAccountKey,
      Google.Iam.Admin.V1.DisableServiceAccountKeyRequest,
      Google.Protobuf.Empty

  rpc :EnableServiceAccountKey,
      Google.Iam.Admin.V1.EnableServiceAccountKeyRequest,
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
