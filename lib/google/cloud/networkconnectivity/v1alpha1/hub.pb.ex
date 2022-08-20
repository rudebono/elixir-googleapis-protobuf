defmodule Google.Cloud.Networkconnectivity.V1alpha1.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :DELETING, 3
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.Hub.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.Hub do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1alpha1.Hub.LabelsEntry,
    map: true

  field :description, 5, type: :string
  field :spokes, 6, repeated: true, type: :string, deprecated: false
  field :unique_id, 8, type: :string, json_name: "uniqueId", deprecated: false

  field :state, 9,
    type: Google.Cloud.Networkconnectivity.V1alpha1.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.Spoke.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.Spoke do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1alpha1.Spoke.LabelsEntry,
    map: true

  field :description, 5, type: :string
  field :hub, 6, type: :string, deprecated: false

  field :linked_vpn_tunnels, 12,
    repeated: true,
    type: :string,
    json_name: "linkedVpnTunnels",
    deprecated: false

  field :linked_interconnect_attachments, 13,
    repeated: true,
    type: :string,
    json_name: "linkedInterconnectAttachments",
    deprecated: false

  field :linked_router_appliance_instances, 14,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1alpha1.RouterApplianceInstance,
    json_name: "linkedRouterApplianceInstances"

  field :unique_id, 11, type: :string, json_name: "uniqueId", deprecated: false

  field :state, 15,
    type: Google.Cloud.Networkconnectivity.V1alpha1.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.ListHubsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.ListHubsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :hubs, 1, repeated: true, type: Google.Cloud.Networkconnectivity.V1alpha1.Hub
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.GetHubRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.CreateHubRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :hub_id, 2, type: :string, json_name: "hubId", deprecated: false
  field :hub, 3, type: Google.Cloud.Networkconnectivity.V1alpha1.Hub, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.UpdateHubRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :hub, 2, type: Google.Cloud.Networkconnectivity.V1alpha1.Hub, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.DeleteHubRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.ListSpokesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.ListSpokesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :spokes, 1, repeated: true, type: Google.Cloud.Networkconnectivity.V1alpha1.Spoke
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.GetSpokeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.CreateSpokeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :spoke_id, 2, type: :string, json_name: "spokeId", deprecated: false
  field :spoke, 3, type: Google.Cloud.Networkconnectivity.V1alpha1.Spoke, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.UpdateSpokeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :spoke, 2, type: Google.Cloud.Networkconnectivity.V1alpha1.Spoke, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.DeleteSpokeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.RouterApplianceInstance do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :virtual_machine, 1, type: :string, json_name: "virtualMachine", deprecated: false
  field :ip_address, 3, type: :string, json_name: "ipAddress"
  field :network_interface, 2, type: :string, json_name: "networkInterface", deprecated: true
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.HubService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.networkconnectivity.v1alpha1.HubService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListHubs,
      Google.Cloud.Networkconnectivity.V1alpha1.ListHubsRequest,
      Google.Cloud.Networkconnectivity.V1alpha1.ListHubsResponse

  rpc :GetHub,
      Google.Cloud.Networkconnectivity.V1alpha1.GetHubRequest,
      Google.Cloud.Networkconnectivity.V1alpha1.Hub

  rpc :CreateHub,
      Google.Cloud.Networkconnectivity.V1alpha1.CreateHubRequest,
      Google.Longrunning.Operation

  rpc :UpdateHub,
      Google.Cloud.Networkconnectivity.V1alpha1.UpdateHubRequest,
      Google.Longrunning.Operation

  rpc :DeleteHub,
      Google.Cloud.Networkconnectivity.V1alpha1.DeleteHubRequest,
      Google.Longrunning.Operation

  rpc :ListSpokes,
      Google.Cloud.Networkconnectivity.V1alpha1.ListSpokesRequest,
      Google.Cloud.Networkconnectivity.V1alpha1.ListSpokesResponse

  rpc :GetSpoke,
      Google.Cloud.Networkconnectivity.V1alpha1.GetSpokeRequest,
      Google.Cloud.Networkconnectivity.V1alpha1.Spoke

  rpc :CreateSpoke,
      Google.Cloud.Networkconnectivity.V1alpha1.CreateSpokeRequest,
      Google.Longrunning.Operation

  rpc :UpdateSpoke,
      Google.Cloud.Networkconnectivity.V1alpha1.UpdateSpokeRequest,
      Google.Longrunning.Operation

  rpc :DeleteSpoke,
      Google.Cloud.Networkconnectivity.V1alpha1.DeleteSpokeRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.HubService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Networkconnectivity.V1alpha1.HubService.Service
end