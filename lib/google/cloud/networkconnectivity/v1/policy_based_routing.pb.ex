defmodule Google.Cloud.Networkconnectivity.V1.PolicyBasedRoute.Filter.ProtocolVersion do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :PROTOCOL_VERSION_UNSPECIFIED, 0
  field :IPV4, 1
end

defmodule Google.Cloud.Networkconnectivity.V1.PolicyBasedRoute.Warnings.Code do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :WARNING_UNSPECIFIED, 0
  field :RESOURCE_NOT_ACTIVE, 1
  field :RESOURCE_BEING_MODIFIED, 2
end

defmodule Google.Cloud.Networkconnectivity.V1.PolicyBasedRoute.VirtualMachine do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :tags, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.PolicyBasedRoute.InterconnectAttachment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :region, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.PolicyBasedRoute.Filter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ip_protocol, 1, type: :string, json_name: "ipProtocol", deprecated: false
  field :src_range, 2, type: :string, json_name: "srcRange", deprecated: false
  field :dest_range, 3, type: :string, json_name: "destRange", deprecated: false

  field :protocol_version, 6,
    type: Google.Cloud.Networkconnectivity.V1.PolicyBasedRoute.Filter.ProtocolVersion,
    json_name: "protocolVersion",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.PolicyBasedRoute.Warnings.DataEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.PolicyBasedRoute.Warnings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :code, 1,
    type: Google.Cloud.Networkconnectivity.V1.PolicyBasedRoute.Warnings.Code,
    enum: true,
    deprecated: false

  field :data, 2,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.PolicyBasedRoute.Warnings.DataEntry,
    map: true,
    deprecated: false

  field :warning_message, 3, type: :string, json_name: "warningMessage", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.PolicyBasedRoute.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.PolicyBasedRoute do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :target, 0

  oneof :next_hop, 1

  field :virtual_machine, 18,
    type: Google.Cloud.Networkconnectivity.V1.PolicyBasedRoute.VirtualMachine,
    json_name: "virtualMachine",
    oneof: 0,
    deprecated: false

  field :interconnect_attachment, 9,
    type: Google.Cloud.Networkconnectivity.V1.PolicyBasedRoute.InterconnectAttachment,
    json_name: "interconnectAttachment",
    oneof: 0,
    deprecated: false

  field :next_hop_ilb_ip, 12,
    type: :string,
    json_name: "nextHopIlbIp",
    oneof: 1,
    deprecated: false

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
    type: Google.Cloud.Networkconnectivity.V1.PolicyBasedRoute.LabelsEntry,
    map: true

  field :description, 5, type: :string, deprecated: false
  field :network, 6, type: :string, deprecated: false

  field :filter, 10,
    type: Google.Cloud.Networkconnectivity.V1.PolicyBasedRoute.Filter,
    deprecated: false

  field :priority, 11, type: :int32, deprecated: false

  field :warnings, 14,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.PolicyBasedRoute.Warnings,
    deprecated: false

  field :self_link, 15, type: :string, json_name: "selfLink", deprecated: false
  field :kind, 16, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.ListPolicyBasedRoutesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Networkconnectivity.V1.ListPolicyBasedRoutesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :policy_based_routes, 1,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.PolicyBasedRoute,
    json_name: "policyBasedRoutes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.GetPolicyBasedRouteRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.CreatePolicyBasedRouteRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :policy_based_route_id, 2,
    type: :string,
    json_name: "policyBasedRouteId",
    deprecated: false

  field :policy_based_route, 3,
    type: Google.Cloud.Networkconnectivity.V1.PolicyBasedRoute,
    json_name: "policyBasedRoute",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.DeletePolicyBasedRouteRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.PolicyBasedRoutingService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.networkconnectivity.v1.PolicyBasedRoutingService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListPolicyBasedRoutes,
      Google.Cloud.Networkconnectivity.V1.ListPolicyBasedRoutesRequest,
      Google.Cloud.Networkconnectivity.V1.ListPolicyBasedRoutesResponse

  rpc :GetPolicyBasedRoute,
      Google.Cloud.Networkconnectivity.V1.GetPolicyBasedRouteRequest,
      Google.Cloud.Networkconnectivity.V1.PolicyBasedRoute

  rpc :CreatePolicyBasedRoute,
      Google.Cloud.Networkconnectivity.V1.CreatePolicyBasedRouteRequest,
      Google.Longrunning.Operation

  rpc :DeletePolicyBasedRoute,
      Google.Cloud.Networkconnectivity.V1.DeletePolicyBasedRouteRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Networkconnectivity.V1.PolicyBasedRoutingService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Networkconnectivity.V1.PolicyBasedRoutingService.Service
end