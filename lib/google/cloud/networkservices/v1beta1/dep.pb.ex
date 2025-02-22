defmodule Google.Cloud.Networkservices.V1beta1.EventType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :REQUEST_HEADERS, 1
  field :REQUEST_BODY, 2
  field :RESPONSE_HEADERS, 3
  field :RESPONSE_BODY, 4
  field :REQUEST_TRAILERS, 5
  field :RESPONSE_TRAILERS, 6
end

defmodule Google.Cloud.Networkservices.V1beta1.LoadBalancingScheme do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :LOAD_BALANCING_SCHEME_UNSPECIFIED, 0
  field :INTERNAL_MANAGED, 1
  field :EXTERNAL_MANAGED, 2
end

defmodule Google.Cloud.Networkservices.V1beta1.ExtensionChain.MatchCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :cel_expression, 1, type: :string, json_name: "celExpression", deprecated: false
end

defmodule Google.Cloud.Networkservices.V1beta1.ExtensionChain.Extension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :authority, 2, type: :string, deprecated: false
  field :service, 3, type: :string, deprecated: false

  field :supported_events, 4,
    repeated: true,
    type: Google.Cloud.Networkservices.V1beta1.EventType,
    json_name: "supportedEvents",
    enum: true,
    deprecated: false

  field :timeout, 5, type: Google.Protobuf.Duration, deprecated: false
  field :fail_open, 6, type: :bool, json_name: "failOpen", deprecated: false

  field :forward_headers, 7,
    repeated: true,
    type: :string,
    json_name: "forwardHeaders",
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1beta1.ExtensionChain do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :match_condition, 2,
    type: Google.Cloud.Networkservices.V1beta1.ExtensionChain.MatchCondition,
    json_name: "matchCondition",
    deprecated: false

  field :extensions, 3,
    repeated: true,
    type: Google.Cloud.Networkservices.V1beta1.ExtensionChain.Extension,
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1beta1.LbTrafficExtension.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkservices.V1beta1.LbTrafficExtension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :description, 9, type: :string, deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Networkservices.V1beta1.LbTrafficExtension.LabelsEntry,
    map: true,
    deprecated: false

  field :forwarding_rules, 5,
    repeated: true,
    type: :string,
    json_name: "forwardingRules",
    deprecated: false

  field :extension_chains, 7,
    repeated: true,
    type: Google.Cloud.Networkservices.V1beta1.ExtensionChain,
    json_name: "extensionChains",
    deprecated: false

  field :load_balancing_scheme, 8,
    type: Google.Cloud.Networkservices.V1beta1.LoadBalancingScheme,
    json_name: "loadBalancingScheme",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1beta1.ListLbTrafficExtensionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Networkservices.V1beta1.ListLbTrafficExtensionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :lb_traffic_extensions, 1,
    repeated: true,
    type: Google.Cloud.Networkservices.V1beta1.LbTrafficExtension,
    json_name: "lbTrafficExtensions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkservices.V1beta1.GetLbTrafficExtensionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1beta1.CreateLbTrafficExtensionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :lb_traffic_extension_id, 2,
    type: :string,
    json_name: "lbTrafficExtensionId",
    deprecated: false

  field :lb_traffic_extension, 3,
    type: Google.Cloud.Networkservices.V1beta1.LbTrafficExtension,
    json_name: "lbTrafficExtension",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkservices.V1beta1.UpdateLbTrafficExtensionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :lb_traffic_extension, 2,
    type: Google.Cloud.Networkservices.V1beta1.LbTrafficExtension,
    json_name: "lbTrafficExtension",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkservices.V1beta1.DeleteLbTrafficExtensionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkservices.V1beta1.LbRouteExtension.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkservices.V1beta1.LbRouteExtension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :description, 9, type: :string, deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Networkservices.V1beta1.LbRouteExtension.LabelsEntry,
    map: true,
    deprecated: false

  field :forwarding_rules, 5,
    repeated: true,
    type: :string,
    json_name: "forwardingRules",
    deprecated: false

  field :extension_chains, 7,
    repeated: true,
    type: Google.Cloud.Networkservices.V1beta1.ExtensionChain,
    json_name: "extensionChains",
    deprecated: false

  field :load_balancing_scheme, 8,
    type: Google.Cloud.Networkservices.V1beta1.LoadBalancingScheme,
    json_name: "loadBalancingScheme",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1beta1.ListLbRouteExtensionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Networkservices.V1beta1.ListLbRouteExtensionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :lb_route_extensions, 1,
    repeated: true,
    type: Google.Cloud.Networkservices.V1beta1.LbRouteExtension,
    json_name: "lbRouteExtensions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkservices.V1beta1.GetLbRouteExtensionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1beta1.CreateLbRouteExtensionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :lb_route_extension_id, 2,
    type: :string,
    json_name: "lbRouteExtensionId",
    deprecated: false

  field :lb_route_extension, 3,
    type: Google.Cloud.Networkservices.V1beta1.LbRouteExtension,
    json_name: "lbRouteExtension",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkservices.V1beta1.UpdateLbRouteExtensionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :lb_route_extension, 2,
    type: Google.Cloud.Networkservices.V1beta1.LbRouteExtension,
    json_name: "lbRouteExtension",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkservices.V1beta1.DeleteLbRouteExtensionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkservices.V1beta1.DepService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.networkservices.v1beta1.DepService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListLbTrafficExtensions,
      Google.Cloud.Networkservices.V1beta1.ListLbTrafficExtensionsRequest,
      Google.Cloud.Networkservices.V1beta1.ListLbTrafficExtensionsResponse

  rpc :GetLbTrafficExtension,
      Google.Cloud.Networkservices.V1beta1.GetLbTrafficExtensionRequest,
      Google.Cloud.Networkservices.V1beta1.LbTrafficExtension

  rpc :CreateLbTrafficExtension,
      Google.Cloud.Networkservices.V1beta1.CreateLbTrafficExtensionRequest,
      Google.Longrunning.Operation

  rpc :UpdateLbTrafficExtension,
      Google.Cloud.Networkservices.V1beta1.UpdateLbTrafficExtensionRequest,
      Google.Longrunning.Operation

  rpc :DeleteLbTrafficExtension,
      Google.Cloud.Networkservices.V1beta1.DeleteLbTrafficExtensionRequest,
      Google.Longrunning.Operation

  rpc :ListLbRouteExtensions,
      Google.Cloud.Networkservices.V1beta1.ListLbRouteExtensionsRequest,
      Google.Cloud.Networkservices.V1beta1.ListLbRouteExtensionsResponse

  rpc :GetLbRouteExtension,
      Google.Cloud.Networkservices.V1beta1.GetLbRouteExtensionRequest,
      Google.Cloud.Networkservices.V1beta1.LbRouteExtension

  rpc :CreateLbRouteExtension,
      Google.Cloud.Networkservices.V1beta1.CreateLbRouteExtensionRequest,
      Google.Longrunning.Operation

  rpc :UpdateLbRouteExtension,
      Google.Cloud.Networkservices.V1beta1.UpdateLbRouteExtensionRequest,
      Google.Longrunning.Operation

  rpc :DeleteLbRouteExtension,
      Google.Cloud.Networkservices.V1beta1.DeleteLbRouteExtensionRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Networkservices.V1beta1.DepService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Networkservices.V1beta1.DepService.Service
end
