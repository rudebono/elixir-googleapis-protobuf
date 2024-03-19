defmodule Google.Cloud.Edgenetwork.V1.ResourceState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNKNOWN, 0
  field :STATE_PENDING, 1
  field :STATE_PROVISIONING, 2
  field :STATE_RUNNING, 3
  field :STATE_SUSPENDED, 4
  field :STATE_DELETING, 5
end

defmodule Google.Cloud.Edgenetwork.V1.Interconnect.InterconnectType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :INTERCONNECT_TYPE_UNSPECIFIED, 0
  field :DEDICATED, 1
end

defmodule Google.Cloud.Edgenetwork.V1.InterconnectDiagnostics.LinkLACPStatus.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNKNOWN, 0
  field :ACTIVE, 1
  field :DETACHED, 2
end

defmodule Google.Cloud.Edgenetwork.V1.RouterStatus.BgpPeerStatus.BgpStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNKNOWN, 0
  field :UP, 1
  field :DOWN, 2
end

defmodule Google.Cloud.Edgenetwork.V1.Zone.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Edgenetwork.V1.Zone do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
    type: Google.Cloud.Edgenetwork.V1.Zone.LabelsEntry,
    map: true,
    deprecated: true

  field :layout_name, 5, type: :string, json_name: "layoutName", deprecated: true
end

defmodule Google.Cloud.Edgenetwork.V1.Network.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Edgenetwork.V1.Network do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
    type: Google.Cloud.Edgenetwork.V1.Network.LabelsEntry,
    map: true

  field :description, 5, type: :string, deprecated: false
  field :mtu, 6, type: :int32
end

defmodule Google.Cloud.Edgenetwork.V1.Subnet.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Edgenetwork.V1.Subnet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
    type: Google.Cloud.Edgenetwork.V1.Subnet.LabelsEntry,
    map: true

  field :description, 5, type: :string, deprecated: false
  field :network, 6, type: :string, deprecated: false
  field :ipv4_cidr, 7, repeated: true, type: :string, json_name: "ipv4Cidr"
  field :ipv6_cidr, 8, repeated: true, type: :string, json_name: "ipv6Cidr"
  field :vlan_id, 9, type: :int32, json_name: "vlanId", deprecated: false
  field :state, 10, type: Google.Cloud.Edgenetwork.V1.ResourceState, enum: true, deprecated: false
end

defmodule Google.Cloud.Edgenetwork.V1.Interconnect.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Edgenetwork.V1.Interconnect do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
    type: Google.Cloud.Edgenetwork.V1.Interconnect.LabelsEntry,
    map: true

  field :description, 5, type: :string, deprecated: false

  field :interconnect_type, 6,
    type: Google.Cloud.Edgenetwork.V1.Interconnect.InterconnectType,
    json_name: "interconnectType",
    enum: true,
    deprecated: false

  field :uuid, 7, type: :string, deprecated: false

  field :device_cloud_resource_name, 8,
    type: :string,
    json_name: "deviceCloudResourceName",
    deprecated: false

  field :physical_ports, 9,
    repeated: true,
    type: :string,
    json_name: "physicalPorts",
    deprecated: false
end

defmodule Google.Cloud.Edgenetwork.V1.InterconnectAttachment.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Edgenetwork.V1.InterconnectAttachment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
    type: Google.Cloud.Edgenetwork.V1.InterconnectAttachment.LabelsEntry,
    map: true

  field :description, 5, type: :string, deprecated: false
  field :interconnect, 6, type: :string, deprecated: false
  field :network, 11, type: :string, deprecated: false
  field :vlan_id, 8, type: :int32, json_name: "vlanId", deprecated: false
  field :mtu, 9, type: :int32
  field :state, 10, type: Google.Cloud.Edgenetwork.V1.ResourceState, enum: true, deprecated: false
end

defmodule Google.Cloud.Edgenetwork.V1.Router.Interface do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :ipv4_cidr, 3, type: :string, json_name: "ipv4Cidr"
  field :ipv6_cidr, 6, type: :string, json_name: "ipv6Cidr"

  field :linked_interconnect_attachment, 2,
    type: :string,
    json_name: "linkedInterconnectAttachment"

  field :subnetwork, 4, type: :string
  field :loopback_ip_addresses, 5, repeated: true, type: :string, json_name: "loopbackIpAddresses"
end

defmodule Google.Cloud.Edgenetwork.V1.Router.BgpPeer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :interface, 2, type: :string
  field :interface_ipv4_cidr, 3, type: :string, json_name: "interfaceIpv4Cidr"
  field :interface_ipv6_cidr, 7, type: :string, json_name: "interfaceIpv6Cidr"
  field :peer_ipv4_cidr, 4, type: :string, json_name: "peerIpv4Cidr"
  field :peer_ipv6_cidr, 6, type: :string, json_name: "peerIpv6Cidr"
  field :peer_asn, 5, type: :uint32, json_name: "peerAsn"
  field :local_asn, 8, type: :uint32, json_name: "localAsn", deprecated: false
end

defmodule Google.Cloud.Edgenetwork.V1.Router.Bgp do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :asn, 1, type: :uint32
  field :keepalive_interval_in_seconds, 2, type: :uint32, json_name: "keepaliveIntervalInSeconds"
end

defmodule Google.Cloud.Edgenetwork.V1.Router.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Edgenetwork.V1.Router do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
    type: Google.Cloud.Edgenetwork.V1.Router.LabelsEntry,
    map: true

  field :description, 5, type: :string, deprecated: false
  field :network, 6, type: :string, deprecated: false
  field :interface, 7, repeated: true, type: Google.Cloud.Edgenetwork.V1.Router.Interface

  field :bgp_peer, 8,
    repeated: true,
    type: Google.Cloud.Edgenetwork.V1.Router.BgpPeer,
    json_name: "bgpPeer"

  field :bgp, 9, type: Google.Cloud.Edgenetwork.V1.Router.Bgp
  field :state, 10, type: Google.Cloud.Edgenetwork.V1.ResourceState, enum: true, deprecated: false

  field :route_advertisements, 11,
    repeated: true,
    type: :string,
    json_name: "routeAdvertisements",
    deprecated: false
end

defmodule Google.Cloud.Edgenetwork.V1.LinkLayerAddress do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :mac_address, 1, type: :string, json_name: "macAddress"
  field :ip_address, 2, type: :string, json_name: "ipAddress"
end

defmodule Google.Cloud.Edgenetwork.V1.SubnetStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :mac_address, 2, type: :string, json_name: "macAddress"

  field :link_layer_addresses, 3,
    repeated: true,
    type: Google.Cloud.Edgenetwork.V1.LinkLayerAddress,
    json_name: "linkLayerAddresses"
end

defmodule Google.Cloud.Edgenetwork.V1.InterconnectDiagnostics.LinkStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :circuit_id, 1, type: :string, json_name: "circuitId"

  field :lacp_status, 2,
    type: Google.Cloud.Edgenetwork.V1.InterconnectDiagnostics.LinkLACPStatus,
    json_name: "lacpStatus"

  field :lldp_statuses, 3,
    repeated: true,
    type: Google.Cloud.Edgenetwork.V1.InterconnectDiagnostics.LinkLLDPStatus,
    json_name: "lldpStatuses"

  field :packet_counts, 4,
    type: Google.Cloud.Edgenetwork.V1.InterconnectDiagnostics.PacketCounts,
    json_name: "packetCounts"
end

defmodule Google.Cloud.Edgenetwork.V1.InterconnectDiagnostics.PacketCounts do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :inbound_unicast, 1, type: :int64, json_name: "inboundUnicast"
  field :inbound_errors, 2, type: :int64, json_name: "inboundErrors"
  field :inbound_discards, 3, type: :int64, json_name: "inboundDiscards"
  field :outbound_unicast, 4, type: :int64, json_name: "outboundUnicast"
  field :outbound_errors, 5, type: :int64, json_name: "outboundErrors"
  field :outbound_discards, 6, type: :int64, json_name: "outboundDiscards"
end

defmodule Google.Cloud.Edgenetwork.V1.InterconnectDiagnostics.LinkLACPStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Edgenetwork.V1.InterconnectDiagnostics.LinkLACPStatus.State,
    enum: true

  field :google_system_id, 2, type: :string, json_name: "googleSystemId"
  field :neighbor_system_id, 3, type: :string, json_name: "neighborSystemId"
  field :aggregatable, 4, type: :bool
  field :collecting, 5, type: :bool
  field :distributing, 6, type: :bool
end

defmodule Google.Cloud.Edgenetwork.V1.InterconnectDiagnostics.LinkLLDPStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :peer_system_name, 1, type: :string, json_name: "peerSystemName"
  field :peer_system_description, 2, type: :string, json_name: "peerSystemDescription"
  field :peer_chassis_id, 3, type: :string, json_name: "peerChassisId"
  field :peer_chassis_id_type, 4, type: :string, json_name: "peerChassisIdType"
  field :peer_port_id, 5, type: :string, json_name: "peerPortId"
  field :peer_port_id_type, 6, type: :string, json_name: "peerPortIdType"
end

defmodule Google.Cloud.Edgenetwork.V1.InterconnectDiagnostics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :mac_address, 1, type: :string, json_name: "macAddress"

  field :link_layer_addresses, 2,
    repeated: true,
    type: Google.Cloud.Edgenetwork.V1.LinkLayerAddress,
    json_name: "linkLayerAddresses"

  field :links, 3,
    repeated: true,
    type: Google.Cloud.Edgenetwork.V1.InterconnectDiagnostics.LinkStatus
end

defmodule Google.Cloud.Edgenetwork.V1.RouterStatus.BgpPeerStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :ip_address, 2, type: :string, json_name: "ipAddress"
  field :peer_ip_address, 3, type: :string, json_name: "peerIpAddress"

  field :status, 4,
    type: Google.Cloud.Edgenetwork.V1.RouterStatus.BgpPeerStatus.BgpStatus,
    enum: true

  field :state, 5, type: :string
  field :uptime, 6, type: :string
  field :uptime_seconds, 7, type: :int64, json_name: "uptimeSeconds"

  field :prefix_counter, 8,
    type: Google.Cloud.Edgenetwork.V1.RouterStatus.PrefixCounter,
    json_name: "prefixCounter"
end

defmodule Google.Cloud.Edgenetwork.V1.RouterStatus.PrefixCounter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :advertised, 1, type: :int64
  field :denied, 2, type: :int64
  field :received, 3, type: :int64
  field :sent, 4, type: :int64
  field :suppressed, 5, type: :int64
  field :withdrawn, 6, type: :int64
end

defmodule Google.Cloud.Edgenetwork.V1.RouterStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :network, 1, type: :string, deprecated: false

  field :bgp_peer_status, 2,
    repeated: true,
    type: Google.Cloud.Edgenetwork.V1.RouterStatus.BgpPeerStatus,
    json_name: "bgpPeerStatus"
end