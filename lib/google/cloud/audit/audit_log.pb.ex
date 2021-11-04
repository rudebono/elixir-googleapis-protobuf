defmodule Google.Cloud.Audit.AuditLog do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t(),
          method_name: String.t(),
          resource_name: String.t(),
          resource_location: Google.Cloud.Audit.ResourceLocation.t() | nil,
          resource_original_state: Google.Protobuf.Struct.t() | nil,
          num_response_items: integer,
          status: Google.Rpc.Status.t() | nil,
          authentication_info: Google.Cloud.Audit.AuthenticationInfo.t() | nil,
          authorization_info: [Google.Cloud.Audit.AuthorizationInfo.t()],
          request_metadata: Google.Cloud.Audit.RequestMetadata.t() | nil,
          request: Google.Protobuf.Struct.t() | nil,
          response: Google.Protobuf.Struct.t() | nil,
          metadata: Google.Protobuf.Struct.t() | nil,
          service_data: Google.Protobuf.Any.t() | nil
        }

  defstruct [
    :service_name,
    :method_name,
    :resource_name,
    :resource_location,
    :resource_original_state,
    :num_response_items,
    :status,
    :authentication_info,
    :authorization_info,
    :request_metadata,
    :request,
    :response,
    :metadata,
    :service_data
  ]

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

  field :request_metadata, 4,
    type: Google.Cloud.Audit.RequestMetadata,
    json_name: "requestMetadata"

  field :request, 16, type: Google.Protobuf.Struct
  field :response, 17, type: Google.Protobuf.Struct
  field :metadata, 18, type: Google.Protobuf.Struct
  field :service_data, 15, type: Google.Protobuf.Any, deprecated: true, json_name: "serviceData"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Audit.AuthenticationInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          principal_email: String.t(),
          authority_selector: String.t(),
          third_party_principal: Google.Protobuf.Struct.t() | nil,
          service_account_key_name: String.t(),
          service_account_delegation_info: [Google.Cloud.Audit.ServiceAccountDelegationInfo.t()],
          principal_subject: String.t()
        }

  defstruct [
    :principal_email,
    :authority_selector,
    :third_party_principal,
    :service_account_key_name,
    :service_account_delegation_info,
    :principal_subject
  ]

  field :principal_email, 1, type: :string, json_name: "principalEmail"
  field :authority_selector, 2, type: :string, json_name: "authoritySelector"
  field :third_party_principal, 4, type: Google.Protobuf.Struct, json_name: "thirdPartyPrincipal"
  field :service_account_key_name, 5, type: :string, json_name: "serviceAccountKeyName"

  field :service_account_delegation_info, 6,
    repeated: true,
    type: Google.Cloud.Audit.ServiceAccountDelegationInfo,
    json_name: "serviceAccountDelegationInfo"

  field :principal_subject, 8, type: :string, json_name: "principalSubject"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Audit.AuthorizationInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: String.t(),
          permission: String.t(),
          granted: boolean,
          resource_attributes: Google.Rpc.Context.AttributeContext.Resource.t() | nil
        }

  defstruct [:resource, :permission, :granted, :resource_attributes]

  field :resource, 1, type: :string
  field :permission, 2, type: :string
  field :granted, 3, type: :bool

  field :resource_attributes, 5,
    type: Google.Rpc.Context.AttributeContext.Resource,
    json_name: "resourceAttributes"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Audit.RequestMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          caller_ip: String.t(),
          caller_supplied_user_agent: String.t(),
          caller_network: String.t(),
          request_attributes: Google.Rpc.Context.AttributeContext.Request.t() | nil,
          destination_attributes: Google.Rpc.Context.AttributeContext.Peer.t() | nil
        }

  defstruct [
    :caller_ip,
    :caller_supplied_user_agent,
    :caller_network,
    :request_attributes,
    :destination_attributes
  ]

  field :caller_ip, 1, type: :string, json_name: "callerIp"
  field :caller_supplied_user_agent, 2, type: :string, json_name: "callerSuppliedUserAgent"
  field :caller_network, 3, type: :string, json_name: "callerNetwork"

  field :request_attributes, 7,
    type: Google.Rpc.Context.AttributeContext.Request,
    json_name: "requestAttributes"

  field :destination_attributes, 8,
    type: Google.Rpc.Context.AttributeContext.Peer,
    json_name: "destinationAttributes"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Audit.ResourceLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          current_locations: [String.t()],
          original_locations: [String.t()]
        }

  defstruct [:current_locations, :original_locations]

  field :current_locations, 1, repeated: true, type: :string, json_name: "currentLocations"
  field :original_locations, 2, repeated: true, type: :string, json_name: "originalLocations"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Audit.ServiceAccountDelegationInfo.FirstPartyPrincipal do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          principal_email: String.t(),
          service_metadata: Google.Protobuf.Struct.t() | nil
        }

  defstruct [:principal_email, :service_metadata]

  field :principal_email, 1, type: :string, json_name: "principalEmail"
  field :service_metadata, 2, type: Google.Protobuf.Struct, json_name: "serviceMetadata"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Audit.ServiceAccountDelegationInfo.ThirdPartyPrincipal do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          third_party_claims: Google.Protobuf.Struct.t() | nil
        }

  defstruct [:third_party_claims]

  field :third_party_claims, 1, type: Google.Protobuf.Struct, json_name: "thirdPartyClaims"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Audit.ServiceAccountDelegationInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          Authority:
            {:first_party_principal,
             Google.Cloud.Audit.ServiceAccountDelegationInfo.FirstPartyPrincipal.t() | nil}
            | {:third_party_principal,
               Google.Cloud.Audit.ServiceAccountDelegationInfo.ThirdPartyPrincipal.t() | nil},
          principal_subject: String.t()
        }

  defstruct [:Authority, :principal_subject]

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

  def transform_module(), do: nil
end
