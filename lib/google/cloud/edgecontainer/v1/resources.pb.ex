defmodule Google.Cloud.Edgecontainer.V1.KmsKeyState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :KMS_KEY_STATE_UNSPECIFIED, 0
  field :KMS_KEY_STATE_KEY_AVAILABLE, 1
  field :KMS_KEY_STATE_KEY_UNAVAILABLE, 2
end

defmodule Google.Cloud.Edgecontainer.V1.VpnConnection.BgpRoutingMode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :BGP_ROUTING_MODE_UNSPECIFIED, 0
  field :REGIONAL, 1
  field :GLOBAL, 2
end

defmodule Google.Cloud.Edgecontainer.V1.VpnConnection.Details.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STATE_CONNECTED, 1
  field :STATE_CONNECTING, 2
  field :STATE_ERROR, 3
end

defmodule Google.Cloud.Edgecontainer.V1.Cluster.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Edgecontainer.V1.Cluster do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
end

defmodule Google.Cloud.Edgecontainer.V1.ClusterNetworking do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 1, type: :string, deprecated: false
  field :membership, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.ClusterUser do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :username, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.Authorization do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :admin_users, 1,
    type: Google.Cloud.Edgecontainer.V1.ClusterUser,
    json_name: "adminUsers",
    deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.NodePool.LocalDiskEncryption do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
end

defmodule Google.Cloud.Edgecontainer.V1.NodePool.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Edgecontainer.V1.NodePool do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
end

defmodule Google.Cloud.Edgecontainer.V1.Machine.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Edgecontainer.V1.Machine do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
end

defmodule Google.Cloud.Edgecontainer.V1.VpnConnection.VpcProject do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :service_account, 2, type: :string, json_name: "serviceAccount"
end

defmodule Google.Cloud.Edgecontainer.V1.VpnConnection.Details.CloudRouter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Cloud.Edgecontainer.V1.VpnConnection.Details.CloudVpn do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :gateway, 1, type: :string
end

defmodule Google.Cloud.Edgecontainer.V1.VpnConnection.Details do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Edgecontainer.V1.VpnConnection do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
    json_name: "vpcProject"

  field :enable_high_availability, 9, type: :bool, json_name: "enableHighAvailability"
  field :details, 10, type: Google.Cloud.Edgecontainer.V1.VpnConnection.Details, deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.LocationMetadata.AvailableZonesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Edgecontainer.V1.ZoneMetadata
end

defmodule Google.Cloud.Edgecontainer.V1.LocationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :available_zones, 1,
    repeated: true,
    type: Google.Cloud.Edgecontainer.V1.LocationMetadata.AvailableZonesEntry,
    json_name: "availableZones",
    map: true
end

defmodule Google.Cloud.Edgecontainer.V1.ZoneMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :quota, 1, repeated: true, type: Google.Cloud.Edgecontainer.V1.Quota
end

defmodule Google.Cloud.Edgecontainer.V1.Quota do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :metric, 1, type: :string
  field :limit, 2, type: :double
  field :usage, 3, type: :double
end

defmodule Google.Cloud.Edgecontainer.V1.MaintenancePolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :window, 1, type: Google.Cloud.Edgecontainer.V1.MaintenanceWindow
end

defmodule Google.Cloud.Edgecontainer.V1.MaintenanceWindow do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :recurring_window, 1,
    type: Google.Cloud.Edgecontainer.V1.RecurringTimeWindow,
    json_name: "recurringWindow"
end

defmodule Google.Cloud.Edgecontainer.V1.RecurringTimeWindow do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :window, 1, type: Google.Cloud.Edgecontainer.V1.TimeWindow
  field :recurrence, 2, type: :string
end

defmodule Google.Cloud.Edgecontainer.V1.TimeWindow do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
end