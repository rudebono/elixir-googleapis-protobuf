defmodule Google.Cloud.Vmwareengine.V1.PrivateCloud.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :CREATING, 2
  field :UPDATING, 3
  field :FAILED, 5
  field :DELETED, 6
  field :PURGING, 7
end

defmodule Google.Cloud.Vmwareengine.V1.PrivateCloud.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STANDARD, 0
  field :TIME_LIMITED, 1
  field :STRETCHED, 2
end

defmodule Google.Cloud.Vmwareengine.V1.Cluster.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :CREATING, 2
  field :UPDATING, 3
  field :DELETING, 4
  field :REPAIRING, 5
end

defmodule Google.Cloud.Vmwareengine.V1.Node.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :CREATING, 2
  field :FAILED, 3
  field :UPGRADING, 4
end

defmodule Google.Cloud.Vmwareengine.V1.ExternalAddress.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :CREATING, 2
  field :UPDATING, 3
  field :DELETING, 4
end

defmodule Google.Cloud.Vmwareengine.V1.Subnet.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :CREATING, 2
  field :UPDATING, 3
  field :DELETING, 4
  field :RECONCILING, 5
  field :FAILED, 6
end

defmodule Google.Cloud.Vmwareengine.V1.ExternalAccessRule.Action do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ACTION_UNSPECIFIED, 0
  field :ALLOW, 1
  field :DENY, 2
end

defmodule Google.Cloud.Vmwareengine.V1.ExternalAccessRule.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :CREATING, 2
  field :UPDATING, 3
  field :DELETING, 4
end

defmodule Google.Cloud.Vmwareengine.V1.LoggingServer.Protocol do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PROTOCOL_UNSPECIFIED, 0
  field :UDP, 1
  field :TCP, 2
end

defmodule Google.Cloud.Vmwareengine.V1.LoggingServer.SourceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SOURCE_TYPE_UNSPECIFIED, 0
  field :ESXI, 1
  field :VCSA, 2
end

defmodule Google.Cloud.Vmwareengine.V1.NodeType.Kind do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :KIND_UNSPECIFIED, 0
  field :STANDARD, 1
  field :STORAGE_ONLY, 2
end

defmodule Google.Cloud.Vmwareengine.V1.NodeType.Capability do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CAPABILITY_UNSPECIFIED, 0
  field :STRETCHED_CLUSTERS, 1
end

defmodule Google.Cloud.Vmwareengine.V1.HcxActivationKey.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :AVAILABLE, 1
  field :CONSUMED, 2
  field :CREATING, 3
end

defmodule Google.Cloud.Vmwareengine.V1.Hcx.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :CREATING, 2
end

defmodule Google.Cloud.Vmwareengine.V1.Nsx.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :CREATING, 2
end

defmodule Google.Cloud.Vmwareengine.V1.Vcenter.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :CREATING, 2
end

defmodule Google.Cloud.Vmwareengine.V1.NetworkPeering.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :INACTIVE, 1
  field :ACTIVE, 2
  field :CREATING, 3
  field :DELETING, 4
end

defmodule Google.Cloud.Vmwareengine.V1.NetworkPeering.PeerNetworkType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PEER_NETWORK_TYPE_UNSPECIFIED, 0
  field :STANDARD, 1
  field :VMWARE_ENGINE_NETWORK, 2
  field :PRIVATE_SERVICES_ACCESS, 3
  field :NETAPP_CLOUD_VOLUMES, 4
  field :THIRD_PARTY_SERVICE, 5
  field :DELL_POWERSCALE, 6
end

defmodule Google.Cloud.Vmwareengine.V1.PeeringRoute.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :DYNAMIC_PEERING_ROUTE, 1
  field :STATIC_PEERING_ROUTE, 2
  field :SUBNET_PEERING_ROUTE, 3
end

defmodule Google.Cloud.Vmwareengine.V1.PeeringRoute.Direction do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DIRECTION_UNSPECIFIED, 0
  field :INCOMING, 1
  field :OUTGOING, 2
end

defmodule Google.Cloud.Vmwareengine.V1.NetworkPolicy.NetworkService.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :UNPROVISIONED, 1
  field :RECONCILING, 2
  field :ACTIVE, 3
end

defmodule Google.Cloud.Vmwareengine.V1.ManagementDnsZoneBinding.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :CREATING, 2
  field :UPDATING, 3
  field :DELETING, 4
  field :FAILED, 5
end

defmodule Google.Cloud.Vmwareengine.V1.VmwareEngineNetwork.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :UPDATING, 3
  field :DELETING, 4
end

defmodule Google.Cloud.Vmwareengine.V1.VmwareEngineNetwork.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :LEGACY, 1
  field :STANDARD, 2
end

defmodule Google.Cloud.Vmwareengine.V1.VmwareEngineNetwork.VpcNetwork.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :INTRANET, 1
  field :INTERNET, 2
  field :GOOGLE_CLOUD, 3
end

defmodule Google.Cloud.Vmwareengine.V1.PrivateConnection.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :UPDATING, 3
  field :DELETING, 4
  field :UNPROVISIONED, 5
  field :FAILED, 6
end

defmodule Google.Cloud.Vmwareengine.V1.PrivateConnection.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :PRIVATE_SERVICE_ACCESS, 1
  field :NETAPP_CLOUD_VOLUMES, 2
  field :DELL_POWERSCALE, 3
  field :THIRD_PARTY_SERVICE, 4
end

defmodule Google.Cloud.Vmwareengine.V1.PrivateConnection.RoutingMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ROUTING_MODE_UNSPECIFIED, 0
  field :GLOBAL, 1
  field :REGIONAL, 2
end

defmodule Google.Cloud.Vmwareengine.V1.PrivateConnection.PeeringState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PEERING_STATE_UNSPECIFIED, 0
  field :PEERING_ACTIVE, 1
  field :PEERING_INACTIVE, 2
end

defmodule Google.Cloud.Vmwareengine.V1.LocationMetadata.Capability do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CAPABILITY_UNSPECIFIED, 0
  field :STRETCHED_CLUSTERS, 1
end

defmodule Google.Cloud.Vmwareengine.V1.NetworkConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :management_cidr, 4, type: :string, json_name: "managementCidr", deprecated: false

  field :vmware_engine_network, 5,
    type: :string,
    json_name: "vmwareEngineNetwork",
    deprecated: false

  field :vmware_engine_network_canonical, 6,
    type: :string,
    json_name: "vmwareEngineNetworkCanonical",
    deprecated: false

  field :management_ip_address_layout_version, 8,
    type: :int32,
    json_name: "managementIpAddressLayoutVersion",
    deprecated: false

  field :dns_server_ip, 9, type: :string, json_name: "dnsServerIp", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.NodeTypeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :node_count, 1, type: :int32, json_name: "nodeCount", deprecated: false
  field :custom_core_count, 2, type: :int32, json_name: "customCoreCount", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.StretchedClusterConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :preferred_location, 1, type: :string, json_name: "preferredLocation", deprecated: false
  field :secondary_location, 2, type: :string, json_name: "secondaryLocation", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.PrivateCloud.ManagementCluster.NodeTypeConfigsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Vmwareengine.V1.NodeTypeConfig
end

defmodule Google.Cloud.Vmwareengine.V1.PrivateCloud.ManagementCluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cluster_id, 1, type: :string, json_name: "clusterId", deprecated: false

  field :node_type_configs, 7,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.PrivateCloud.ManagementCluster.NodeTypeConfigsEntry,
    json_name: "nodeTypeConfigs",
    map: true,
    deprecated: false

  field :stretched_cluster_config, 8,
    type: Google.Cloud.Vmwareengine.V1.StretchedClusterConfig,
    json_name: "stretchedClusterConfig",
    deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.PrivateCloud do
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

  field :delete_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :expire_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :state, 8,
    type: Google.Cloud.Vmwareengine.V1.PrivateCloud.State,
    enum: true,
    deprecated: false

  field :network_config, 9,
    type: Google.Cloud.Vmwareengine.V1.NetworkConfig,
    json_name: "networkConfig",
    deprecated: false

  field :management_cluster, 10,
    type: Google.Cloud.Vmwareengine.V1.PrivateCloud.ManagementCluster,
    json_name: "managementCluster",
    deprecated: false

  field :description, 11, type: :string
  field :hcx, 17, type: Google.Cloud.Vmwareengine.V1.Hcx, deprecated: false
  field :nsx, 18, type: Google.Cloud.Vmwareengine.V1.Nsx, deprecated: false
  field :vcenter, 19, type: Google.Cloud.Vmwareengine.V1.Vcenter, deprecated: false
  field :uid, 20, type: :string, deprecated: false

  field :type, 22,
    type: Google.Cloud.Vmwareengine.V1.PrivateCloud.Type,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.Cluster.NodeTypeConfigsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Vmwareengine.V1.NodeTypeConfig
end

defmodule Google.Cloud.Vmwareengine.V1.Cluster do
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

  field :state, 6, type: Google.Cloud.Vmwareengine.V1.Cluster.State, enum: true, deprecated: false
  field :management, 7, type: :bool, deprecated: false
  field :uid, 14, type: :string, deprecated: false

  field :node_type_configs, 16,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.Cluster.NodeTypeConfigsEntry,
    json_name: "nodeTypeConfigs",
    map: true,
    deprecated: false

  field :stretched_cluster_config, 17,
    type: Google.Cloud.Vmwareengine.V1.StretchedClusterConfig,
    json_name: "stretchedClusterConfig",
    deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.Node do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :fqdn, 2, type: :string, deprecated: false
  field :internal_ip, 3, type: :string, json_name: "internalIp", deprecated: false
  field :node_type_id, 4, type: :string, json_name: "nodeTypeId", deprecated: false
  field :version, 5, type: :string, deprecated: false
  field :custom_core_count, 6, type: :int64, json_name: "customCoreCount", deprecated: false
  field :state, 7, type: Google.Cloud.Vmwareengine.V1.Node.State, enum: true, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ExternalAddress do
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

  field :internal_ip, 6, type: :string, json_name: "internalIp"
  field :external_ip, 7, type: :string, json_name: "externalIp", deprecated: false

  field :state, 8,
    type: Google.Cloud.Vmwareengine.V1.ExternalAddress.State,
    enum: true,
    deprecated: false

  field :uid, 9, type: :string, deprecated: false
  field :description, 11, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.Subnet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :ip_cidr_range, 7, type: :string, json_name: "ipCidrRange"
  field :gateway_ip, 8, type: :string, json_name: "gatewayIp"
  field :type, 11, type: :string, deprecated: false
  field :state, 13, type: Google.Cloud.Vmwareengine.V1.Subnet.State, enum: true, deprecated: false
  field :vlan_id, 16, type: :int32, json_name: "vlanId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ExternalAccessRule.IpRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :ip_range, 0

  field :ip_address, 1, type: :string, json_name: "ipAddress", oneof: 0
  field :ip_address_range, 2, type: :string, json_name: "ipAddressRange", oneof: 0

  field :external_address, 3,
    type: :string,
    json_name: "externalAddress",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ExternalAccessRule do
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

  field :description, 5, type: :string
  field :priority, 6, type: :int32
  field :action, 7, type: Google.Cloud.Vmwareengine.V1.ExternalAccessRule.Action, enum: true
  field :ip_protocol, 8, type: :string, json_name: "ipProtocol"

  field :source_ip_ranges, 9,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.ExternalAccessRule.IpRange,
    json_name: "sourceIpRanges"

  field :source_ports, 10, repeated: true, type: :string, json_name: "sourcePorts"

  field :destination_ip_ranges, 11,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.ExternalAccessRule.IpRange,
    json_name: "destinationIpRanges"

  field :destination_ports, 12, repeated: true, type: :string, json_name: "destinationPorts"

  field :state, 13,
    type: Google.Cloud.Vmwareengine.V1.ExternalAccessRule.State,
    enum: true,
    deprecated: false

  field :uid, 14, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.LoggingServer do
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

  field :hostname, 5, type: :string, deprecated: false
  field :port, 7, type: :int32, deprecated: false

  field :protocol, 6,
    type: Google.Cloud.Vmwareengine.V1.LoggingServer.Protocol,
    enum: true,
    deprecated: false

  field :source_type, 10,
    type: Google.Cloud.Vmwareengine.V1.LoggingServer.SourceType,
    json_name: "sourceType",
    enum: true,
    deprecated: false

  field :uid, 8, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.NodeType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :node_type_id, 2, type: :string, json_name: "nodeTypeId", deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false
  field :virtual_cpu_count, 4, type: :int32, json_name: "virtualCpuCount", deprecated: false
  field :total_core_count, 5, type: :int32, json_name: "totalCoreCount", deprecated: false
  field :memory_gb, 7, type: :int32, json_name: "memoryGb", deprecated: false
  field :disk_size_gb, 8, type: :int32, json_name: "diskSizeGb", deprecated: false

  field :available_custom_core_counts, 11,
    repeated: true,
    type: :int32,
    json_name: "availableCustomCoreCounts",
    deprecated: false

  field :kind, 12, type: Google.Cloud.Vmwareengine.V1.NodeType.Kind, enum: true, deprecated: false
  field :families, 13, repeated: true, type: :string, deprecated: false

  field :capabilities, 14,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.NodeType.Capability,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.Credentials do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :username, 1, type: :string
  field :password, 2, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.HcxActivationKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :state, 3,
    type: Google.Cloud.Vmwareengine.V1.HcxActivationKey.State,
    enum: true,
    deprecated: false

  field :activation_key, 4, type: :string, json_name: "activationKey", deprecated: false
  field :uid, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.Hcx do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :internal_ip, 2, type: :string, json_name: "internalIp"
  field :version, 4, type: :string
  field :state, 5, type: Google.Cloud.Vmwareengine.V1.Hcx.State, enum: true, deprecated: false
  field :fqdn, 6, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.Nsx do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :internal_ip, 2, type: :string, json_name: "internalIp"
  field :version, 4, type: :string
  field :state, 5, type: Google.Cloud.Vmwareengine.V1.Nsx.State, enum: true, deprecated: false
  field :fqdn, 6, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.Vcenter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :internal_ip, 2, type: :string, json_name: "internalIp"
  field :version, 4, type: :string
  field :state, 5, type: Google.Cloud.Vmwareengine.V1.Vcenter.State, enum: true, deprecated: false
  field :fqdn, 6, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.DnsForwarding.ForwardingRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :domain, 1, type: :string, deprecated: false

  field :name_servers, 2,
    repeated: true,
    type: :string,
    json_name: "nameServers",
    deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.DnsForwarding do
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

  field :forwarding_rules, 4,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.DnsForwarding.ForwardingRule,
    json_name: "forwardingRules",
    deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.NetworkPeering do
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

  field :peer_network, 5, type: :string, json_name: "peerNetwork", deprecated: false

  field :export_custom_routes, 8,
    proto3_optional: true,
    type: :bool,
    json_name: "exportCustomRoutes",
    deprecated: false

  field :import_custom_routes, 9,
    proto3_optional: true,
    type: :bool,
    json_name: "importCustomRoutes",
    deprecated: false

  field :exchange_subnet_routes, 10,
    proto3_optional: true,
    type: :bool,
    json_name: "exchangeSubnetRoutes",
    deprecated: false

  field :export_custom_routes_with_public_ip, 11,
    proto3_optional: true,
    type: :bool,
    json_name: "exportCustomRoutesWithPublicIp",
    deprecated: false

  field :import_custom_routes_with_public_ip, 12,
    proto3_optional: true,
    type: :bool,
    json_name: "importCustomRoutesWithPublicIp",
    deprecated: false

  field :state, 13,
    type: Google.Cloud.Vmwareengine.V1.NetworkPeering.State,
    enum: true,
    deprecated: false

  field :state_details, 7, type: :string, json_name: "stateDetails", deprecated: false
  field :peer_mtu, 14, type: :int32, json_name: "peerMtu", deprecated: false

  field :peer_network_type, 16,
    type: Google.Cloud.Vmwareengine.V1.NetworkPeering.PeerNetworkType,
    json_name: "peerNetworkType",
    enum: true,
    deprecated: false

  field :uid, 17, type: :string, deprecated: false

  field :vmware_engine_network, 20,
    type: :string,
    json_name: "vmwareEngineNetwork",
    deprecated: false

  field :description, 21, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.PeeringRoute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :dest_range, 1, type: :string, json_name: "destRange", deprecated: false

  field :type, 2,
    type: Google.Cloud.Vmwareengine.V1.PeeringRoute.Type,
    enum: true,
    deprecated: false

  field :next_hop_region, 3, type: :string, json_name: "nextHopRegion", deprecated: false
  field :priority, 4, type: :int64, deprecated: false
  field :imported, 5, type: :bool, deprecated: false

  field :direction, 6,
    type: Google.Cloud.Vmwareengine.V1.PeeringRoute.Direction,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.NetworkPolicy.NetworkService do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :enabled, 1, type: :bool

  field :state, 2,
    type: Google.Cloud.Vmwareengine.V1.NetworkPolicy.NetworkService.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.NetworkPolicy do
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

  field :internet_access, 6,
    type: Google.Cloud.Vmwareengine.V1.NetworkPolicy.NetworkService,
    json_name: "internetAccess"

  field :external_ip, 7,
    type: Google.Cloud.Vmwareengine.V1.NetworkPolicy.NetworkService,
    json_name: "externalIp"

  field :edge_services_cidr, 9, type: :string, json_name: "edgeServicesCidr", deprecated: false
  field :uid, 10, type: :string, deprecated: false

  field :vmware_engine_network, 12,
    type: :string,
    json_name: "vmwareEngineNetwork",
    deprecated: false

  field :description, 13, type: :string, deprecated: false

  field :vmware_engine_network_canonical, 14,
    type: :string,
    json_name: "vmwareEngineNetworkCanonical",
    deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ManagementDnsZoneBinding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :bind_network, 0

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :state, 8,
    type: Google.Cloud.Vmwareengine.V1.ManagementDnsZoneBinding.State,
    enum: true,
    deprecated: false

  field :description, 13, type: :string
  field :vpc_network, 14, type: :string, json_name: "vpcNetwork", oneof: 0, deprecated: false

  field :vmware_engine_network, 15,
    type: :string,
    json_name: "vmwareEngineNetwork",
    oneof: 0,
    deprecated: false

  field :uid, 9, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.VmwareEngineNetwork.VpcNetwork do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1,
    type: Google.Cloud.Vmwareengine.V1.VmwareEngineNetwork.VpcNetwork.Type,
    enum: true,
    deprecated: false

  field :network, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.VmwareEngineNetwork do
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

  field :description, 5, type: :string

  field :vpc_networks, 6,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.VmwareEngineNetwork.VpcNetwork,
    json_name: "vpcNetworks",
    deprecated: false

  field :state, 7,
    type: Google.Cloud.Vmwareengine.V1.VmwareEngineNetwork.State,
    enum: true,
    deprecated: false

  field :type, 8,
    type: Google.Cloud.Vmwareengine.V1.VmwareEngineNetwork.Type,
    enum: true,
    deprecated: false

  field :uid, 9, type: :string, deprecated: false
  field :etag, 10, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.PrivateConnection do
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

  field :description, 4, type: :string, deprecated: false

  field :state, 5,
    type: Google.Cloud.Vmwareengine.V1.PrivateConnection.State,
    enum: true,
    deprecated: false

  field :vmware_engine_network, 8,
    type: :string,
    json_name: "vmwareEngineNetwork",
    deprecated: false

  field :vmware_engine_network_canonical, 9,
    type: :string,
    json_name: "vmwareEngineNetworkCanonical",
    deprecated: false

  field :type, 10,
    type: Google.Cloud.Vmwareengine.V1.PrivateConnection.Type,
    enum: true,
    deprecated: false

  field :peering_id, 12, type: :string, json_name: "peeringId", deprecated: false

  field :routing_mode, 13,
    type: Google.Cloud.Vmwareengine.V1.PrivateConnection.RoutingMode,
    json_name: "routingMode",
    enum: true,
    deprecated: false

  field :uid, 14, type: :string, deprecated: false
  field :service_network, 16, type: :string, json_name: "serviceNetwork", deprecated: false

  field :peering_state, 17,
    type: Google.Cloud.Vmwareengine.V1.PrivateConnection.PeeringState,
    json_name: "peeringState",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.LocationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :capabilities, 1,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.LocationMetadata.Capability,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.DnsBindPermission do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :principals, 2,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.Principal,
    deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.Principal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :principal, 0

  field :user, 1, type: :string, oneof: 0
  field :service_account, 2, type: :string, json_name: "serviceAccount", oneof: 0
end