defmodule Google.Cloud.Networkservices.V1beta1.EndpointPolicy.EndpointPolicyType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ENDPOINT_POLICY_TYPE_UNSPECIFIED | :SIDECAR_PROXY | :GRPC_SERVER

  field :ENDPOINT_POLICY_TYPE_UNSPECIFIED, 0

  field :SIDECAR_PROXY, 1

  field :GRPC_SERVER, 2
end

defmodule Google.Cloud.Networkservices.V1beta1.EndpointPolicy.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkservices.V1beta1.EndpointPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          type: Google.Cloud.Networkservices.V1beta1.EndpointPolicy.EndpointPolicyType.t(),
          authorization_policy: String.t(),
          endpoint_matcher: Google.Cloud.Networkservices.V1beta1.EndpointMatcher.t() | nil,
          traffic_port_selector:
            Google.Cloud.Networkservices.V1beta1.TrafficPortSelector.t() | nil,
          description: String.t(),
          server_tls_policy: String.t(),
          client_tls_policy: String.t()
        }

  defstruct [
    :name,
    :create_time,
    :update_time,
    :labels,
    :type,
    :authorization_policy,
    :endpoint_matcher,
    :traffic_port_selector,
    :description,
    :server_tls_policy,
    :client_tls_policy
  ]

  field :name, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp
  field :update_time, 3, type: Google.Protobuf.Timestamp

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Networkservices.V1beta1.EndpointPolicy.LabelsEntry,
    map: true

  field :type, 5,
    type: Google.Cloud.Networkservices.V1beta1.EndpointPolicy.EndpointPolicyType,
    enum: true

  field :authorization_policy, 7, type: :string
  field :endpoint_matcher, 9, type: Google.Cloud.Networkservices.V1beta1.EndpointMatcher
  field :traffic_port_selector, 10, type: Google.Cloud.Networkservices.V1beta1.TrafficPortSelector
  field :description, 11, type: :string
  field :server_tls_policy, 12, type: :string
  field :client_tls_policy, 13, type: :string
end

defmodule Google.Cloud.Networkservices.V1beta1.ListEndpointPoliciesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Networkservices.V1beta1.ListEndpointPoliciesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          endpoint_policies: [Google.Cloud.Networkservices.V1beta1.EndpointPolicy.t()],
          next_page_token: String.t()
        }

  defstruct [:endpoint_policies, :next_page_token]

  field :endpoint_policies, 1,
    repeated: true,
    type: Google.Cloud.Networkservices.V1beta1.EndpointPolicy

  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Networkservices.V1beta1.GetEndpointPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Networkservices.V1beta1.CreateEndpointPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          endpoint_policy_id: String.t(),
          endpoint_policy: Google.Cloud.Networkservices.V1beta1.EndpointPolicy.t() | nil
        }

  defstruct [:parent, :endpoint_policy_id, :endpoint_policy]

  field :parent, 1, type: :string
  field :endpoint_policy_id, 2, type: :string
  field :endpoint_policy, 3, type: Google.Cloud.Networkservices.V1beta1.EndpointPolicy
end

defmodule Google.Cloud.Networkservices.V1beta1.UpdateEndpointPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          endpoint_policy: Google.Cloud.Networkservices.V1beta1.EndpointPolicy.t() | nil
        }

  defstruct [:update_mask, :endpoint_policy]

  field :update_mask, 1, type: Google.Protobuf.FieldMask
  field :endpoint_policy, 2, type: Google.Cloud.Networkservices.V1beta1.EndpointPolicy
end

defmodule Google.Cloud.Networkservices.V1beta1.DeleteEndpointPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end
