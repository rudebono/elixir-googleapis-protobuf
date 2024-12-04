defmodule Google.Cloud.Networkconnectivity.V1.LocationFeature do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :LOCATION_FEATURE_UNSPECIFIED, 0
  field :SITE_TO_CLOUD_SPOKES, 1
  field :SITE_TO_SITE_SPOKES, 2
end

defmodule Google.Cloud.Networkconnectivity.V1.RouteType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ROUTE_TYPE_UNSPECIFIED, 0
  field :VPC_PRIMARY_SUBNET, 1
  field :VPC_SECONDARY_SUBNET, 2
  field :DYNAMIC_ROUTE, 3
end

defmodule Google.Cloud.Networkconnectivity.V1.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :DELETING, 3
  field :ACCEPTING, 8
  field :REJECTING, 9
  field :UPDATING, 6
  field :INACTIVE, 7
  field :OBSOLETE, 10
end

defmodule Google.Cloud.Networkconnectivity.V1.SpokeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SPOKE_TYPE_UNSPECIFIED, 0
  field :VPN_TUNNEL, 1
  field :INTERCONNECT_ATTACHMENT, 2
  field :ROUTER_APPLIANCE, 3
  field :VPC_NETWORK, 4
  field :PRODUCER_VPC_NETWORK, 7
end

defmodule Google.Cloud.Networkconnectivity.V1.PolicyMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :POLICY_MODE_UNSPECIFIED, 0
  field :PRESET, 1
end

defmodule Google.Cloud.Networkconnectivity.V1.PresetTopology do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :PRESET_TOPOLOGY_UNSPECIFIED, 0
  field :MESH, 2
  field :STAR, 3
end

defmodule Google.Cloud.Networkconnectivity.V1.Spoke.StateReason.Code do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CODE_UNSPECIFIED, 0
  field :PENDING_REVIEW, 1
  field :REJECTED, 2
  field :PAUSED, 3
  field :FAILED, 4
end

defmodule Google.Cloud.Networkconnectivity.V1.ListHubSpokesRequest.SpokeView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SPOKE_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :DETAILED, 2
end

defmodule Google.Cloud.Networkconnectivity.V1.PscPropagationStatus.Code do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CODE_UNSPECIFIED, 0
  field :READY, 1
  field :PROPAGATING, 2
  field :ERROR_PRODUCER_PROPAGATED_CONNECTION_LIMIT_EXCEEDED, 3
  field :ERROR_PRODUCER_NAT_IP_SPACE_EXHAUSTED, 4
  field :ERROR_PRODUCER_QUOTA_EXCEEDED, 5
  field :ERROR_CONSUMER_QUOTA_EXCEEDED, 6
end

defmodule Google.Cloud.Networkconnectivity.V1.Hub.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.Hub do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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
    type: Google.Cloud.Networkconnectivity.V1.Hub.LabelsEntry,
    map: true

  field :description, 5, type: :string
  field :unique_id, 8, type: :string, json_name: "uniqueId", deprecated: false
  field :state, 9, type: Google.Cloud.Networkconnectivity.V1.State, enum: true, deprecated: false

  field :routing_vpcs, 10,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.RoutingVPC,
    json_name: "routingVpcs"

  field :route_tables, 11,
    repeated: true,
    type: :string,
    json_name: "routeTables",
    deprecated: false

  field :spoke_summary, 12,
    type: Google.Cloud.Networkconnectivity.V1.SpokeSummary,
    json_name: "spokeSummary",
    deprecated: false

  field :policy_mode, 13,
    type: Google.Cloud.Networkconnectivity.V1.PolicyMode,
    json_name: "policyMode",
    enum: true,
    deprecated: false

  field :preset_topology, 14,
    type: Google.Cloud.Networkconnectivity.V1.PresetTopology,
    json_name: "presetTopology",
    enum: true,
    deprecated: false

  field :export_psc, 15,
    proto3_optional: true,
    type: :bool,
    json_name: "exportPsc",
    deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.RoutingVPC do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false

  field :required_for_new_site_to_site_data_transfer_spokes, 2,
    type: :bool,
    json_name: "requiredForNewSiteToSiteDataTransferSpokes",
    deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.Spoke.StateReason do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :code, 1, type: Google.Cloud.Networkconnectivity.V1.Spoke.StateReason.Code, enum: true
  field :message, 2, type: :string
  field :user_details, 3, type: :string, json_name: "userDetails"
end

defmodule Google.Cloud.Networkconnectivity.V1.Spoke.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.Spoke do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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
    type: Google.Cloud.Networkconnectivity.V1.Spoke.LabelsEntry,
    map: true

  field :description, 5, type: :string
  field :hub, 6, type: :string, deprecated: false
  field :group, 23, type: :string, deprecated: false

  field :linked_vpn_tunnels, 17,
    type: Google.Cloud.Networkconnectivity.V1.LinkedVpnTunnels,
    json_name: "linkedVpnTunnels"

  field :linked_interconnect_attachments, 18,
    type: Google.Cloud.Networkconnectivity.V1.LinkedInterconnectAttachments,
    json_name: "linkedInterconnectAttachments"

  field :linked_router_appliance_instances, 19,
    type: Google.Cloud.Networkconnectivity.V1.LinkedRouterApplianceInstances,
    json_name: "linkedRouterApplianceInstances"

  field :linked_vpc_network, 20,
    type: Google.Cloud.Networkconnectivity.V1.LinkedVpcNetwork,
    json_name: "linkedVpcNetwork",
    deprecated: false

  field :linked_producer_vpc_network, 26,
    type: Google.Cloud.Networkconnectivity.V1.LinkedProducerVpcNetwork,
    json_name: "linkedProducerVpcNetwork",
    deprecated: false

  field :unique_id, 11, type: :string, json_name: "uniqueId", deprecated: false
  field :state, 15, type: Google.Cloud.Networkconnectivity.V1.State, enum: true, deprecated: false

  field :reasons, 21,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.Spoke.StateReason,
    deprecated: false

  field :spoke_type, 22,
    type: Google.Cloud.Networkconnectivity.V1.SpokeType,
    json_name: "spokeType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.RouteTable.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.RouteTable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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
    type: Google.Cloud.Networkconnectivity.V1.RouteTable.LabelsEntry,
    map: true

  field :description, 5, type: :string
  field :uid, 6, type: :string, deprecated: false
  field :state, 7, type: Google.Cloud.Networkconnectivity.V1.State, enum: true, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.Route.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.Route do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 3, type: :string, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :ip_cidr_range, 1, type: :string, json_name: "ipCidrRange"

  field :type, 10,
    type: Google.Cloud.Networkconnectivity.V1.RouteType,
    enum: true,
    deprecated: false

  field :next_hop_vpc_network, 2,
    type: Google.Cloud.Networkconnectivity.V1.NextHopVpcNetwork,
    json_name: "nextHopVpcNetwork",
    deprecated: false

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.Route.LabelsEntry,
    map: true

  field :description, 7, type: :string
  field :uid, 8, type: :string, deprecated: false
  field :state, 9, type: Google.Cloud.Networkconnectivity.V1.State, enum: true, deprecated: false
  field :spoke, 11, type: :string, deprecated: false
  field :location, 12, type: :string, deprecated: false
  field :priority, 13, type: :int64, deprecated: false

  field :next_hop_vpn_tunnel, 14,
    type: Google.Cloud.Networkconnectivity.V1.NextHopVPNTunnel,
    json_name: "nextHopVpnTunnel",
    deprecated: false

  field :next_hop_router_appliance_instance, 15,
    type: Google.Cloud.Networkconnectivity.V1.NextHopRouterApplianceInstance,
    json_name: "nextHopRouterApplianceInstance",
    deprecated: false

  field :next_hop_interconnect_attachment, 16,
    type: Google.Cloud.Networkconnectivity.V1.NextHopInterconnectAttachment,
    json_name: "nextHopInterconnectAttachment",
    deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.Group.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.Group do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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
    type: Google.Cloud.Networkconnectivity.V1.Group.LabelsEntry,
    map: true,
    deprecated: false

  field :description, 5, type: :string, deprecated: false
  field :uid, 6, type: :string, deprecated: false
  field :state, 7, type: Google.Cloud.Networkconnectivity.V1.State, enum: true, deprecated: false

  field :auto_accept, 8,
    type: Google.Cloud.Networkconnectivity.V1.AutoAccept,
    json_name: "autoAccept",
    deprecated: false

  field :route_table, 9, type: :string, json_name: "routeTable", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.AutoAccept do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :auto_accept_projects, 1, repeated: true, type: :string, json_name: "autoAcceptProjects"
end

defmodule Google.Cloud.Networkconnectivity.V1.ListHubsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Networkconnectivity.V1.ListHubsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :hubs, 1, repeated: true, type: Google.Cloud.Networkconnectivity.V1.Hub
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.GetHubRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.CreateHubRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :hub_id, 2, type: :string, json_name: "hubId", deprecated: false
  field :hub, 3, type: Google.Cloud.Networkconnectivity.V1.Hub, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.UpdateHubRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :hub, 2, type: Google.Cloud.Networkconnectivity.V1.Hub, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.DeleteHubRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.ListHubSpokesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :spoke_locations, 2, repeated: true, type: :string, json_name: "spokeLocations"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :filter, 5, type: :string
  field :order_by, 6, type: :string, json_name: "orderBy"

  field :view, 7,
    type: Google.Cloud.Networkconnectivity.V1.ListHubSpokesRequest.SpokeView,
    enum: true
end

defmodule Google.Cloud.Networkconnectivity.V1.ListHubSpokesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :spokes, 1, repeated: true, type: Google.Cloud.Networkconnectivity.V1.Spoke
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.QueryHubStatusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :group_by, 6, type: :string, json_name: "groupBy", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.QueryHubStatusResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :hub_status_entries, 1,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.HubStatusEntry,
    json_name: "hubStatusEntries"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Networkconnectivity.V1.HubStatusEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :count, 1, type: :int32
  field :group_by, 2, type: :string, json_name: "groupBy"

  field :psc_propagation_status, 3,
    type: Google.Cloud.Networkconnectivity.V1.PscPropagationStatus,
    json_name: "pscPropagationStatus"
end

defmodule Google.Cloud.Networkconnectivity.V1.PscPropagationStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :source_spoke, 1, type: :string, json_name: "sourceSpoke"
  field :source_group, 2, type: :string, json_name: "sourceGroup"
  field :source_forwarding_rule, 3, type: :string, json_name: "sourceForwardingRule"
  field :target_spoke, 4, type: :string, json_name: "targetSpoke"
  field :target_group, 5, type: :string, json_name: "targetGroup"
  field :code, 6, type: Google.Cloud.Networkconnectivity.V1.PscPropagationStatus.Code, enum: true
  field :message, 7, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.ListSpokesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Networkconnectivity.V1.ListSpokesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :spokes, 1, repeated: true, type: Google.Cloud.Networkconnectivity.V1.Spoke
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.GetSpokeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.CreateSpokeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :spoke_id, 2, type: :string, json_name: "spokeId", deprecated: false
  field :spoke, 3, type: Google.Cloud.Networkconnectivity.V1.Spoke, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.UpdateSpokeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :spoke, 2, type: Google.Cloud.Networkconnectivity.V1.Spoke, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.DeleteSpokeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.AcceptHubSpokeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :spoke_uri, 2, type: :string, json_name: "spokeUri", deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.AcceptHubSpokeResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :spoke, 1, type: Google.Cloud.Networkconnectivity.V1.Spoke
end

defmodule Google.Cloud.Networkconnectivity.V1.RejectHubSpokeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :spoke_uri, 2, type: :string, json_name: "spokeUri", deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :details, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.RejectHubSpokeResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :spoke, 1, type: Google.Cloud.Networkconnectivity.V1.Spoke
end

defmodule Google.Cloud.Networkconnectivity.V1.GetRouteTableRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.GetRouteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.ListRoutesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Networkconnectivity.V1.ListRoutesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :routes, 1, repeated: true, type: Google.Cloud.Networkconnectivity.V1.Route
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.ListRouteTablesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Networkconnectivity.V1.ListRouteTablesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :route_tables, 1,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.RouteTable,
    json_name: "routeTables"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.ListGroupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Networkconnectivity.V1.ListGroupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :groups, 1, repeated: true, type: Google.Cloud.Networkconnectivity.V1.Group
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.LinkedVpnTunnels do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :uris, 1, repeated: true, type: :string, deprecated: false
  field :site_to_site_data_transfer, 2, type: :bool, json_name: "siteToSiteDataTransfer"
  field :vpc_network, 3, type: :string, json_name: "vpcNetwork", deprecated: false

  field :include_import_ranges, 5,
    repeated: true,
    type: :string,
    json_name: "includeImportRanges",
    deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.LinkedInterconnectAttachments do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :uris, 1, repeated: true, type: :string, deprecated: false
  field :site_to_site_data_transfer, 2, type: :bool, json_name: "siteToSiteDataTransfer"
  field :vpc_network, 3, type: :string, json_name: "vpcNetwork", deprecated: false

  field :include_import_ranges, 5,
    repeated: true,
    type: :string,
    json_name: "includeImportRanges",
    deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.LinkedRouterApplianceInstances do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instances, 1,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.RouterApplianceInstance

  field :site_to_site_data_transfer, 2, type: :bool, json_name: "siteToSiteDataTransfer"
  field :vpc_network, 3, type: :string, json_name: "vpcNetwork", deprecated: false

  field :include_import_ranges, 5,
    repeated: true,
    type: :string,
    json_name: "includeImportRanges",
    deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.LinkedVpcNetwork do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false

  field :exclude_export_ranges, 2,
    repeated: true,
    type: :string,
    json_name: "excludeExportRanges",
    deprecated: false

  field :include_export_ranges, 3,
    repeated: true,
    type: :string,
    json_name: "includeExportRanges",
    deprecated: false

  field :producer_vpc_spokes, 4,
    repeated: true,
    type: :string,
    json_name: "producerVpcSpokes",
    deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.LinkedProducerVpcNetwork do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :network, 1, type: :string, deprecated: false

  field :service_consumer_vpc_spoke, 6,
    type: :string,
    json_name: "serviceConsumerVpcSpoke",
    deprecated: false

  field :peering, 2, type: :string, deprecated: false
  field :producer_network, 5, type: :string, json_name: "producerNetwork", deprecated: false

  field :exclude_export_ranges, 3,
    repeated: true,
    type: :string,
    json_name: "excludeExportRanges",
    deprecated: false

  field :include_export_ranges, 4,
    repeated: true,
    type: :string,
    json_name: "includeExportRanges",
    deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.RouterApplianceInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :virtual_machine, 1, type: :string, json_name: "virtualMachine", deprecated: false
  field :ip_address, 3, type: :string, json_name: "ipAddress"
end

defmodule Google.Cloud.Networkconnectivity.V1.LocationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :location_features, 1,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.LocationFeature,
    json_name: "locationFeatures",
    enum: true
end

defmodule Google.Cloud.Networkconnectivity.V1.NextHopVpcNetwork do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.NextHopVPNTunnel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false
  field :vpc_network, 2, type: :string, json_name: "vpcNetwork", deprecated: false
  field :site_to_site_data_transfer, 3, type: :bool, json_name: "siteToSiteDataTransfer"
end

defmodule Google.Cloud.Networkconnectivity.V1.NextHopRouterApplianceInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false
  field :vpc_network, 2, type: :string, json_name: "vpcNetwork", deprecated: false
  field :site_to_site_data_transfer, 3, type: :bool, json_name: "siteToSiteDataTransfer"
end

defmodule Google.Cloud.Networkconnectivity.V1.NextHopInterconnectAttachment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false
  field :vpc_network, 2, type: :string, json_name: "vpcNetwork", deprecated: false
  field :site_to_site_data_transfer, 3, type: :bool, json_name: "siteToSiteDataTransfer"
end

defmodule Google.Cloud.Networkconnectivity.V1.SpokeSummary.SpokeTypeCount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :spoke_type, 1,
    type: Google.Cloud.Networkconnectivity.V1.SpokeType,
    json_name: "spokeType",
    enum: true,
    deprecated: false

  field :count, 2, type: :int64, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.SpokeSummary.SpokeStateCount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Networkconnectivity.V1.State, enum: true, deprecated: false
  field :count, 2, type: :int64, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.SpokeSummary.SpokeStateReasonCount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :state_reason_code, 1,
    type: Google.Cloud.Networkconnectivity.V1.Spoke.StateReason.Code,
    json_name: "stateReasonCode",
    enum: true,
    deprecated: false

  field :count, 2, type: :int64, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.SpokeSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :spoke_type_counts, 1,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.SpokeSummary.SpokeTypeCount,
    json_name: "spokeTypeCounts",
    deprecated: false

  field :spoke_state_counts, 2,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.SpokeSummary.SpokeStateCount,
    json_name: "spokeStateCounts",
    deprecated: false

  field :spoke_state_reason_counts, 3,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.SpokeSummary.SpokeStateReasonCount,
    json_name: "spokeStateReasonCounts",
    deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.GetGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.UpdateGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :group, 2, type: Google.Cloud.Networkconnectivity.V1.Group, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.HubService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.networkconnectivity.v1.HubService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :ListHubs,
      Google.Cloud.Networkconnectivity.V1.ListHubsRequest,
      Google.Cloud.Networkconnectivity.V1.ListHubsResponse

  rpc :GetHub,
      Google.Cloud.Networkconnectivity.V1.GetHubRequest,
      Google.Cloud.Networkconnectivity.V1.Hub

  rpc :CreateHub,
      Google.Cloud.Networkconnectivity.V1.CreateHubRequest,
      Google.Longrunning.Operation

  rpc :UpdateHub,
      Google.Cloud.Networkconnectivity.V1.UpdateHubRequest,
      Google.Longrunning.Operation

  rpc :DeleteHub,
      Google.Cloud.Networkconnectivity.V1.DeleteHubRequest,
      Google.Longrunning.Operation

  rpc :ListHubSpokes,
      Google.Cloud.Networkconnectivity.V1.ListHubSpokesRequest,
      Google.Cloud.Networkconnectivity.V1.ListHubSpokesResponse

  rpc :QueryHubStatus,
      Google.Cloud.Networkconnectivity.V1.QueryHubStatusRequest,
      Google.Cloud.Networkconnectivity.V1.QueryHubStatusResponse

  rpc :ListSpokes,
      Google.Cloud.Networkconnectivity.V1.ListSpokesRequest,
      Google.Cloud.Networkconnectivity.V1.ListSpokesResponse

  rpc :GetSpoke,
      Google.Cloud.Networkconnectivity.V1.GetSpokeRequest,
      Google.Cloud.Networkconnectivity.V1.Spoke

  rpc :CreateSpoke,
      Google.Cloud.Networkconnectivity.V1.CreateSpokeRequest,
      Google.Longrunning.Operation

  rpc :UpdateSpoke,
      Google.Cloud.Networkconnectivity.V1.UpdateSpokeRequest,
      Google.Longrunning.Operation

  rpc :RejectHubSpoke,
      Google.Cloud.Networkconnectivity.V1.RejectHubSpokeRequest,
      Google.Longrunning.Operation

  rpc :AcceptHubSpoke,
      Google.Cloud.Networkconnectivity.V1.AcceptHubSpokeRequest,
      Google.Longrunning.Operation

  rpc :DeleteSpoke,
      Google.Cloud.Networkconnectivity.V1.DeleteSpokeRequest,
      Google.Longrunning.Operation

  rpc :GetRouteTable,
      Google.Cloud.Networkconnectivity.V1.GetRouteTableRequest,
      Google.Cloud.Networkconnectivity.V1.RouteTable

  rpc :GetRoute,
      Google.Cloud.Networkconnectivity.V1.GetRouteRequest,
      Google.Cloud.Networkconnectivity.V1.Route

  rpc :ListRoutes,
      Google.Cloud.Networkconnectivity.V1.ListRoutesRequest,
      Google.Cloud.Networkconnectivity.V1.ListRoutesResponse

  rpc :ListRouteTables,
      Google.Cloud.Networkconnectivity.V1.ListRouteTablesRequest,
      Google.Cloud.Networkconnectivity.V1.ListRouteTablesResponse

  rpc :GetGroup,
      Google.Cloud.Networkconnectivity.V1.GetGroupRequest,
      Google.Cloud.Networkconnectivity.V1.Group

  rpc :ListGroups,
      Google.Cloud.Networkconnectivity.V1.ListGroupsRequest,
      Google.Cloud.Networkconnectivity.V1.ListGroupsResponse

  rpc :UpdateGroup,
      Google.Cloud.Networkconnectivity.V1.UpdateGroupRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Networkconnectivity.V1.HubService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Networkconnectivity.V1.HubService.Service
end