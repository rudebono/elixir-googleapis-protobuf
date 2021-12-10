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

  defstruct key: "",
            value: ""

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

  defstruct name: "",
            create_time: nil,
            update_time: nil,
            labels: %{},
            type: :ENDPOINT_POLICY_TYPE_UNSPECIFIED,
            authorization_policy: "",
            endpoint_matcher: nil,
            traffic_port_selector: nil,
            description: "",
            server_tls_policy: "",
            client_tls_policy: ""

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Networkservices.V1beta1.EndpointPolicy.LabelsEntry,
    map: true,
    deprecated: false

  field :type, 5,
    type: Google.Cloud.Networkservices.V1beta1.EndpointPolicy.EndpointPolicyType,
    enum: true,
    deprecated: false

  field :authorization_policy, 7,
    type: :string,
    json_name: "authorizationPolicy",
    deprecated: false

  field :endpoint_matcher, 9,
    type: Google.Cloud.Networkservices.V1beta1.EndpointMatcher,
    json_name: "endpointMatcher",
    deprecated: false

  field :traffic_port_selector, 10,
    type: Google.Cloud.Networkservices.V1beta1.TrafficPortSelector,
    json_name: "trafficPortSelector",
    deprecated: false

  field :description, 11, type: :string, deprecated: false
  field :server_tls_policy, 12, type: :string, json_name: "serverTlsPolicy", deprecated: false
  field :client_tls_policy, 13, type: :string, json_name: "clientTlsPolicy", deprecated: false
end
defmodule Google.Cloud.Networkservices.V1beta1.ListEndpointPoliciesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Networkservices.V1beta1.ListEndpointPoliciesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          endpoint_policies: [Google.Cloud.Networkservices.V1beta1.EndpointPolicy.t()],
          next_page_token: String.t()
        }

  defstruct endpoint_policies: [],
            next_page_token: ""

  field :endpoint_policies, 1,
    repeated: true,
    type: Google.Cloud.Networkservices.V1beta1.EndpointPolicy,
    json_name: "endpointPolicies"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Networkservices.V1beta1.GetEndpointPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Networkservices.V1beta1.CreateEndpointPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          endpoint_policy_id: String.t(),
          endpoint_policy: Google.Cloud.Networkservices.V1beta1.EndpointPolicy.t() | nil
        }

  defstruct parent: "",
            endpoint_policy_id: "",
            endpoint_policy: nil

  field :parent, 1, type: :string, deprecated: false
  field :endpoint_policy_id, 2, type: :string, json_name: "endpointPolicyId", deprecated: false

  field :endpoint_policy, 3,
    type: Google.Cloud.Networkservices.V1beta1.EndpointPolicy,
    json_name: "endpointPolicy",
    deprecated: false
end
defmodule Google.Cloud.Networkservices.V1beta1.UpdateEndpointPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          endpoint_policy: Google.Cloud.Networkservices.V1beta1.EndpointPolicy.t() | nil
        }

  defstruct update_mask: nil,
            endpoint_policy: nil

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :endpoint_policy, 2,
    type: Google.Cloud.Networkservices.V1beta1.EndpointPolicy,
    json_name: "endpointPolicy",
    deprecated: false
end
defmodule Google.Cloud.Networkservices.V1beta1.DeleteEndpointPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
