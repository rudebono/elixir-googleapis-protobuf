defmodule Google.Identity.Accesscontextmanager.V1.LevelFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LEVEL_FORMAT_UNSPECIFIED, 0
  field :AS_DEFINED, 1
  field :CEL, 2
end

defmodule Google.Identity.Accesscontextmanager.V1.ListAccessPoliciesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Identity.Accesscontextmanager.V1.ListAccessPoliciesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :access_policies, 1,
    repeated: true,
    type: Google.Identity.Accesscontextmanager.V1.AccessPolicy,
    json_name: "accessPolicies"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Identity.Accesscontextmanager.V1.GetAccessPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Identity.Accesscontextmanager.V1.UpdateAccessPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :policy, 1, type: Google.Identity.Accesscontextmanager.V1.AccessPolicy, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Identity.Accesscontextmanager.V1.DeleteAccessPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Identity.Accesscontextmanager.V1.ListAccessLevelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  field :access_level_format, 4,
    type: Google.Identity.Accesscontextmanager.V1.LevelFormat,
    json_name: "accessLevelFormat",
    enum: true
end

defmodule Google.Identity.Accesscontextmanager.V1.ListAccessLevelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :access_levels, 1,
    repeated: true,
    type: Google.Identity.Accesscontextmanager.V1.AccessLevel,
    json_name: "accessLevels"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Identity.Accesscontextmanager.V1.GetAccessLevelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :access_level_format, 2,
    type: Google.Identity.Accesscontextmanager.V1.LevelFormat,
    json_name: "accessLevelFormat",
    enum: true
end

defmodule Google.Identity.Accesscontextmanager.V1.CreateAccessLevelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :access_level, 2,
    type: Google.Identity.Accesscontextmanager.V1.AccessLevel,
    json_name: "accessLevel",
    deprecated: false
end

defmodule Google.Identity.Accesscontextmanager.V1.UpdateAccessLevelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :access_level, 1,
    type: Google.Identity.Accesscontextmanager.V1.AccessLevel,
    json_name: "accessLevel",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Identity.Accesscontextmanager.V1.DeleteAccessLevelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Identity.Accesscontextmanager.V1.ReplaceAccessLevelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :access_levels, 2,
    repeated: true,
    type: Google.Identity.Accesscontextmanager.V1.AccessLevel,
    json_name: "accessLevels",
    deprecated: false

  field :etag, 4, type: :string
end

defmodule Google.Identity.Accesscontextmanager.V1.ReplaceAccessLevelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :access_levels, 1,
    repeated: true,
    type: Google.Identity.Accesscontextmanager.V1.AccessLevel,
    json_name: "accessLevels"
end

defmodule Google.Identity.Accesscontextmanager.V1.ListServicePerimetersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Identity.Accesscontextmanager.V1.ListServicePerimetersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :service_perimeters, 1,
    repeated: true,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeter,
    json_name: "servicePerimeters"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Identity.Accesscontextmanager.V1.GetServicePerimeterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Identity.Accesscontextmanager.V1.CreateServicePerimeterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :service_perimeter, 2,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeter,
    json_name: "servicePerimeter",
    deprecated: false
end

defmodule Google.Identity.Accesscontextmanager.V1.UpdateServicePerimeterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :service_perimeter, 1,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeter,
    json_name: "servicePerimeter",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Identity.Accesscontextmanager.V1.DeleteServicePerimeterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Identity.Accesscontextmanager.V1.ReplaceServicePerimetersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :service_perimeters, 2,
    repeated: true,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeter,
    json_name: "servicePerimeters",
    deprecated: false

  field :etag, 3, type: :string
end

defmodule Google.Identity.Accesscontextmanager.V1.ReplaceServicePerimetersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :service_perimeters, 1,
    repeated: true,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeter,
    json_name: "servicePerimeters"
end

defmodule Google.Identity.Accesscontextmanager.V1.CommitServicePerimetersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :etag, 2, type: :string
end

defmodule Google.Identity.Accesscontextmanager.V1.CommitServicePerimetersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :service_perimeters, 1,
    repeated: true,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeter,
    json_name: "servicePerimeters"
end

defmodule Google.Identity.Accesscontextmanager.V1.ListGcpUserAccessBindingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Identity.Accesscontextmanager.V1.ListGcpUserAccessBindingsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :gcp_user_access_bindings, 1,
    repeated: true,
    type: Google.Identity.Accesscontextmanager.V1.GcpUserAccessBinding,
    json_name: "gcpUserAccessBindings"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Identity.Accesscontextmanager.V1.GetGcpUserAccessBindingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Identity.Accesscontextmanager.V1.CreateGcpUserAccessBindingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :gcp_user_access_binding, 2,
    type: Google.Identity.Accesscontextmanager.V1.GcpUserAccessBinding,
    json_name: "gcpUserAccessBinding",
    deprecated: false
end

defmodule Google.Identity.Accesscontextmanager.V1.UpdateGcpUserAccessBindingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :gcp_user_access_binding, 1,
    type: Google.Identity.Accesscontextmanager.V1.GcpUserAccessBinding,
    json_name: "gcpUserAccessBinding",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Identity.Accesscontextmanager.V1.DeleteGcpUserAccessBindingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Identity.Accesscontextmanager.V1.GcpUserAccessBindingOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Identity.Accesscontextmanager.V1.AccessContextManagerOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Identity.Accesscontextmanager.V1.AccessContextManager.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.identity.accesscontextmanager.v1.AccessContextManager",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListAccessPolicies,
      Google.Identity.Accesscontextmanager.V1.ListAccessPoliciesRequest,
      Google.Identity.Accesscontextmanager.V1.ListAccessPoliciesResponse

  rpc :GetAccessPolicy,
      Google.Identity.Accesscontextmanager.V1.GetAccessPolicyRequest,
      Google.Identity.Accesscontextmanager.V1.AccessPolicy

  rpc :CreateAccessPolicy,
      Google.Identity.Accesscontextmanager.V1.AccessPolicy,
      Google.Longrunning.Operation

  rpc :UpdateAccessPolicy,
      Google.Identity.Accesscontextmanager.V1.UpdateAccessPolicyRequest,
      Google.Longrunning.Operation

  rpc :DeleteAccessPolicy,
      Google.Identity.Accesscontextmanager.V1.DeleteAccessPolicyRequest,
      Google.Longrunning.Operation

  rpc :ListAccessLevels,
      Google.Identity.Accesscontextmanager.V1.ListAccessLevelsRequest,
      Google.Identity.Accesscontextmanager.V1.ListAccessLevelsResponse

  rpc :GetAccessLevel,
      Google.Identity.Accesscontextmanager.V1.GetAccessLevelRequest,
      Google.Identity.Accesscontextmanager.V1.AccessLevel

  rpc :CreateAccessLevel,
      Google.Identity.Accesscontextmanager.V1.CreateAccessLevelRequest,
      Google.Longrunning.Operation

  rpc :UpdateAccessLevel,
      Google.Identity.Accesscontextmanager.V1.UpdateAccessLevelRequest,
      Google.Longrunning.Operation

  rpc :DeleteAccessLevel,
      Google.Identity.Accesscontextmanager.V1.DeleteAccessLevelRequest,
      Google.Longrunning.Operation

  rpc :ReplaceAccessLevels,
      Google.Identity.Accesscontextmanager.V1.ReplaceAccessLevelsRequest,
      Google.Longrunning.Operation

  rpc :ListServicePerimeters,
      Google.Identity.Accesscontextmanager.V1.ListServicePerimetersRequest,
      Google.Identity.Accesscontextmanager.V1.ListServicePerimetersResponse

  rpc :GetServicePerimeter,
      Google.Identity.Accesscontextmanager.V1.GetServicePerimeterRequest,
      Google.Identity.Accesscontextmanager.V1.ServicePerimeter

  rpc :CreateServicePerimeter,
      Google.Identity.Accesscontextmanager.V1.CreateServicePerimeterRequest,
      Google.Longrunning.Operation

  rpc :UpdateServicePerimeter,
      Google.Identity.Accesscontextmanager.V1.UpdateServicePerimeterRequest,
      Google.Longrunning.Operation

  rpc :DeleteServicePerimeter,
      Google.Identity.Accesscontextmanager.V1.DeleteServicePerimeterRequest,
      Google.Longrunning.Operation

  rpc :ReplaceServicePerimeters,
      Google.Identity.Accesscontextmanager.V1.ReplaceServicePerimetersRequest,
      Google.Longrunning.Operation

  rpc :CommitServicePerimeters,
      Google.Identity.Accesscontextmanager.V1.CommitServicePerimetersRequest,
      Google.Longrunning.Operation

  rpc :ListGcpUserAccessBindings,
      Google.Identity.Accesscontextmanager.V1.ListGcpUserAccessBindingsRequest,
      Google.Identity.Accesscontextmanager.V1.ListGcpUserAccessBindingsResponse

  rpc :GetGcpUserAccessBinding,
      Google.Identity.Accesscontextmanager.V1.GetGcpUserAccessBindingRequest,
      Google.Identity.Accesscontextmanager.V1.GcpUserAccessBinding

  rpc :CreateGcpUserAccessBinding,
      Google.Identity.Accesscontextmanager.V1.CreateGcpUserAccessBindingRequest,
      Google.Longrunning.Operation

  rpc :UpdateGcpUserAccessBinding,
      Google.Identity.Accesscontextmanager.V1.UpdateGcpUserAccessBindingRequest,
      Google.Longrunning.Operation

  rpc :DeleteGcpUserAccessBinding,
      Google.Identity.Accesscontextmanager.V1.DeleteGcpUserAccessBindingRequest,
      Google.Longrunning.Operation

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Identity.Accesscontextmanager.V1.AccessContextManager.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Identity.Accesscontextmanager.V1.AccessContextManager.Service
end
