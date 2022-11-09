defmodule Google.Cloud.Vmwareengine.V1.PrivateCloud.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :CREATING, 2
  field :UPDATING, 3
  field :FAILED, 5
  field :DELETED, 6
  field :PURGING, 7
end

defmodule Google.Cloud.Vmwareengine.V1.Cluster.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :CREATING, 2
  field :UPDATING, 3
  field :DELETING, 4
  field :REPAIRING, 5
end

defmodule Google.Cloud.Vmwareengine.V1.Subnet.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :CREATING, 2
  field :UPDATING, 3
  field :DELETING, 4
end

defmodule Google.Cloud.Vmwareengine.V1.HcxActivationKey.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :AVAILABLE, 1
  field :CONSUMED, 2
  field :CREATING, 3
end

defmodule Google.Cloud.Vmwareengine.V1.Hcx.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :CREATING, 2
end

defmodule Google.Cloud.Vmwareengine.V1.Nsx.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :CREATING, 2
end

defmodule Google.Cloud.Vmwareengine.V1.Vcenter.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :CREATING, 2
end

defmodule Google.Cloud.Vmwareengine.V1.NetworkPolicy.NetworkService.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :UNPROVISIONED, 1
  field :RECONCILING, 2
  field :ACTIVE, 3
end

defmodule Google.Cloud.Vmwareengine.V1.VmwareEngineNetwork.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :UPDATING, 3
  field :DELETING, 4
end

defmodule Google.Cloud.Vmwareengine.V1.VmwareEngineNetwork.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :LEGACY, 1
end

defmodule Google.Cloud.Vmwareengine.V1.VmwareEngineNetwork.VpcNetwork.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :INTRANET, 1
  field :INTERNET, 2
  field :GOOGLE_CLOUD, 3
end

defmodule Google.Cloud.Vmwareengine.V1.NetworkConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :node_count, 1, type: :int32, json_name: "nodeCount", deprecated: false
  field :custom_core_count, 2, type: :int32, json_name: "customCoreCount", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.PrivateCloud.ManagementCluster.NodeTypeConfigsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Vmwareengine.V1.NodeTypeConfig
end

defmodule Google.Cloud.Vmwareengine.V1.PrivateCloud.ManagementCluster do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
end

defmodule Google.Cloud.Vmwareengine.V1.ListPrivateCloudsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Vmwareengine.V1.ListPrivateCloudsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :private_clouds, 1,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.PrivateCloud,
    json_name: "privateClouds"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.GetPrivateCloudRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.CreatePrivateCloudRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :private_cloud_id, 2, type: :string, json_name: "privateCloudId", deprecated: false

  field :private_cloud, 3,
    type: Google.Cloud.Vmwareengine.V1.PrivateCloud,
    json_name: "privateCloud",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.UpdatePrivateCloudRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :private_cloud, 1,
    type: Google.Cloud.Vmwareengine.V1.PrivateCloud,
    json_name: "privateCloud",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.DeletePrivateCloudRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :force, 3, type: :bool, deprecated: false

  field :delay_hours, 4,
    proto3_optional: true,
    type: :int32,
    json_name: "delayHours",
    deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.UndeletePrivateCloudRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.Cluster.NodeTypeConfigsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Vmwareengine.V1.NodeTypeConfig
end

defmodule Google.Cloud.Vmwareengine.V1.Cluster do
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

defmodule Google.Cloud.Vmwareengine.V1.ListClustersRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Vmwareengine.V1.ListClustersResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :clusters, 1, repeated: true, type: Google.Cloud.Vmwareengine.V1.Cluster
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.GetClusterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.CreateClusterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :cluster_id, 2, type: :string, json_name: "clusterId", deprecated: false
  field :cluster, 3, type: Google.Cloud.Vmwareengine.V1.Cluster, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.UpdateClusterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :cluster, 2, type: Google.Cloud.Vmwareengine.V1.Cluster, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.DeleteClusterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.Subnet do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :ip_cidr_range, 7, type: :string, json_name: "ipCidrRange"
  field :gateway_ip, 8, type: :string, json_name: "gatewayIp"
  field :type, 11, type: :string, deprecated: false
  field :state, 13, type: Google.Cloud.Vmwareengine.V1.Subnet.State, enum: true, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ListSubnetsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Vmwareengine.V1.ListSubnetsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :subnets, 1, repeated: true, type: Google.Cloud.Vmwareengine.V1.Subnet
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Vmwareengine.V1.OperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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

defmodule Google.Cloud.Vmwareengine.V1.NodeType do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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

defmodule Google.Cloud.Vmwareengine.V1.ListNodeTypesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.ListNodeTypesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :node_types, 1,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.NodeType,
    json_name: "nodeTypes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.GetNodeTypeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.Credentials do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :username, 1, type: :string
  field :password, 2, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.ShowNsxCredentialsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :private_cloud, 1, type: :string, json_name: "privateCloud", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ShowVcenterCredentialsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :private_cloud, 1, type: :string, json_name: "privateCloud", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ResetNsxCredentialsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :private_cloud, 1, type: :string, json_name: "privateCloud", deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ResetVcenterCredentialsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :private_cloud, 1, type: :string, json_name: "privateCloud", deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ListHcxActivationKeysResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :hcx_activation_keys, 1,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.HcxActivationKey,
    json_name: "hcxActivationKeys"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.HcxActivationKey do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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

defmodule Google.Cloud.Vmwareengine.V1.ListHcxActivationKeysRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Vmwareengine.V1.GetHcxActivationKeyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.CreateHcxActivationKeyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :hcx_activation_key, 2,
    type: Google.Cloud.Vmwareengine.V1.HcxActivationKey,
    json_name: "hcxActivationKey",
    deprecated: false

  field :hcx_activation_key_id, 3,
    type: :string,
    json_name: "hcxActivationKeyId",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Vmwareengine.V1.Hcx do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :internal_ip, 2, type: :string, json_name: "internalIp"
  field :version, 4, type: :string
  field :state, 5, type: Google.Cloud.Vmwareengine.V1.Hcx.State, enum: true, deprecated: false
  field :fqdn, 6, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.Nsx do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :internal_ip, 2, type: :string, json_name: "internalIp"
  field :version, 4, type: :string
  field :state, 5, type: Google.Cloud.Vmwareengine.V1.Nsx.State, enum: true, deprecated: false
  field :fqdn, 6, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.Vcenter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :internal_ip, 2, type: :string, json_name: "internalIp"
  field :version, 4, type: :string
  field :state, 5, type: Google.Cloud.Vmwareengine.V1.Vcenter.State, enum: true, deprecated: false
  field :fqdn, 6, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.NetworkPolicy.NetworkService do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enabled, 1, type: :bool

  field :state, 2,
    type: Google.Cloud.Vmwareengine.V1.NetworkPolicy.NetworkService.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.NetworkPolicy do
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

defmodule Google.Cloud.Vmwareengine.V1.ListNetworkPoliciesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Vmwareengine.V1.ListNetworkPoliciesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network_policies, 1,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.NetworkPolicy,
    json_name: "networkPolicies"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.GetNetworkPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.UpdateNetworkPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network_policy, 1,
    type: Google.Cloud.Vmwareengine.V1.NetworkPolicy,
    json_name: "networkPolicy",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.CreateNetworkPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :network_policy_id, 2, type: :string, json_name: "networkPolicyId", deprecated: false

  field :network_policy, 3,
    type: Google.Cloud.Vmwareengine.V1.NetworkPolicy,
    json_name: "networkPolicy",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.DeleteNetworkPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.VmwareEngineNetwork.VpcNetwork do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 1,
    type: Google.Cloud.Vmwareengine.V1.VmwareEngineNetwork.VpcNetwork.Type,
    enum: true,
    deprecated: false

  field :network, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.VmwareEngineNetwork do
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

defmodule Google.Cloud.Vmwareengine.V1.CreateVmwareEngineNetworkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :vmware_engine_network_id, 2,
    type: :string,
    json_name: "vmwareEngineNetworkId",
    deprecated: false

  field :vmware_engine_network, 3,
    type: Google.Cloud.Vmwareengine.V1.VmwareEngineNetwork,
    json_name: "vmwareEngineNetwork",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.UpdateVmwareEngineNetworkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :vmware_engine_network, 1,
    type: Google.Cloud.Vmwareengine.V1.VmwareEngineNetwork,
    json_name: "vmwareEngineNetwork",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.DeleteVmwareEngineNetworkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :etag, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.GetVmwareEngineNetworkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ListVmwareEngineNetworksRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Vmwareengine.V1.ListVmwareEngineNetworksResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :vmware_engine_networks, 1,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.VmwareEngineNetwork,
    json_name: "vmwareEngineNetworks"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.VmwareEngine.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.vmwareengine.v1.VmwareEngine",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListPrivateClouds,
      Google.Cloud.Vmwareengine.V1.ListPrivateCloudsRequest,
      Google.Cloud.Vmwareengine.V1.ListPrivateCloudsResponse

  rpc :GetPrivateCloud,
      Google.Cloud.Vmwareengine.V1.GetPrivateCloudRequest,
      Google.Cloud.Vmwareengine.V1.PrivateCloud

  rpc :CreatePrivateCloud,
      Google.Cloud.Vmwareengine.V1.CreatePrivateCloudRequest,
      Google.Longrunning.Operation

  rpc :UpdatePrivateCloud,
      Google.Cloud.Vmwareengine.V1.UpdatePrivateCloudRequest,
      Google.Longrunning.Operation

  rpc :DeletePrivateCloud,
      Google.Cloud.Vmwareengine.V1.DeletePrivateCloudRequest,
      Google.Longrunning.Operation

  rpc :UndeletePrivateCloud,
      Google.Cloud.Vmwareengine.V1.UndeletePrivateCloudRequest,
      Google.Longrunning.Operation

  rpc :ListClusters,
      Google.Cloud.Vmwareengine.V1.ListClustersRequest,
      Google.Cloud.Vmwareengine.V1.ListClustersResponse

  rpc :GetCluster,
      Google.Cloud.Vmwareengine.V1.GetClusterRequest,
      Google.Cloud.Vmwareengine.V1.Cluster

  rpc :CreateCluster,
      Google.Cloud.Vmwareengine.V1.CreateClusterRequest,
      Google.Longrunning.Operation

  rpc :UpdateCluster,
      Google.Cloud.Vmwareengine.V1.UpdateClusterRequest,
      Google.Longrunning.Operation

  rpc :DeleteCluster,
      Google.Cloud.Vmwareengine.V1.DeleteClusterRequest,
      Google.Longrunning.Operation

  rpc :ListSubnets,
      Google.Cloud.Vmwareengine.V1.ListSubnetsRequest,
      Google.Cloud.Vmwareengine.V1.ListSubnetsResponse

  rpc :ListNodeTypes,
      Google.Cloud.Vmwareengine.V1.ListNodeTypesRequest,
      Google.Cloud.Vmwareengine.V1.ListNodeTypesResponse

  rpc :GetNodeType,
      Google.Cloud.Vmwareengine.V1.GetNodeTypeRequest,
      Google.Cloud.Vmwareengine.V1.NodeType

  rpc :ShowNsxCredentials,
      Google.Cloud.Vmwareengine.V1.ShowNsxCredentialsRequest,
      Google.Cloud.Vmwareengine.V1.Credentials

  rpc :ShowVcenterCredentials,
      Google.Cloud.Vmwareengine.V1.ShowVcenterCredentialsRequest,
      Google.Cloud.Vmwareengine.V1.Credentials

  rpc :ResetNsxCredentials,
      Google.Cloud.Vmwareengine.V1.ResetNsxCredentialsRequest,
      Google.Longrunning.Operation

  rpc :ResetVcenterCredentials,
      Google.Cloud.Vmwareengine.V1.ResetVcenterCredentialsRequest,
      Google.Longrunning.Operation

  rpc :CreateHcxActivationKey,
      Google.Cloud.Vmwareengine.V1.CreateHcxActivationKeyRequest,
      Google.Longrunning.Operation

  rpc :ListHcxActivationKeys,
      Google.Cloud.Vmwareengine.V1.ListHcxActivationKeysRequest,
      Google.Cloud.Vmwareengine.V1.ListHcxActivationKeysResponse

  rpc :GetHcxActivationKey,
      Google.Cloud.Vmwareengine.V1.GetHcxActivationKeyRequest,
      Google.Cloud.Vmwareengine.V1.HcxActivationKey

  rpc :GetNetworkPolicy,
      Google.Cloud.Vmwareengine.V1.GetNetworkPolicyRequest,
      Google.Cloud.Vmwareengine.V1.NetworkPolicy

  rpc :ListNetworkPolicies,
      Google.Cloud.Vmwareengine.V1.ListNetworkPoliciesRequest,
      Google.Cloud.Vmwareengine.V1.ListNetworkPoliciesResponse

  rpc :CreateNetworkPolicy,
      Google.Cloud.Vmwareengine.V1.CreateNetworkPolicyRequest,
      Google.Longrunning.Operation

  rpc :UpdateNetworkPolicy,
      Google.Cloud.Vmwareengine.V1.UpdateNetworkPolicyRequest,
      Google.Longrunning.Operation

  rpc :DeleteNetworkPolicy,
      Google.Cloud.Vmwareengine.V1.DeleteNetworkPolicyRequest,
      Google.Longrunning.Operation

  rpc :CreateVmwareEngineNetwork,
      Google.Cloud.Vmwareengine.V1.CreateVmwareEngineNetworkRequest,
      Google.Longrunning.Operation

  rpc :UpdateVmwareEngineNetwork,
      Google.Cloud.Vmwareengine.V1.UpdateVmwareEngineNetworkRequest,
      Google.Longrunning.Operation

  rpc :DeleteVmwareEngineNetwork,
      Google.Cloud.Vmwareengine.V1.DeleteVmwareEngineNetworkRequest,
      Google.Longrunning.Operation

  rpc :GetVmwareEngineNetwork,
      Google.Cloud.Vmwareengine.V1.GetVmwareEngineNetworkRequest,
      Google.Cloud.Vmwareengine.V1.VmwareEngineNetwork

  rpc :ListVmwareEngineNetworks,
      Google.Cloud.Vmwareengine.V1.ListVmwareEngineNetworksRequest,
      Google.Cloud.Vmwareengine.V1.ListVmwareEngineNetworksResponse
end

defmodule Google.Cloud.Vmwareengine.V1.VmwareEngine.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Vmwareengine.V1.VmwareEngine.Service
end