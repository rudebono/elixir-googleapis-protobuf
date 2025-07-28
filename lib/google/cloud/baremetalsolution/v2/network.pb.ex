defmodule Google.Cloud.Baremetalsolution.V2.Network.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :CLIENT, 1
  field :PRIVATE, 2
end

defmodule Google.Cloud.Baremetalsolution.V2.Network.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :PROVISIONED, 2
  field :DEPROVISIONING, 3
  field :UPDATING, 4
end

defmodule Google.Cloud.Baremetalsolution.V2.VRF.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :PROVISIONED, 2
end

defmodule Google.Cloud.Baremetalsolution.V2.Network.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Baremetalsolution.V2.Network do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 5, type: :string, deprecated: false
  field :id, 10, type: :string
  field :type, 2, type: Google.Cloud.Baremetalsolution.V2.Network.Type, enum: true
  field :ip_address, 3, type: :string, json_name: "ipAddress"
  field :mac_address, 4, repeated: true, type: :string, json_name: "macAddress"
  field :state, 6, type: Google.Cloud.Baremetalsolution.V2.Network.State, enum: true
  field :vlan_id, 7, type: :string, json_name: "vlanId"
  field :cidr, 8, type: :string
  field :vrf, 9, type: Google.Cloud.Baremetalsolution.V2.VRF

  field :labels, 11,
    repeated: true,
    type: Google.Cloud.Baremetalsolution.V2.Network.LabelsEntry,
    map: true

  field :services_cidr, 12, type: :string, json_name: "servicesCidr"

  field :reservations, 13,
    repeated: true,
    type: Google.Cloud.Baremetalsolution.V2.NetworkAddressReservation

  field :pod, 14, type: :string, deprecated: false

  field :mount_points, 15,
    repeated: true,
    type: Google.Cloud.Baremetalsolution.V2.NetworkMountPoint,
    json_name: "mountPoints",
    deprecated: false

  field :jumbo_frames_enabled, 16, type: :bool, json_name: "jumboFramesEnabled"
  field :gateway_ip, 17, type: :string, json_name: "gatewayIp", deprecated: false
end

defmodule Google.Cloud.Baremetalsolution.V2.NetworkAddressReservation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_address, 1, type: :string, json_name: "startAddress"
  field :end_address, 2, type: :string, json_name: "endAddress"
  field :note, 3, type: :string
end

defmodule Google.Cloud.Baremetalsolution.V2.VRF.QosPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bandwidth_gbps, 1, type: :double, json_name: "bandwidthGbps"
end

defmodule Google.Cloud.Baremetalsolution.V2.VRF.VlanAttachment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :peer_vlan_id, 1, type: :int64, json_name: "peerVlanId"
  field :peer_ip, 2, type: :string, json_name: "peerIp"
  field :router_ip, 3, type: :string, json_name: "routerIp"
  field :pairing_key, 4, type: :string, json_name: "pairingKey", deprecated: false

  field :qos_policy, 5,
    type: Google.Cloud.Baremetalsolution.V2.VRF.QosPolicy,
    json_name: "qosPolicy"

  field :id, 6, type: :string, deprecated: false

  field :interconnect_attachment, 7,
    type: :string,
    json_name: "interconnectAttachment",
    deprecated: false
end

defmodule Google.Cloud.Baremetalsolution.V2.VRF do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :state, 5, type: Google.Cloud.Baremetalsolution.V2.VRF.State, enum: true

  field :qos_policy, 6,
    type: Google.Cloud.Baremetalsolution.V2.VRF.QosPolicy,
    json_name: "qosPolicy"

  field :vlan_attachments, 7,
    repeated: true,
    type: Google.Cloud.Baremetalsolution.V2.VRF.VlanAttachment,
    json_name: "vlanAttachments"
end

defmodule Google.Cloud.Baremetalsolution.V2.LogicalInterface.LogicalNetworkInterface do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :network, 1, type: :string
  field :ip_address, 2, type: :string, json_name: "ipAddress"
  field :default_gateway, 3, type: :bool, json_name: "defaultGateway"

  field :network_type, 4,
    type: Google.Cloud.Baremetalsolution.V2.Network.Type,
    json_name: "networkType",
    enum: true

  field :id, 5, type: :string
end

defmodule Google.Cloud.Baremetalsolution.V2.LogicalInterface do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :logical_network_interfaces, 1,
    repeated: true,
    type: Google.Cloud.Baremetalsolution.V2.LogicalInterface.LogicalNetworkInterface,
    json_name: "logicalNetworkInterfaces"

  field :name, 2, type: :string
  field :interface_index, 3, type: :int32, json_name: "interfaceIndex", deprecated: true
end

defmodule Google.Cloud.Baremetalsolution.V2.GetNetworkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Baremetalsolution.V2.ListNetworksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Baremetalsolution.V2.ListNetworksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :networks, 1, repeated: true, type: Google.Cloud.Baremetalsolution.V2.Network
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Baremetalsolution.V2.UpdateNetworkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :network, 1, type: Google.Cloud.Baremetalsolution.V2.Network, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Baremetalsolution.V2.NetworkUsage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :network, 1, type: Google.Cloud.Baremetalsolution.V2.Network
  field :used_ips, 2, repeated: true, type: :string, json_name: "usedIps"
end

defmodule Google.Cloud.Baremetalsolution.V2.ListNetworkUsageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :location, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Baremetalsolution.V2.ListNetworkUsageResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :networks, 1, repeated: true, type: Google.Cloud.Baremetalsolution.V2.NetworkUsage
end

defmodule Google.Cloud.Baremetalsolution.V2.NetworkMountPoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string, deprecated: false
  field :logical_interface, 2, type: :string, json_name: "logicalInterface"
  field :default_gateway, 3, type: :bool, json_name: "defaultGateway"
  field :ip_address, 4, type: :string, json_name: "ipAddress"
end

defmodule Google.Cloud.Baremetalsolution.V2.RenameNetworkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :new_network_id, 2, type: :string, json_name: "newNetworkId", deprecated: false
end
