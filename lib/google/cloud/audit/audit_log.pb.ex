defmodule Google.Cloud.Audit.AuthorizationInfo.PermissionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :PERMISSION_TYPE_UNSPECIFIED, 0
  field :ADMIN_READ, 1
  field :ADMIN_WRITE, 2
  field :DATA_READ, 3
  field :DATA_WRITE, 4
end

defmodule Google.Cloud.Audit.ViolationInfo.PolicyType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :POLICY_TYPE_UNSPECIFIED, 0
  field :BOOLEAN_CONSTRAINT, 1
  field :LIST_CONSTRAINT, 2
  field :CUSTOM_CONSTRAINT, 3
end

defmodule Google.Cloud.Audit.AuditLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :service_name, 7, type: :string, json_name: "serviceName"
  field :method_name, 8, type: :string, json_name: "methodName"
  field :resource_name, 11, type: :string, json_name: "resourceName"

  field :resource_location, 20,
    type: Google.Cloud.Audit.ResourceLocation,
    json_name: "resourceLocation"

  field :resource_original_state, 19,
    type: Google.Protobuf.Struct,
    json_name: "resourceOriginalState"

  field :num_response_items, 12, type: :int64, json_name: "numResponseItems"
  field :status, 2, type: Google.Rpc.Status

  field :authentication_info, 3,
    type: Google.Cloud.Audit.AuthenticationInfo,
    json_name: "authenticationInfo"

  field :authorization_info, 9,
    repeated: true,
    type: Google.Cloud.Audit.AuthorizationInfo,
    json_name: "authorizationInfo"

  field :policy_violation_info, 25,
    type: Google.Cloud.Audit.PolicyViolationInfo,
    json_name: "policyViolationInfo"

  field :request_metadata, 4,
    type: Google.Cloud.Audit.RequestMetadata,
    json_name: "requestMetadata"

  field :request, 16, type: Google.Protobuf.Struct
  field :response, 17, type: Google.Protobuf.Struct
  field :metadata, 18, type: Google.Protobuf.Struct
  field :service_data, 15, type: Google.Protobuf.Any, json_name: "serviceData", deprecated: true
end

defmodule Google.Cloud.Audit.AuthenticationInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :principal_email, 1, type: :string, json_name: "principalEmail"
  field :authority_selector, 2, type: :string, json_name: "authoritySelector"
  field :third_party_principal, 4, type: Google.Protobuf.Struct, json_name: "thirdPartyPrincipal"
  field :service_account_key_name, 5, type: :string, json_name: "serviceAccountKeyName"

  field :service_account_delegation_info, 6,
    repeated: true,
    type: Google.Cloud.Audit.ServiceAccountDelegationInfo,
    json_name: "serviceAccountDelegationInfo"

  field :principal_subject, 8, type: :string, json_name: "principalSubject"
end

defmodule Google.Cloud.Audit.AuthorizationInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource, 1, type: :string
  field :permission, 2, type: :string
  field :granted, 3, type: :bool

  field :resource_attributes, 5,
    type: Google.Rpc.Context.AttributeContext.Resource,
    json_name: "resourceAttributes"

  field :permission_type, 7,
    type: Google.Cloud.Audit.AuthorizationInfo.PermissionType,
    json_name: "permissionType",
    enum: true
end

defmodule Google.Cloud.Audit.RequestMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :caller_ip, 1, type: :string, json_name: "callerIp"
  field :caller_supplied_user_agent, 2, type: :string, json_name: "callerSuppliedUserAgent"
  field :caller_network, 3, type: :string, json_name: "callerNetwork"

  field :request_attributes, 7,
    type: Google.Rpc.Context.AttributeContext.Request,
    json_name: "requestAttributes"

  field :destination_attributes, 8,
    type: Google.Rpc.Context.AttributeContext.Peer,
    json_name: "destinationAttributes"
end

defmodule Google.Cloud.Audit.ResourceLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :current_locations, 1, repeated: true, type: :string, json_name: "currentLocations"
  field :original_locations, 2, repeated: true, type: :string, json_name: "originalLocations"
end

defmodule Google.Cloud.Audit.ServiceAccountDelegationInfo.FirstPartyPrincipal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :principal_email, 1, type: :string, json_name: "principalEmail"
  field :service_metadata, 2, type: Google.Protobuf.Struct, json_name: "serviceMetadata"
end

defmodule Google.Cloud.Audit.ServiceAccountDelegationInfo.ThirdPartyPrincipal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :third_party_claims, 1, type: Google.Protobuf.Struct, json_name: "thirdPartyClaims"
end

defmodule Google.Cloud.Audit.ServiceAccountDelegationInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :Authority, 0

  field :principal_subject, 3, type: :string, json_name: "principalSubject"

  field :first_party_principal, 1,
    type: Google.Cloud.Audit.ServiceAccountDelegationInfo.FirstPartyPrincipal,
    json_name: "firstPartyPrincipal",
    oneof: 0

  field :third_party_principal, 2,
    type: Google.Cloud.Audit.ServiceAccountDelegationInfo.ThirdPartyPrincipal,
    json_name: "thirdPartyPrincipal",
    oneof: 0
end

defmodule Google.Cloud.Audit.PolicyViolationInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :org_policy_violation_info, 1,
    type: Google.Cloud.Audit.OrgPolicyViolationInfo,
    json_name: "orgPolicyViolationInfo"
end

defmodule Google.Cloud.Audit.OrgPolicyViolationInfo.ResourceTagsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Audit.OrgPolicyViolationInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :payload, 1, type: Google.Protobuf.Struct, deprecated: false
  field :resource_type, 2, type: :string, json_name: "resourceType", deprecated: false

  field :resource_tags, 3,
    repeated: true,
    type: Google.Cloud.Audit.OrgPolicyViolationInfo.ResourceTagsEntry,
    json_name: "resourceTags",
    map: true,
    deprecated: false

  field :violation_info, 4,
    repeated: true,
    type: Google.Cloud.Audit.ViolationInfo,
    json_name: "violationInfo",
    deprecated: false
end

defmodule Google.Cloud.Audit.ViolationInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :constraint, 1, type: :string, deprecated: false
  field :error_message, 2, type: :string, json_name: "errorMessage", deprecated: false
  field :checked_value, 3, type: :string, json_name: "checkedValue", deprecated: false

  field :policy_type, 4,
    type: Google.Cloud.Audit.ViolationInfo.PolicyType,
    json_name: "policyType",
    enum: true,
    deprecated: false
end
