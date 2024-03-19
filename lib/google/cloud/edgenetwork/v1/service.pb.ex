defmodule Google.Cloud.Edgenetwork.V1.DiagnoseNetworkResponse.NetworkStatus.MacsecStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :MACSEC_STATUS_UNSPECIFIED, 0
  field :SECURE, 1
  field :UNSECURE, 2
end

defmodule Google.Cloud.Edgenetwork.V1.ListZonesRequest do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Edgenetwork.V1.ListZonesResponse do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :zones, 1, repeated: true, type: Google.Cloud.Edgenetwork.V1.Zone
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Edgenetwork.V1.GetZoneRequest do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Edgenetwork.V1.ListNetworksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Edgenetwork.V1.ListNetworksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :networks, 1, repeated: true, type: Google.Cloud.Edgenetwork.V1.Network
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Edgenetwork.V1.GetNetworkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Edgenetwork.V1.CreateNetworkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :network_id, 2, type: :string, json_name: "networkId", deprecated: false
  field :network, 3, type: Google.Cloud.Edgenetwork.V1.Network, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Edgenetwork.V1.DeleteNetworkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Edgenetwork.V1.ListSubnetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Edgenetwork.V1.ListSubnetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :subnets, 1, repeated: true, type: Google.Cloud.Edgenetwork.V1.Subnet
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Edgenetwork.V1.GetSubnetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Edgenetwork.V1.CreateSubnetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :subnet_id, 2, type: :string, json_name: "subnetId", deprecated: false
  field :subnet, 3, type: Google.Cloud.Edgenetwork.V1.Subnet, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Edgenetwork.V1.UpdateSubnetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :subnet, 2, type: Google.Cloud.Edgenetwork.V1.Subnet, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Edgenetwork.V1.DeleteSubnetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Edgenetwork.V1.ListInterconnectsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Edgenetwork.V1.ListInterconnectsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :interconnects, 1, repeated: true, type: Google.Cloud.Edgenetwork.V1.Interconnect
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Edgenetwork.V1.GetInterconnectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Edgenetwork.V1.ListInterconnectAttachmentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Edgenetwork.V1.ListInterconnectAttachmentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :interconnect_attachments, 1,
    repeated: true,
    type: Google.Cloud.Edgenetwork.V1.InterconnectAttachment,
    json_name: "interconnectAttachments"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Edgenetwork.V1.GetInterconnectAttachmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Edgenetwork.V1.CreateInterconnectAttachmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :interconnect_attachment_id, 2,
    type: :string,
    json_name: "interconnectAttachmentId",
    deprecated: false

  field :interconnect_attachment, 3,
    type: Google.Cloud.Edgenetwork.V1.InterconnectAttachment,
    json_name: "interconnectAttachment",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Edgenetwork.V1.DeleteInterconnectAttachmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Edgenetwork.V1.ListRoutersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Edgenetwork.V1.ListRoutersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :routers, 1, repeated: true, type: Google.Cloud.Edgenetwork.V1.Router
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Edgenetwork.V1.GetRouterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Edgenetwork.V1.CreateRouterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :router_id, 2, type: :string, json_name: "routerId", deprecated: false
  field :router, 3, type: Google.Cloud.Edgenetwork.V1.Router, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Edgenetwork.V1.UpdateRouterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :router, 2, type: Google.Cloud.Edgenetwork.V1.Router, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Edgenetwork.V1.DeleteRouterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Edgenetwork.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end

defmodule Google.Cloud.Edgenetwork.V1.DiagnoseNetworkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Edgenetwork.V1.DiagnoseNetworkResponse.NetworkStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :subnet_status, 1,
    repeated: true,
    type: Google.Cloud.Edgenetwork.V1.SubnetStatus,
    json_name: "subnetStatus"

  field :macsec_status_internal_links, 2,
    type: Google.Cloud.Edgenetwork.V1.DiagnoseNetworkResponse.NetworkStatus.MacsecStatus,
    json_name: "macsecStatusInternalLinks",
    enum: true
end

defmodule Google.Cloud.Edgenetwork.V1.DiagnoseNetworkResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_time, 1, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :result, 2, type: Google.Cloud.Edgenetwork.V1.DiagnoseNetworkResponse.NetworkStatus
end

defmodule Google.Cloud.Edgenetwork.V1.DiagnoseInterconnectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Edgenetwork.V1.DiagnoseInterconnectResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_time, 1, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :result, 2, type: Google.Cloud.Edgenetwork.V1.InterconnectDiagnostics
end

defmodule Google.Cloud.Edgenetwork.V1.DiagnoseRouterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Edgenetwork.V1.DiagnoseRouterResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_time, 1, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :result, 2, type: Google.Cloud.Edgenetwork.V1.RouterStatus
end

defmodule Google.Cloud.Edgenetwork.V1.InitializeZoneRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Edgenetwork.V1.InitializeZoneResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Edgenetwork.V1.EdgeNetwork.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.edgenetwork.v1.EdgeNetwork",
    protoc_gen_elixir_version: "0.12.0"

  rpc :InitializeZone,
      Google.Cloud.Edgenetwork.V1.InitializeZoneRequest,
      Google.Cloud.Edgenetwork.V1.InitializeZoneResponse

  rpc :ListZones,
      Google.Cloud.Edgenetwork.V1.ListZonesRequest,
      Google.Cloud.Edgenetwork.V1.ListZonesResponse

  rpc :GetZone, Google.Cloud.Edgenetwork.V1.GetZoneRequest, Google.Cloud.Edgenetwork.V1.Zone

  rpc :ListNetworks,
      Google.Cloud.Edgenetwork.V1.ListNetworksRequest,
      Google.Cloud.Edgenetwork.V1.ListNetworksResponse

  rpc :GetNetwork,
      Google.Cloud.Edgenetwork.V1.GetNetworkRequest,
      Google.Cloud.Edgenetwork.V1.Network

  rpc :DiagnoseNetwork,
      Google.Cloud.Edgenetwork.V1.DiagnoseNetworkRequest,
      Google.Cloud.Edgenetwork.V1.DiagnoseNetworkResponse

  rpc :CreateNetwork,
      Google.Cloud.Edgenetwork.V1.CreateNetworkRequest,
      Google.Longrunning.Operation

  rpc :DeleteNetwork,
      Google.Cloud.Edgenetwork.V1.DeleteNetworkRequest,
      Google.Longrunning.Operation

  rpc :ListSubnets,
      Google.Cloud.Edgenetwork.V1.ListSubnetsRequest,
      Google.Cloud.Edgenetwork.V1.ListSubnetsResponse

  rpc :GetSubnet, Google.Cloud.Edgenetwork.V1.GetSubnetRequest, Google.Cloud.Edgenetwork.V1.Subnet

  rpc :CreateSubnet, Google.Cloud.Edgenetwork.V1.CreateSubnetRequest, Google.Longrunning.Operation

  rpc :UpdateSubnet, Google.Cloud.Edgenetwork.V1.UpdateSubnetRequest, Google.Longrunning.Operation

  rpc :DeleteSubnet, Google.Cloud.Edgenetwork.V1.DeleteSubnetRequest, Google.Longrunning.Operation

  rpc :ListInterconnects,
      Google.Cloud.Edgenetwork.V1.ListInterconnectsRequest,
      Google.Cloud.Edgenetwork.V1.ListInterconnectsResponse

  rpc :GetInterconnect,
      Google.Cloud.Edgenetwork.V1.GetInterconnectRequest,
      Google.Cloud.Edgenetwork.V1.Interconnect

  rpc :DiagnoseInterconnect,
      Google.Cloud.Edgenetwork.V1.DiagnoseInterconnectRequest,
      Google.Cloud.Edgenetwork.V1.DiagnoseInterconnectResponse

  rpc :ListInterconnectAttachments,
      Google.Cloud.Edgenetwork.V1.ListInterconnectAttachmentsRequest,
      Google.Cloud.Edgenetwork.V1.ListInterconnectAttachmentsResponse

  rpc :GetInterconnectAttachment,
      Google.Cloud.Edgenetwork.V1.GetInterconnectAttachmentRequest,
      Google.Cloud.Edgenetwork.V1.InterconnectAttachment

  rpc :CreateInterconnectAttachment,
      Google.Cloud.Edgenetwork.V1.CreateInterconnectAttachmentRequest,
      Google.Longrunning.Operation

  rpc :DeleteInterconnectAttachment,
      Google.Cloud.Edgenetwork.V1.DeleteInterconnectAttachmentRequest,
      Google.Longrunning.Operation

  rpc :ListRouters,
      Google.Cloud.Edgenetwork.V1.ListRoutersRequest,
      Google.Cloud.Edgenetwork.V1.ListRoutersResponse

  rpc :GetRouter, Google.Cloud.Edgenetwork.V1.GetRouterRequest, Google.Cloud.Edgenetwork.V1.Router

  rpc :DiagnoseRouter,
      Google.Cloud.Edgenetwork.V1.DiagnoseRouterRequest,
      Google.Cloud.Edgenetwork.V1.DiagnoseRouterResponse

  rpc :CreateRouter, Google.Cloud.Edgenetwork.V1.CreateRouterRequest, Google.Longrunning.Operation

  rpc :UpdateRouter, Google.Cloud.Edgenetwork.V1.UpdateRouterRequest, Google.Longrunning.Operation

  rpc :DeleteRouter, Google.Cloud.Edgenetwork.V1.DeleteRouterRequest, Google.Longrunning.Operation
end

defmodule Google.Cloud.Edgenetwork.V1.EdgeNetwork.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Edgenetwork.V1.EdgeNetwork.Service
end