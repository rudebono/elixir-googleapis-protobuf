defmodule Google.Cloud.Hypercomputecluster.V1beta.NewFilestoreConfig.Tier do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TIER_UNSPECIFIED, 0
  field :ZONAL, 4
  field :REGIONAL, 6
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.NewFilestoreConfig.Protocol do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PROTOCOL_UNSPECIFIED, 0
  field :NFSV3, 1
  field :NFSV41, 2
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.NewBucketConfig.StorageClass do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STORAGE_CLASS_UNSPECIFIED, 0
  field :STANDARD, 1
  field :NEARLINE, 2
  field :COLDLINE, 3
  field :ARCHIVE, 4
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.GcsAutoclassConfig.TerminalStorageClass do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TERMINAL_STORAGE_CLASS_UNSPECIFIED, 0
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.Cluster.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.Cluster.NetworkResourcesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Hypercomputecluster.V1beta.NetworkResource
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.Cluster.StorageResourcesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Hypercomputecluster.V1beta.StorageResource
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.Cluster.ComputeResourcesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Hypercomputecluster.V1beta.ComputeResource
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.Cluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 9, type: :string, deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1beta.Cluster.LabelsEntry,
    map: true,
    deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :reconciling, 10, type: :bool, deprecated: false

  field :network_resources, 11,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1beta.Cluster.NetworkResourcesEntry,
    json_name: "networkResources",
    map: true,
    deprecated: false

  field :storage_resources, 12,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1beta.Cluster.StorageResourcesEntry,
    json_name: "storageResources",
    map: true,
    deprecated: false

  field :compute_resources, 13,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1beta.Cluster.ComputeResourcesEntry,
    json_name: "computeResources",
    map: true,
    deprecated: false

  field :orchestrator, 8,
    type: Google.Cloud.Hypercomputecluster.V1beta.Orchestrator,
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.ListClustersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.ListClustersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :clusters, 1, repeated: true, type: Google.Cloud.Hypercomputecluster.V1beta.Cluster
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.GetClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.CreateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :cluster_id, 2, type: :string, json_name: "clusterId", deprecated: false
  field :cluster, 3, type: Google.Cloud.Hypercomputecluster.V1beta.Cluster, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.UpdateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cluster, 2, type: Google.Cloud.Hypercomputecluster.V1beta.Cluster, deprecated: false

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.DeleteClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.NetworkResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :reference, 0

  field :network, 3, type: Google.Cloud.Hypercomputecluster.V1beta.NetworkReference, oneof: 0

  field :config, 2,
    type: Google.Cloud.Hypercomputecluster.V1beta.NetworkResourceConfig,
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.NetworkReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :network, 1, type: :string, deprecated: false
  field :subnetwork, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.NetworkResourceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :config, 0

  field :new_network, 3,
    type: Google.Cloud.Hypercomputecluster.V1beta.NewNetworkConfig,
    json_name: "newNetwork",
    oneof: 0,
    deprecated: false

  field :existing_network, 4,
    type: Google.Cloud.Hypercomputecluster.V1beta.ExistingNetworkConfig,
    json_name: "existingNetwork",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.NewNetworkConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :network, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.ExistingNetworkConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :network, 1, type: :string, deprecated: false
  field :subnetwork, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.StorageResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :reference, 0

  field :filestore, 1, type: Google.Cloud.Hypercomputecluster.V1beta.FilestoreReference, oneof: 0
  field :bucket, 2, type: Google.Cloud.Hypercomputecluster.V1beta.BucketReference, oneof: 0
  field :lustre, 3, type: Google.Cloud.Hypercomputecluster.V1beta.LustreReference, oneof: 0

  field :config, 4,
    type: Google.Cloud.Hypercomputecluster.V1beta.StorageResourceConfig,
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.FilestoreReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :filestore, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.BucketReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.LustreReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :lustre, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.StorageResourceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :config, 0

  field :new_filestore, 1,
    type: Google.Cloud.Hypercomputecluster.V1beta.NewFilestoreConfig,
    json_name: "newFilestore",
    oneof: 0,
    deprecated: false

  field :existing_filestore, 2,
    type: Google.Cloud.Hypercomputecluster.V1beta.ExistingFilestoreConfig,
    json_name: "existingFilestore",
    oneof: 0,
    deprecated: false

  field :new_bucket, 3,
    type: Google.Cloud.Hypercomputecluster.V1beta.NewBucketConfig,
    json_name: "newBucket",
    oneof: 0,
    deprecated: false

  field :existing_bucket, 4,
    type: Google.Cloud.Hypercomputecluster.V1beta.ExistingBucketConfig,
    json_name: "existingBucket",
    oneof: 0,
    deprecated: false

  field :new_lustre, 5,
    type: Google.Cloud.Hypercomputecluster.V1beta.NewLustreConfig,
    json_name: "newLustre",
    oneof: 0,
    deprecated: false

  field :existing_lustre, 6,
    type: Google.Cloud.Hypercomputecluster.V1beta.ExistingLustreConfig,
    json_name: "existingLustre",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.NewFilestoreConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :filestore, 1, type: :string, deprecated: false
  field :description, 4, type: :string, deprecated: false

  field :file_shares, 2,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1beta.FileShareConfig,
    json_name: "fileShares",
    deprecated: false

  field :tier, 3,
    type: Google.Cloud.Hypercomputecluster.V1beta.NewFilestoreConfig.Tier,
    enum: true,
    deprecated: false

  field :protocol, 5,
    type: Google.Cloud.Hypercomputecluster.V1beta.NewFilestoreConfig.Protocol,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.FileShareConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :capacity_gb, 1, type: :int64, json_name: "capacityGb", deprecated: false
  field :file_share, 2, type: :string, json_name: "fileShare", deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.ExistingFilestoreConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :filestore, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.NewBucketConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :option, 0

  field :autoclass, 2,
    type: Google.Cloud.Hypercomputecluster.V1beta.GcsAutoclassConfig,
    oneof: 0,
    deprecated: false

  field :storage_class, 3,
    type: Google.Cloud.Hypercomputecluster.V1beta.NewBucketConfig.StorageClass,
    json_name: "storageClass",
    enum: true,
    oneof: 0,
    deprecated: false

  field :bucket, 1, type: :string, deprecated: false

  field :hierarchical_namespace, 4,
    type: Google.Cloud.Hypercomputecluster.V1beta.GcsHierarchicalNamespaceConfig,
    json_name: "hierarchicalNamespace",
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.GcsAutoclassConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool, deprecated: false

  field :terminal_storage_class, 2,
    type: Google.Cloud.Hypercomputecluster.V1beta.GcsAutoclassConfig.TerminalStorageClass,
    json_name: "terminalStorageClass",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.GcsHierarchicalNamespaceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.ExistingBucketConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.NewLustreConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :lustre, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
  field :filesystem, 3, type: :string, deprecated: false
  field :capacity_gb, 4, type: :int64, json_name: "capacityGb", deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.ExistingLustreConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :lustre, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.ComputeResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :config, 6,
    type: Google.Cloud.Hypercomputecluster.V1beta.ComputeResourceConfig,
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.ComputeResourceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :config, 0

  field :new_on_demand_instances, 1,
    type: Google.Cloud.Hypercomputecluster.V1beta.NewOnDemandInstancesConfig,
    json_name: "newOnDemandInstances",
    oneof: 0,
    deprecated: false

  field :new_spot_instances, 2,
    type: Google.Cloud.Hypercomputecluster.V1beta.NewSpotInstancesConfig,
    json_name: "newSpotInstances",
    oneof: 0,
    deprecated: false

  field :new_reserved_instances, 3,
    type: Google.Cloud.Hypercomputecluster.V1beta.NewReservedInstancesConfig,
    json_name: "newReservedInstances",
    oneof: 0,
    deprecated: false

  field :new_flex_start_instances, 5,
    type: Google.Cloud.Hypercomputecluster.V1beta.NewFlexStartInstancesConfig,
    json_name: "newFlexStartInstances",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.NewOnDemandInstancesConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :zone, 1, type: :string, deprecated: false
  field :machine_type, 2, type: :string, json_name: "machineType", deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.NewSpotInstancesConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :zone, 1, type: :string, deprecated: false
  field :machine_type, 2, type: :string, json_name: "machineType", deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.NewReservedInstancesConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  field :reservation, 1, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.NewFlexStartInstancesConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :zone, 1, type: :string, deprecated: false
  field :machine_type, 2, type: :string, json_name: "machineType", deprecated: false

  field :max_duration, 3,
    type: Google.Protobuf.Duration,
    json_name: "maxDuration",
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.BootDisk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: :string, deprecated: false
  field :size_gb, 2, type: :int64, json_name: "sizeGb", deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.Orchestrator do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :option, 0

  field :slurm, 1,
    type: Google.Cloud.Hypercomputecluster.V1beta.SlurmOrchestrator,
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.SlurmOrchestrator do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :login_nodes, 6,
    type: Google.Cloud.Hypercomputecluster.V1beta.SlurmLoginNodes,
    json_name: "loginNodes",
    deprecated: false

  field :node_sets, 1,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1beta.SlurmNodeSet,
    json_name: "nodeSets",
    deprecated: false

  field :partitions, 2,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1beta.SlurmPartition,
    deprecated: false

  field :default_partition, 3, type: :string, json_name: "defaultPartition", deprecated: false

  field :prolog_bash_scripts, 4,
    repeated: true,
    type: :string,
    json_name: "prologBashScripts",
    deprecated: false

  field :epilog_bash_scripts, 5,
    repeated: true,
    type: :string,
    json_name: "epilogBashScripts",
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.SlurmNodeSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :type, 0

  field :compute_instance, 17,
    type: Google.Cloud.Hypercomputecluster.V1beta.ComputeInstanceSlurmNodeSet,
    json_name: "computeInstance",
    oneof: 0,
    deprecated: false

  field :id, 1, type: :string, deprecated: false
  field :compute_id, 16, type: :string, json_name: "computeId", deprecated: false

  field :storage_configs, 3,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1beta.StorageConfig,
    json_name: "storageConfigs",
    deprecated: false

  field :static_node_count, 4, type: :int64, json_name: "staticNodeCount", deprecated: false

  field :max_dynamic_node_count, 5,
    type: :int64,
    json_name: "maxDynamicNodeCount",
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.ComputeInstanceSlurmNodeSet.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.ComputeInstanceSlurmNodeSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :startup_script, 1, type: :string, json_name: "startupScript", deprecated: false

  field :labels, 2,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1beta.ComputeInstanceSlurmNodeSet.LabelsEntry,
    map: true,
    deprecated: false

  field :boot_disk, 3,
    type: Google.Cloud.Hypercomputecluster.V1beta.BootDisk,
    json_name: "bootDisk",
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.SlurmPartition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false

  field :node_set_ids, 2,
    repeated: true,
    type: :string,
    json_name: "nodeSetIds",
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.SlurmLoginNodes.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.SlurmLoginNodes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :count, 3, type: :int64, deprecated: false
  field :zone, 2, type: :string, deprecated: false
  field :machine_type, 1, type: :string, json_name: "machineType", deprecated: false
  field :startup_script, 5, type: :string, json_name: "startupScript", deprecated: false
  field :enable_os_login, 6, type: :bool, json_name: "enableOsLogin", deprecated: false
  field :enable_public_ips, 7, type: :bool, json_name: "enablePublicIps", deprecated: false

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1beta.SlurmLoginNodes.LabelsEntry,
    map: true,
    deprecated: false

  field :storage_configs, 12,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1beta.StorageConfig,
    json_name: "storageConfigs",
    deprecated: false

  field :instances, 10,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1beta.ComputeInstance,
    deprecated: false

  field :boot_disk, 13,
    type: Google.Cloud.Hypercomputecluster.V1beta.BootDisk,
    json_name: "bootDisk",
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.StorageConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :local_mount, 2, type: :string, json_name: "localMount", deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.ComputeInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.HypercomputeCluster.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.hypercomputecluster.v1beta.HypercomputeCluster",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListClusters,
      Google.Cloud.Hypercomputecluster.V1beta.ListClustersRequest,
      Google.Cloud.Hypercomputecluster.V1beta.ListClustersResponse

  rpc :GetCluster,
      Google.Cloud.Hypercomputecluster.V1beta.GetClusterRequest,
      Google.Cloud.Hypercomputecluster.V1beta.Cluster

  rpc :CreateCluster,
      Google.Cloud.Hypercomputecluster.V1beta.CreateClusterRequest,
      Google.Longrunning.Operation

  rpc :UpdateCluster,
      Google.Cloud.Hypercomputecluster.V1beta.UpdateClusterRequest,
      Google.Longrunning.Operation

  rpc :DeleteCluster,
      Google.Cloud.Hypercomputecluster.V1beta.DeleteClusterRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Hypercomputecluster.V1beta.HypercomputeCluster.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Hypercomputecluster.V1beta.HypercomputeCluster.Service
end
