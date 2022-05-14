defmodule Google.Cloud.Networkservices.V1beta1.EndpointPolicy.EndpointPolicyType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :ENDPOINT_POLICY_TYPE_UNSPECIFIED, 0
  field :SIDECAR_PROXY, 1
  field :GRPC_SERVER, 2
end
defmodule Google.Cloud.Networkservices.V1beta1.EndpointPolicy.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Networkservices.V1beta1.EndpointPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Networkservices.V1beta1.ListEndpointPoliciesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :endpoint_policies, 1,
    repeated: true,
    type: Google.Cloud.Networkservices.V1beta1.EndpointPolicy,
    json_name: "endpointPolicies"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Networkservices.V1beta1.GetEndpointPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Networkservices.V1beta1.CreateEndpointPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :endpoint_policy_id, 2, type: :string, json_name: "endpointPolicyId", deprecated: false

  field :endpoint_policy, 3,
    type: Google.Cloud.Networkservices.V1beta1.EndpointPolicy,
    json_name: "endpointPolicy",
    deprecated: false
end
defmodule Google.Cloud.Networkservices.V1beta1.UpdateEndpointPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
