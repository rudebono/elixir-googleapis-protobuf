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

  field :service_name, 7, type: :string
  field :method_name, 8, type: :string
  field :resource_name, 11, type: :string
  field :resource_location, 20, type: Google.Cloud.Audit.ResourceLocation
  field :resource_original_state, 19, type: Google.Protobuf.Struct
  field :num_response_items, 12, type: :int64
  field :status, 2, type: Google.Rpc.Status
  field :authentication_info, 3, type: Google.Cloud.Audit.AuthenticationInfo
  field :authorization_info, 9, repeated: true, type: Google.Cloud.Audit.AuthorizationInfo
  field :request_metadata, 4, type: Google.Cloud.Audit.RequestMetadata
  field :request, 16, type: Google.Protobuf.Struct
  field :response, 17, type: Google.Protobuf.Struct
  field :metadata, 18, type: Google.Protobuf.Struct
  field :service_data, 15, type: Google.Protobuf.Any
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

  field :principal_email, 1, type: :string
  field :authority_selector, 2, type: :string
  field :third_party_principal, 4, type: Google.Protobuf.Struct
  field :service_account_key_name, 5, type: :string

  field :service_account_delegation_info, 6,
    repeated: true,
    type: Google.Cloud.Audit.ServiceAccountDelegationInfo

  field :principal_subject, 8, type: :string
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
  field :resource_attributes, 5, type: Google.Rpc.Context.AttributeContext.Resource
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

  field :caller_ip, 1, type: :string
  field :caller_supplied_user_agent, 2, type: :string
  field :caller_network, 3, type: :string
  field :request_attributes, 7, type: Google.Rpc.Context.AttributeContext.Request
  field :destination_attributes, 8, type: Google.Rpc.Context.AttributeContext.Peer
end

defmodule Google.Cloud.Audit.ResourceLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          current_locations: [String.t()],
          original_locations: [String.t()]
        }

  defstruct [:current_locations, :original_locations]

  field :current_locations, 1, repeated: true, type: :string
  field :original_locations, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Audit.ServiceAccountDelegationInfo.FirstPartyPrincipal do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          principal_email: String.t(),
          service_metadata: Google.Protobuf.Struct.t() | nil
        }

  defstruct [:principal_email, :service_metadata]

  field :principal_email, 1, type: :string
  field :service_metadata, 2, type: Google.Protobuf.Struct
end

defmodule Google.Cloud.Audit.ServiceAccountDelegationInfo.ThirdPartyPrincipal do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          third_party_claims: Google.Protobuf.Struct.t() | nil
        }

  defstruct [:third_party_claims]

  field :third_party_claims, 1, type: Google.Protobuf.Struct
end

defmodule Google.Cloud.Audit.ServiceAccountDelegationInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          Authority: {atom, any}
        }

  defstruct [:Authority]

  oneof :Authority, 0

  field :first_party_principal, 1,
    type: Google.Cloud.Audit.ServiceAccountDelegationInfo.FirstPartyPrincipal,
    oneof: 0

  field :third_party_principal, 2,
    type: Google.Cloud.Audit.ServiceAccountDelegationInfo.ThirdPartyPrincipal,
    oneof: 0
end
