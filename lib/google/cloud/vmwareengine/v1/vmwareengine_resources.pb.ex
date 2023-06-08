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
end

defmodule Google.Cloud.Vmwareengine.V1.NodeTypeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :node_count, 1, type: :int32, json_name: "nodeCount", deprecated: false
  field :custom_core_count, 2, type: :int32, json_name: "customCoreCount", deprecated: false
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
end

defmodule Google.Cloud.Vmwareengine.V1.Subnet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :ip_cidr_range, 7, type: :string, json_name: "ipCidrRange"
  field :gateway_ip, 8, type: :string, json_name: "gatewayIp"
  field :type, 11, type: :string, deprecated: false
  field :state, 13, type: Google.Cloud.Vmwareengine.V1.Subnet.State, enum: true, deprecated: false
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