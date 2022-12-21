defmodule Google.Cloud.Gkemulticloud.V1.AzureCluster.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :RUNNING, 2
  field :RECONCILING, 3
  field :STOPPING, 4
  field :ERROR, 5
  field :DEGRADED, 6
end

defmodule Google.Cloud.Gkemulticloud.V1.AzureNodePool.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :RUNNING, 2
  field :RECONCILING, 3
  field :STOPPING, 4
  field :ERROR, 5
  field :DEGRADED, 6
end

defmodule Google.Cloud.Gkemulticloud.V1.AzureCluster.AnnotationsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gkemulticloud.V1.AzureCluster do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :description, 2, type: :string, deprecated: false
  field :azure_region, 3, type: :string, json_name: "azureRegion", deprecated: false
  field :resource_group_id, 17, type: :string, json_name: "resourceGroupId", deprecated: false
  field :azure_client, 16, type: :string, json_name: "azureClient", deprecated: false

  field :networking, 4,
    type: Google.Cloud.Gkemulticloud.V1.AzureClusterNetworking,
    deprecated: false

  field :control_plane, 5,
    type: Google.Cloud.Gkemulticloud.V1.AzureControlPlane,
    json_name: "controlPlane",
    deprecated: false

  field :authorization, 6,
    type: Google.Cloud.Gkemulticloud.V1.AzureAuthorization,
    deprecated: false

  field :state, 7,
    type: Google.Cloud.Gkemulticloud.V1.AzureCluster.State,
    enum: true,
    deprecated: false

  field :endpoint, 8, type: :string, deprecated: false
  field :uid, 9, type: :string, deprecated: false
  field :reconciling, 10, type: :bool, deprecated: false

  field :create_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 13, type: :string

  field :annotations, 14,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AzureCluster.AnnotationsEntry,
    map: true,
    deprecated: false

  field :workload_identity_config, 18,
    type: Google.Cloud.Gkemulticloud.V1.WorkloadIdentityConfig,
    json_name: "workloadIdentityConfig",
    deprecated: false

  field :cluster_ca_certificate, 19,
    type: :string,
    json_name: "clusterCaCertificate",
    deprecated: false

  field :fleet, 20, type: Google.Cloud.Gkemulticloud.V1.Fleet, deprecated: false

  field :managed_resources, 21,
    type: Google.Cloud.Gkemulticloud.V1.AzureClusterResources,
    json_name: "managedResources",
    deprecated: false

  field :logging_config, 23,
    type: Google.Cloud.Gkemulticloud.V1.LoggingConfig,
    json_name: "loggingConfig",
    deprecated: false

  field :errors, 24,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AzureClusterError,
    deprecated: false

  field :monitoring_config, 25,
    type: Google.Cloud.Gkemulticloud.V1.MonitoringConfig,
    json_name: "monitoringConfig",
    deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AzureClusterNetworking do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :virtual_network_id, 1, type: :string, json_name: "virtualNetworkId", deprecated: false

  field :pod_address_cidr_blocks, 2,
    repeated: true,
    type: :string,
    json_name: "podAddressCidrBlocks",
    deprecated: false

  field :service_address_cidr_blocks, 3,
    repeated: true,
    type: :string,
    json_name: "serviceAddressCidrBlocks",
    deprecated: false

  field :service_load_balancer_subnet_id, 5,
    type: :string,
    json_name: "serviceLoadBalancerSubnetId",
    deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AzureControlPlane.TagsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gkemulticloud.V1.AzureControlPlane do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :version, 1, type: :string, deprecated: false
  field :subnet_id, 2, type: :string, json_name: "subnetId", deprecated: false
  field :vm_size, 3, type: :string, json_name: "vmSize", deprecated: false

  field :ssh_config, 11,
    type: Google.Cloud.Gkemulticloud.V1.AzureSshConfig,
    json_name: "sshConfig",
    deprecated: false

  field :root_volume, 4,
    type: Google.Cloud.Gkemulticloud.V1.AzureDiskTemplate,
    json_name: "rootVolume",
    deprecated: false

  field :main_volume, 5,
    type: Google.Cloud.Gkemulticloud.V1.AzureDiskTemplate,
    json_name: "mainVolume",
    deprecated: false

  field :database_encryption, 10,
    type: Google.Cloud.Gkemulticloud.V1.AzureDatabaseEncryption,
    json_name: "databaseEncryption",
    deprecated: false

  field :proxy_config, 12,
    type: Google.Cloud.Gkemulticloud.V1.AzureProxyConfig,
    json_name: "proxyConfig",
    deprecated: false

  field :config_encryption, 14,
    type: Google.Cloud.Gkemulticloud.V1.AzureConfigEncryption,
    json_name: "configEncryption",
    deprecated: false

  field :tags, 7,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AzureControlPlane.TagsEntry,
    map: true,
    deprecated: false

  field :replica_placements, 13,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.ReplicaPlacement,
    json_name: "replicaPlacements",
    deprecated: false

  field :endpoint_subnet_id, 15, type: :string, json_name: "endpointSubnetId", deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.ReplicaPlacement do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :subnet_id, 1, type: :string, json_name: "subnetId", deprecated: false

  field :azure_availability_zone, 2,
    type: :string,
    json_name: "azureAvailabilityZone",
    deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AzureProxyConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_group_id, 1, type: :string, json_name: "resourceGroupId"
  field :secret_id, 2, type: :string, json_name: "secretId"
end

defmodule Google.Cloud.Gkemulticloud.V1.AzureDatabaseEncryption do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key_id, 3, type: :string, json_name: "keyId", deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AzureConfigEncryption do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key_id, 2, type: :string, json_name: "keyId", deprecated: false
  field :public_key, 3, type: :string, json_name: "publicKey", deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AzureDiskTemplate do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :size_gib, 1, type: :int32, json_name: "sizeGib", deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AzureClient.AnnotationsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gkemulticloud.V1.AzureClient do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :tenant_id, 2, type: :string, json_name: "tenantId", deprecated: false
  field :application_id, 3, type: :string, json_name: "applicationId", deprecated: false

  field :annotations, 8,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AzureClient.AnnotationsEntry,
    map: true,
    deprecated: false

  field :pem_certificate, 7, type: :string, json_name: "pemCertificate", deprecated: false
  field :uid, 5, type: :string, deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AzureAuthorization do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :admin_users, 1,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AzureClusterUser,
    json_name: "adminUsers",
    deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AzureClusterUser do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :username, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AzureNodePool.AnnotationsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gkemulticloud.V1.AzureNodePool do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :version, 2, type: :string, deprecated: false
  field :config, 22, type: Google.Cloud.Gkemulticloud.V1.AzureNodeConfig, deprecated: false
  field :subnet_id, 3, type: :string, json_name: "subnetId", deprecated: false

  field :autoscaling, 4,
    type: Google.Cloud.Gkemulticloud.V1.AzureNodePoolAutoscaling,
    deprecated: false

  field :state, 6,
    type: Google.Cloud.Gkemulticloud.V1.AzureNodePool.State,
    enum: true,
    deprecated: false

  field :uid, 8, type: :string, deprecated: false
  field :reconciling, 9, type: :bool, deprecated: false

  field :create_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 12, type: :string

  field :annotations, 13,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AzureNodePool.AnnotationsEntry,
    map: true,
    deprecated: false

  field :max_pods_constraint, 21,
    type: Google.Cloud.Gkemulticloud.V1.MaxPodsConstraint,
    json_name: "maxPodsConstraint",
    deprecated: false

  field :azure_availability_zone, 23,
    type: :string,
    json_name: "azureAvailabilityZone",
    deprecated: false

  field :errors, 29,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AzureNodePoolError,
    deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AzureNodeConfig.TagsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gkemulticloud.V1.AzureNodeConfig.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gkemulticloud.V1.AzureNodeConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :vm_size, 1, type: :string, json_name: "vmSize", deprecated: false

  field :root_volume, 2,
    type: Google.Cloud.Gkemulticloud.V1.AzureDiskTemplate,
    json_name: "rootVolume",
    deprecated: false

  field :tags, 3,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AzureNodeConfig.TagsEntry,
    map: true,
    deprecated: false

  field :image_type, 8, type: :string, json_name: "imageType", deprecated: false

  field :ssh_config, 7,
    type: Google.Cloud.Gkemulticloud.V1.AzureSshConfig,
    json_name: "sshConfig",
    deprecated: false

  field :proxy_config, 9,
    type: Google.Cloud.Gkemulticloud.V1.AzureProxyConfig,
    json_name: "proxyConfig",
    deprecated: false

  field :config_encryption, 12,
    type: Google.Cloud.Gkemulticloud.V1.AzureConfigEncryption,
    json_name: "configEncryption",
    deprecated: false

  field :taints, 10,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.NodeTaint,
    deprecated: false

  field :labels, 11,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AzureNodeConfig.LabelsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AzureNodePoolAutoscaling do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :min_node_count, 1, type: :int32, json_name: "minNodeCount", deprecated: false
  field :max_node_count, 2, type: :int32, json_name: "maxNodeCount", deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AzureServerConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string

  field :valid_versions, 2,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AzureK8sVersionInfo,
    json_name: "validVersions"

  field :supported_azure_regions, 3,
    repeated: true,
    type: :string,
    json_name: "supportedAzureRegions"
end

defmodule Google.Cloud.Gkemulticloud.V1.AzureK8sVersionInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :version, 1, type: :string
end

defmodule Google.Cloud.Gkemulticloud.V1.AzureSshConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :authorized_key, 1, type: :string, json_name: "authorizedKey", deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AzureClusterResources do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network_security_group_id, 1,
    type: :string,
    json_name: "networkSecurityGroupId",
    deprecated: false

  field :control_plane_application_security_group_id, 2,
    type: :string,
    json_name: "controlPlaneApplicationSecurityGroupId",
    deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AzureClusterError do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :message, 1, type: :string
end

defmodule Google.Cloud.Gkemulticloud.V1.AzureNodePoolError do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :message, 1, type: :string
end