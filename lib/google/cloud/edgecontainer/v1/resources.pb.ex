defmodule Google.Cloud.Edgecontainer.V1.KmsKeyState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :KMS_KEY_STATE_UNSPECIFIED, 0
  field :KMS_KEY_STATE_KEY_AVAILABLE, 1
  field :KMS_KEY_STATE_KEY_UNAVAILABLE, 2
end

defmodule Google.Cloud.Edgecontainer.V1.ResourceState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :RESOURCE_STATE_UNSPECIFIED, 0
  field :RESOURCE_STATE_LOCK_DOWN, 1
  field :RESOURCE_STATE_LOCK_DOWN_PENDING, 2
end

defmodule Google.Cloud.Edgecontainer.V1.Cluster.Status do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATUS_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :RUNNING, 2
  field :DELETING, 3
  field :ERROR, 4
  field :RECONCILING, 5
end

defmodule Google.Cloud.Edgecontainer.V1.Cluster.ReleaseChannel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :RELEASE_CHANNEL_UNSPECIFIED, 0
  field :NONE, 1
  field :REGULAR, 2
end

defmodule Google.Cloud.Edgecontainer.V1.Cluster.ControlPlane.SharedDeploymentPolicy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SHARED_DEPLOYMENT_POLICY_UNSPECIFIED, 0
  field :ALLOWED, 1
  field :DISALLOWED, 2
end

defmodule Google.Cloud.Edgecontainer.V1.Cluster.MaintenanceEvent.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :USER_INITIATED_UPGRADE, 1
  field :GOOGLE_DRIVEN_UPGRADE, 2
end

defmodule Google.Cloud.Edgecontainer.V1.Cluster.MaintenanceEvent.Schedule do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SCHEDULE_UNSPECIFIED, 0
  field :IMMEDIATELY, 1
end

defmodule Google.Cloud.Edgecontainer.V1.Cluster.MaintenanceEvent.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :RECONCILING, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
end

defmodule Google.Cloud.Edgecontainer.V1.Cluster.ConnectionState.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :DISCONNECTED, 1
  field :CONNECTED, 2
  field :CONNECTED_AND_SYNCING, 3
end

defmodule Google.Cloud.Edgecontainer.V1.VpnConnection.BgpRoutingMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :BGP_ROUTING_MODE_UNSPECIFIED, 0
  field :REGIONAL, 1
  field :GLOBAL, 2
end

defmodule Google.Cloud.Edgecontainer.V1.VpnConnection.Details.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STATE_CONNECTED, 1
  field :STATE_CONNECTING, 2
  field :STATE_ERROR, 3
end

defmodule Google.Cloud.Edgecontainer.V1.ZoneMetadata.RackType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :RACK_TYPE_UNSPECIFIED, 0
  field :BASE, 1
  field :EXPANSION, 2
end

defmodule Google.Cloud.Edgecontainer.V1.Cluster.ControlPlane.Remote do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Edgecontainer.V1.Cluster.ControlPlane.Local do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :node_location, 1, type: :string, json_name: "nodeLocation"
  field :node_count, 2, type: :int32, json_name: "nodeCount"
  field :machine_filter, 3, type: :string, json_name: "machineFilter"

  field :shared_deployment_policy, 4,
    type: Google.Cloud.Edgecontainer.V1.Cluster.ControlPlane.SharedDeploymentPolicy,
    json_name: "sharedDeploymentPolicy",
    enum: true

  field :control_plane_node_storage_schema, 5,
    type: :string,
    json_name: "controlPlaneNodeStorageSchema",
    deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.Cluster.ControlPlane do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :config, 0

  field :remote, 1, type: Google.Cloud.Edgecontainer.V1.Cluster.ControlPlane.Remote, oneof: 0
  field :local, 2, type: Google.Cloud.Edgecontainer.V1.Cluster.ControlPlane.Local, oneof: 0
end

defmodule Google.Cloud.Edgecontainer.V1.Cluster.SystemAddonsConfig.Ingress do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :disabled, 1, type: :bool, deprecated: false
  field :ipv4_vip, 2, type: :string, json_name: "ipv4Vip", deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.Cluster.SystemAddonsConfig.VMServiceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :vmm_enabled, 1, type: :bool, json_name: "vmmEnabled", deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.Cluster.SystemAddonsConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ingress, 1,
    type: Google.Cloud.Edgecontainer.V1.Cluster.SystemAddonsConfig.Ingress,
    deprecated: false

  field :vm_service_config, 4,
    type: Google.Cloud.Edgecontainer.V1.Cluster.SystemAddonsConfig.VMServiceConfig,
    json_name: "vmServiceConfig",
    deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.Cluster.ControlPlaneEncryption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :kms_key, 1, type: :string, json_name: "kmsKey", deprecated: false

  field :kms_key_active_version, 2,
    type: :string,
    json_name: "kmsKeyActiveVersion",
    deprecated: false

  field :kms_key_state, 3,
    type: Google.Cloud.Edgecontainer.V1.KmsKeyState,
    json_name: "kmsKeyState",
    enum: true,
    deprecated: false

  field :kms_status, 4, type: Google.Rpc.Status, json_name: "kmsStatus", deprecated: false

  field :resource_state, 5,
    type: Google.Cloud.Edgecontainer.V1.ResourceState,
    json_name: "resourceState",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.Cluster.MaintenanceEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :uuid, 1, type: :string, deprecated: false
  field :target_version, 2, type: :string, json_name: "targetVersion", deprecated: false
  field :operation, 3, type: :string, deprecated: false

  field :type, 4,
    type: Google.Cloud.Edgecontainer.V1.Cluster.MaintenanceEvent.Type,
    enum: true,
    deprecated: false

  field :schedule, 5,
    type: Google.Cloud.Edgecontainer.V1.Cluster.MaintenanceEvent.Schedule,
    enum: true,
    deprecated: false

  field :state, 6,
    type: Google.Cloud.Edgecontainer.V1.Cluster.MaintenanceEvent.State,
    enum: true,
    deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :start_time, 8, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 9, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :update_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.Cluster.SurvivabilityConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :offline_reboot_ttl, 1,
    type: Google.Protobuf.Duration,
    json_name: "offlineRebootTtl",
    deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.Cluster.ConnectionState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Edgecontainer.V1.Cluster.ConnectionState.State,
    enum: true,
    deprecated: false

  field :update_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.Cluster.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Edgecontainer.V1.Cluster do
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
    type: Google.Cloud.Edgecontainer.V1.Cluster.LabelsEntry,
    map: true

  field :fleet, 11, type: Google.Cloud.Edgecontainer.V1.Fleet, deprecated: false
  field :networking, 7, type: Google.Cloud.Edgecontainer.V1.ClusterNetworking, deprecated: false
  field :authorization, 9, type: Google.Cloud.Edgecontainer.V1.Authorization, deprecated: false

  field :default_max_pods_per_node, 8,
    type: :int32,
    json_name: "defaultMaxPodsPerNode",
    deprecated: false

  field :endpoint, 6, type: :string, deprecated: false
  field :port, 19, type: :int32, deprecated: false

  field :cluster_ca_certificate, 10,
    type: :string,
    json_name: "clusterCaCertificate",
    deprecated: false

  field :maintenance_policy, 12,
    type: Google.Cloud.Edgecontainer.V1.MaintenancePolicy,
    json_name: "maintenancePolicy",
    deprecated: false

  field :control_plane_version, 13,
    type: :string,
    json_name: "controlPlaneVersion",
    deprecated: false

  field :node_version, 14, type: :string, json_name: "nodeVersion", deprecated: false

  field :control_plane, 15,
    type: Google.Cloud.Edgecontainer.V1.Cluster.ControlPlane,
    json_name: "controlPlane",
    deprecated: false

  field :system_addons_config, 16,
    type: Google.Cloud.Edgecontainer.V1.Cluster.SystemAddonsConfig,
    json_name: "systemAddonsConfig",
    deprecated: false

  field :external_load_balancer_ipv4_address_pools, 17,
    repeated: true,
    type: :string,
    json_name: "externalLoadBalancerIpv4AddressPools",
    deprecated: false

  field :control_plane_encryption, 18,
    type: Google.Cloud.Edgecontainer.V1.Cluster.ControlPlaneEncryption,
    json_name: "controlPlaneEncryption",
    deprecated: false

  field :status, 20,
    type: Google.Cloud.Edgecontainer.V1.Cluster.Status,
    enum: true,
    deprecated: false

  field :maintenance_events, 21,
    repeated: true,
    type: Google.Cloud.Edgecontainer.V1.Cluster.MaintenanceEvent,
    json_name: "maintenanceEvents",
    deprecated: false

  field :target_version, 22, type: :string, json_name: "targetVersion", deprecated: false

  field :release_channel, 23,
    type: Google.Cloud.Edgecontainer.V1.Cluster.ReleaseChannel,
    json_name: "releaseChannel",
    enum: true,
    deprecated: false

  field :survivability_config, 24,
    type: Google.Cloud.Edgecontainer.V1.Cluster.SurvivabilityConfig,
    json_name: "survivabilityConfig",
    deprecated: false

  field :external_load_balancer_ipv6_address_pools, 25,
    repeated: true,
    type: :string,
    json_name: "externalLoadBalancerIpv6AddressPools",
    deprecated: false

  field :connection_state, 27,
    type: Google.Cloud.Edgecontainer.V1.Cluster.ConnectionState,
    json_name: "connectionState",
    deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.ClusterNetworking do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :cluster_ipv4_cidr_blocks, 1,
    repeated: true,
    type: :string,
    json_name: "clusterIpv4CidrBlocks",
    deprecated: false

  field :services_ipv4_cidr_blocks, 2,
    repeated: true,
    type: :string,
    json_name: "servicesIpv4CidrBlocks",
    deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.Fleet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project, 1, type: :string, deprecated: false
  field :membership, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.ClusterUser do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :username, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.Authorization do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :admin_users, 1,
    type: Google.Cloud.Edgecontainer.V1.ClusterUser,
    json_name: "adminUsers",
    deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.NodePool.LocalDiskEncryption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :kms_key, 1, type: :string, json_name: "kmsKey", deprecated: false

  field :kms_key_active_version, 2,
    type: :string,
    json_name: "kmsKeyActiveVersion",
    deprecated: false

  field :kms_key_state, 3,
    type: Google.Cloud.Edgecontainer.V1.KmsKeyState,
    json_name: "kmsKeyState",
    enum: true,
    deprecated: false

  field :kms_status, 4, type: Google.Rpc.Status, json_name: "kmsStatus", deprecated: false

  field :resource_state, 5,
    type: Google.Cloud.Edgecontainer.V1.ResourceState,
    json_name: "resourceState",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.NodePool.NodeConfig.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Edgecontainer.V1.NodePool.NodeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :labels, 1,
    repeated: true,
    type: Google.Cloud.Edgecontainer.V1.NodePool.NodeConfig.LabelsEntry,
    map: true,
    deprecated: false

  field :node_storage_schema, 2, type: :string, json_name: "nodeStorageSchema", deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.NodePool.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Edgecontainer.V1.NodePool do
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
    type: Google.Cloud.Edgecontainer.V1.NodePool.LabelsEntry,
    map: true

  field :node_location, 8, type: :string, json_name: "nodeLocation"
  field :node_count, 6, type: :int32, json_name: "nodeCount", deprecated: false
  field :machine_filter, 7, type: :string, json_name: "machineFilter"

  field :local_disk_encryption, 9,
    type: Google.Cloud.Edgecontainer.V1.NodePool.LocalDiskEncryption,
    json_name: "localDiskEncryption",
    deprecated: false

  field :node_version, 10, type: :string, json_name: "nodeVersion", deprecated: false

  field :node_config, 11,
    type: Google.Cloud.Edgecontainer.V1.NodePool.NodeConfig,
    json_name: "nodeConfig",
    deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.Machine.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Edgecontainer.V1.Machine do
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
    type: Google.Cloud.Edgecontainer.V1.Machine.LabelsEntry,
    map: true

  field :hosted_node, 5, type: :string, json_name: "hostedNode"
  field :zone, 6, type: :string
  field :version, 7, type: :string, deprecated: false
  field :disabled, 8, type: :bool, deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.VpnConnection.VpcProject do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :service_account, 2, type: :string, json_name: "serviceAccount", deprecated: true
end

defmodule Google.Cloud.Edgecontainer.V1.VpnConnection.Details.CloudRouter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Cloud.Edgecontainer.V1.VpnConnection.Details.CloudVpn do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :gateway, 1, type: :string
end

defmodule Google.Cloud.Edgecontainer.V1.VpnConnection.Details do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Edgecontainer.V1.VpnConnection.Details.State, enum: true
  field :error, 2, type: :string

  field :cloud_router, 3,
    type: Google.Cloud.Edgecontainer.V1.VpnConnection.Details.CloudRouter,
    json_name: "cloudRouter"

  field :cloud_vpns, 4,
    repeated: true,
    type: Google.Cloud.Edgecontainer.V1.VpnConnection.Details.CloudVpn,
    json_name: "cloudVpns"
end

defmodule Google.Cloud.Edgecontainer.V1.VpnConnection.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Edgecontainer.V1.VpnConnection do
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
    type: Google.Cloud.Edgecontainer.V1.VpnConnection.LabelsEntry,
    map: true

  field :nat_gateway_ip, 5, type: :string, json_name: "natGatewayIp"

  field :bgp_routing_mode, 6,
    type: Google.Cloud.Edgecontainer.V1.VpnConnection.BgpRoutingMode,
    json_name: "bgpRoutingMode",
    enum: true,
    deprecated: true

  field :cluster, 7, type: :string, deprecated: false
  field :vpc, 8, type: :string

  field :vpc_project, 11,
    type: Google.Cloud.Edgecontainer.V1.VpnConnection.VpcProject,
    json_name: "vpcProject",
    deprecated: false

  field :enable_high_availability, 9, type: :bool, json_name: "enableHighAvailability"
  field :router, 12, type: :string, deprecated: false
  field :details, 10, type: Google.Cloud.Edgecontainer.V1.VpnConnection.Details, deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.LocationMetadata.AvailableZonesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Edgecontainer.V1.ZoneMetadata
end

defmodule Google.Cloud.Edgecontainer.V1.LocationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :available_zones, 1,
    repeated: true,
    type: Google.Cloud.Edgecontainer.V1.LocationMetadata.AvailableZonesEntry,
    json_name: "availableZones",
    map: true
end

defmodule Google.Cloud.Edgecontainer.V1.ZoneMetadata.RackTypesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Edgecontainer.V1.ZoneMetadata.RackType, enum: true
end

defmodule Google.Cloud.Edgecontainer.V1.ZoneMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :quota, 1, repeated: true, type: Google.Cloud.Edgecontainer.V1.Quota

  field :rack_types, 2,
    repeated: true,
    type: Google.Cloud.Edgecontainer.V1.ZoneMetadata.RackTypesEntry,
    json_name: "rackTypes",
    map: true

  field :config_data, 3, type: Google.Cloud.Edgecontainer.V1.ConfigData, json_name: "configData"
end

defmodule Google.Cloud.Edgecontainer.V1.ConfigData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :available_external_lb_pools_ipv4, 1,
    repeated: true,
    type: :string,
    json_name: "availableExternalLbPoolsIpv4"

  field :available_external_lb_pools_ipv6, 2,
    repeated: true,
    type: :string,
    json_name: "availableExternalLbPoolsIpv6"
end

defmodule Google.Cloud.Edgecontainer.V1.Quota do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :metric, 1, type: :string
  field :limit, 2, type: :double
  field :usage, 3, type: :double
end

defmodule Google.Cloud.Edgecontainer.V1.MaintenancePolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :window, 1, type: Google.Cloud.Edgecontainer.V1.MaintenanceWindow

  field :maintenance_exclusions, 2,
    repeated: true,
    type: Google.Cloud.Edgecontainer.V1.MaintenanceExclusionWindow,
    json_name: "maintenanceExclusions",
    deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.MaintenanceWindow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :recurring_window, 1,
    type: Google.Cloud.Edgecontainer.V1.RecurringTimeWindow,
    json_name: "recurringWindow"
end

defmodule Google.Cloud.Edgecontainer.V1.RecurringTimeWindow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :window, 1, type: Google.Cloud.Edgecontainer.V1.TimeWindow
  field :recurrence, 2, type: :string
end

defmodule Google.Cloud.Edgecontainer.V1.MaintenanceExclusionWindow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :window, 1, type: Google.Cloud.Edgecontainer.V1.TimeWindow, deprecated: false
  field :id, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.TimeWindow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Edgecontainer.V1.ServerConfig.ChannelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Edgecontainer.V1.ChannelConfig
end

defmodule Google.Cloud.Edgecontainer.V1.ServerConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :channels, 1,
    repeated: true,
    type: Google.Cloud.Edgecontainer.V1.ServerConfig.ChannelsEntry,
    map: true,
    deprecated: false

  field :versions, 2,
    repeated: true,
    type: Google.Cloud.Edgecontainer.V1.Version,
    deprecated: false

  field :default_version, 3, type: :string, json_name: "defaultVersion", deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.ChannelConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :default_version, 1, type: :string, json_name: "defaultVersion", deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.Version do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end