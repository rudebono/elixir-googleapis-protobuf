defmodule Google.Cloud.Hypercomputecluster.V1alpha.NewFilestoreConfig.Tier do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TIER_UNSPECIFIED, 0
  field :ZONAL, 4
  field :REGIONAL, 6
  field :BASIC_HDD, 1
  field :BASIC_SSD, 2
  field :HIGH_SCALE_SSD, 3
  field :ENTERPRISE, 5
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.NewFilestoreConfig.Protocol do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PROTOCOL_UNSPECIFIED, 0
  field :NFSV3, 1
  field :NFSV41, 2
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.NewBucketConfig.StorageClass do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STORAGE_CLASS_UNSPECIFIED, 0
  field :STANDARD, 1
  field :NEARLINE, 2
  field :COLDLINE, 3
  field :ARCHIVE, 4
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.GcsAutoclassConfig.TerminalStorageClass do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TERMINAL_STORAGE_CLASS_UNSPECIFIED, 0
  field :TERMINAL_STORAGE_CLASS_NEARLINE, 1
  field :TERMINAL_STORAGE_CLASS_ARCHIVE, 2
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.NewSpotInstancesConfig.TerminationAction do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TERMINATION_ACTION_UNSPECIFIED, 0
  field :STOP, 1
  field :DELETE, 2
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.NewReservedInstancesConfig.ReservationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :RESERVATION_TYPE_UNSPECIFIED, 0
  field :NO_RESERVATION, 1
  field :ANY_RESERVATION, 2
  field :SPECIFIC_RESERVATION, 3
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.NewFlexStartInstancesConfig.TerminationAction do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TERMINATION_ACTION_UNSPECIFIED, 0
  field :STOP, 1
  field :DELETE, 2
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.SlurmOrchestrator.SlurmConfig.PrologFlag do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PROLOG_FLAG_UNSPECIFIED, 0
  field :ALLOC, 1
  field :CONTAIN, 2
  field :DEFER_BATCH, 3
  field :NO_HOLD, 4
  field :FORCE_REQUEUE_ON_FAIL, 5
  field :RUN_IN_JOB, 6
  field :SERIAL, 7
  field :X11, 8
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.SlurmOrchestrator.SlurmConfig.AccountingStorageEnforceFlag do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ACCOUNTING_STORAGE_ENFORCE_FLAG_UNSPECIFIED, 0
  field :ALL, 1
  field :ASSOCIATIONS, 2
  field :LIMITS, 3
  field :NOJOBS, 4
  field :NOSTEPS, 5
  field :QOS, 6
  field :SAFE, 7
  field :WCKEYS, 8
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.SlurmOrchestrator.SlurmConfig.PriorityType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PRIORITY_TYPE_UNSPECIFIED, 0
  field :PRIORITY_BASIC, 1
  field :PRIORITY_MULTIFACTOR, 2
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.SlurmOrchestrator.SlurmConfig.PreemptMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PREEMPT_MODE_UNSPECIFIED, 0
  field :OFF, 1
  field :CANCEL, 2
  field :GANG, 3
  field :REQUEUE, 4
  field :SUSPEND, 5
  field :PRIORITY, 6
  field :WITHIN, 7
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.SlurmOrchestrator.SlurmConfig.PreemptType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PREEMPT_TYPE_UNSPECIFIED, 0
  field :PREEMPT_NONE, 1
  field :PREEMPT_PARTITION_PRIO, 2
  field :PREEMPT_QOS, 3
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.FilestoreInitializeParams.Tier do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TIER_UNSPECIFIED, 0
  field :TIER_BASIC_HDD, 1
  field :TIER_BASIC_SSD, 2
  field :TIER_HIGH_SCALE_SSD, 3
  field :TIER_ZONAL, 4
  field :TIER_ENTERPRISE, 5
  field :TIER_REGIONAL, 6
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.FilestoreInitializeParams.Protocol do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PROTOCOL_UNSPECIFIED, 0
  field :PROTOCOL_NFSV3, 1
  field :PROTOCOL_NFSV41, 2
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.GcsInitializeParams.StorageClass do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STORAGE_CLASS_UNSPECIFIED, 0
  field :STORAGE_CLASS_STANDARD, 1
  field :STORAGE_CLASS_NEARLINE, 2
  field :STORAGE_CLASS_COLDLINE, 3
  field :STORAGE_CLASS_ARCHIVE, 4
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.ResourceRequest.ProvisioningModel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PROVISIONING_MODEL_UNSPECIFIED, 0
  field :PROVISIONING_MODEL_STANDARD, 1
  field :PROVISIONING_MODEL_SPOT, 2
  field :PROVISIONING_MODEL_FLEX_START, 3
  field :PROVISIONING_MODEL_RESERVATION_BOUND, 4
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.ResourceRequest.TerminationAction do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TERMINATION_ACTION_UNSPECIFIED, 0
  field :TERMINATION_ACTION_STOP, 1
  field :TERMINATION_ACTION_DELETE, 2
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.NewDWSFlexInstancesConfig.TerminationAction do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TERMINATION_ACTION_UNSPECIFIED, 0
  field :STOP, 1
  field :DELETE, 2
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.ReservationAffinity.ReservationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :RESERVATION_TYPE_UNSPECIFIED, 0
  field :RESERVATION_TYPE_NO_RESERVATION, 1
  field :RESERVATION_TYPE_ANY_RESERVATION, 2
  field :RESERVATION_TYPE_SPECIFIC_RESERVATION, 3
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.Cluster.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.Cluster.NetworkResourcesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Hypercomputecluster.V1alpha.NetworkResource
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.Cluster.StorageResourcesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Hypercomputecluster.V1alpha.StorageResource
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.Cluster.ComputeResourcesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Hypercomputecluster.V1alpha.ComputeResource
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.Cluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 9, type: :string, deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.Cluster.LabelsEntry,
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
    type: Google.Cloud.Hypercomputecluster.V1alpha.Cluster.NetworkResourcesEntry,
    json_name: "networkResources",
    map: true,
    deprecated: false

  field :storage_resources, 12,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.Cluster.StorageResourcesEntry,
    json_name: "storageResources",
    map: true,
    deprecated: false

  field :compute_resources, 13,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.Cluster.ComputeResourcesEntry,
    json_name: "computeResources",
    map: true,
    deprecated: false

  field :orchestrator, 8,
    type: Google.Cloud.Hypercomputecluster.V1alpha.Orchestrator,
    deprecated: false

  field :networks, 5,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.Network,
    deprecated: true

  field :storages, 6,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.Storage,
    deprecated: true

  field :compute, 7, type: Google.Cloud.Hypercomputecluster.V1alpha.Compute, deprecated: true
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.ListClustersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.ListClustersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :clusters, 1, repeated: true, type: Google.Cloud.Hypercomputecluster.V1alpha.Cluster
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.GetClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.CreateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :cluster_id, 2, type: :string, json_name: "clusterId", deprecated: false
  field :cluster, 3, type: Google.Cloud.Hypercomputecluster.V1alpha.Cluster, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.UpdateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cluster, 2, type: Google.Cloud.Hypercomputecluster.V1alpha.Cluster, deprecated: false

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.DeleteClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.NetworkResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :reference, 0

  field :network, 3, type: Google.Cloud.Hypercomputecluster.V1alpha.NetworkReference, oneof: 0

  field :compute_network, 1,
    type: Google.Cloud.Hypercomputecluster.V1alpha.ComputeNetworkReference,
    json_name: "computeNetwork",
    oneof: 0,
    deprecated: true

  field :config, 2,
    type: Google.Cloud.Hypercomputecluster.V1alpha.NetworkResourceConfig,
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.NetworkReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :network, 1, type: :string, deprecated: false
  field :subnetwork, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.NetworkResourceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :config, 0

  field :new_network, 3,
    type: Google.Cloud.Hypercomputecluster.V1alpha.NewNetworkConfig,
    json_name: "newNetwork",
    oneof: 0,
    deprecated: false

  field :existing_network, 4,
    type: Google.Cloud.Hypercomputecluster.V1alpha.ExistingNetworkConfig,
    json_name: "existingNetwork",
    oneof: 0,
    deprecated: false

  field :new_compute_network, 1,
    type: Google.Cloud.Hypercomputecluster.V1alpha.NewComputeNetworkConfig,
    json_name: "newComputeNetwork",
    oneof: 0,
    deprecated: true

  field :existing_compute_network, 2,
    type: Google.Cloud.Hypercomputecluster.V1alpha.ExistingComputeNetworkConfig,
    json_name: "existingComputeNetwork",
    oneof: 0,
    deprecated: true
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.NewNetworkConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :network, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.ExistingNetworkConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :network, 1, type: :string, deprecated: false
  field :subnetwork, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.StorageResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :reference, 0

  field :filestore, 1, type: Google.Cloud.Hypercomputecluster.V1alpha.FilestoreReference, oneof: 0
  field :bucket, 2, type: Google.Cloud.Hypercomputecluster.V1alpha.BucketReference, oneof: 0
  field :lustre, 3, type: Google.Cloud.Hypercomputecluster.V1alpha.LustreReference, oneof: 0

  field :config, 4,
    type: Google.Cloud.Hypercomputecluster.V1alpha.StorageResourceConfig,
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.FilestoreReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :filestore, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.BucketReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.LustreReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :lustre, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.StorageResourceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :config, 0

  field :new_filestore, 1,
    type: Google.Cloud.Hypercomputecluster.V1alpha.NewFilestoreConfig,
    json_name: "newFilestore",
    oneof: 0,
    deprecated: false

  field :existing_filestore, 2,
    type: Google.Cloud.Hypercomputecluster.V1alpha.ExistingFilestoreConfig,
    json_name: "existingFilestore",
    oneof: 0,
    deprecated: false

  field :new_bucket, 3,
    type: Google.Cloud.Hypercomputecluster.V1alpha.NewBucketConfig,
    json_name: "newBucket",
    oneof: 0,
    deprecated: false

  field :existing_bucket, 4,
    type: Google.Cloud.Hypercomputecluster.V1alpha.ExistingBucketConfig,
    json_name: "existingBucket",
    oneof: 0,
    deprecated: false

  field :new_lustre, 5,
    type: Google.Cloud.Hypercomputecluster.V1alpha.NewLustreConfig,
    json_name: "newLustre",
    oneof: 0,
    deprecated: false

  field :existing_lustre, 6,
    type: Google.Cloud.Hypercomputecluster.V1alpha.ExistingLustreConfig,
    json_name: "existingLustre",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.NewFilestoreConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :filestore, 1, type: :string, deprecated: false
  field :description, 4, type: :string, deprecated: false

  field :file_shares, 2,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.FileShareConfig,
    json_name: "fileShares",
    deprecated: false

  field :tier, 3,
    type: Google.Cloud.Hypercomputecluster.V1alpha.NewFilestoreConfig.Tier,
    enum: true,
    deprecated: false

  field :protocol, 5,
    type: Google.Cloud.Hypercomputecluster.V1alpha.NewFilestoreConfig.Protocol,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.FileShareConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :capacity_gb, 1, type: :int64, json_name: "capacityGb", deprecated: false
  field :file_share, 2, type: :string, json_name: "fileShare", deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.ExistingFilestoreConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :filestore, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.NewBucketConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :option, 0

  field :autoclass, 2,
    type: Google.Cloud.Hypercomputecluster.V1alpha.GcsAutoclassConfig,
    oneof: 0,
    deprecated: false

  field :storage_class, 3,
    type: Google.Cloud.Hypercomputecluster.V1alpha.NewBucketConfig.StorageClass,
    json_name: "storageClass",
    enum: true,
    oneof: 0,
    deprecated: false

  field :bucket, 1, type: :string, deprecated: false

  field :hierarchical_namespace, 4,
    type: Google.Cloud.Hypercomputecluster.V1alpha.GcsHierarchicalNamespaceConfig,
    json_name: "hierarchicalNamespace",
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.GcsAutoclassConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool, deprecated: false

  field :terminal_storage_class, 2,
    type: Google.Cloud.Hypercomputecluster.V1alpha.GcsAutoclassConfig.TerminalStorageClass,
    json_name: "terminalStorageClass",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.GcsHierarchicalNamespaceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.ExistingBucketConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.NewLustreConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :lustre, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
  field :filesystem, 3, type: :string, deprecated: false
  field :capacity_gb, 4, type: :int64, json_name: "capacityGb", deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.ExistingLustreConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :lustre, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.ComputeResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :config_oneof, 0

  field :new_on_demand_instances, 2,
    type: Google.Cloud.Hypercomputecluster.V1alpha.NewOnDemandInstancesConfig,
    json_name: "newOnDemandInstances",
    oneof: 0,
    deprecated: true

  field :new_spot_instances, 3,
    type: Google.Cloud.Hypercomputecluster.V1alpha.NewSpotInstancesConfig,
    json_name: "newSpotInstances",
    oneof: 0,
    deprecated: true

  field :new_reserved_instances, 4,
    type: Google.Cloud.Hypercomputecluster.V1alpha.NewReservedInstancesConfig,
    json_name: "newReservedInstances",
    oneof: 0,
    deprecated: true

  field :new_dws_flex_instances, 5,
    type: Google.Cloud.Hypercomputecluster.V1alpha.NewDWSFlexInstancesConfig,
    json_name: "newDwsFlexInstances",
    oneof: 0,
    deprecated: true

  field :config, 6,
    type: Google.Cloud.Hypercomputecluster.V1alpha.ComputeResourceConfig,
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.ComputeResourceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :config, 0

  field :new_on_demand_instances, 1,
    type: Google.Cloud.Hypercomputecluster.V1alpha.NewOnDemandInstancesConfig,
    json_name: "newOnDemandInstances",
    oneof: 0,
    deprecated: false

  field :new_spot_instances, 2,
    type: Google.Cloud.Hypercomputecluster.V1alpha.NewSpotInstancesConfig,
    json_name: "newSpotInstances",
    oneof: 0,
    deprecated: false

  field :new_reserved_instances, 3,
    type: Google.Cloud.Hypercomputecluster.V1alpha.NewReservedInstancesConfig,
    json_name: "newReservedInstances",
    oneof: 0,
    deprecated: false

  field :new_dws_flex_instances, 4,
    type: Google.Cloud.Hypercomputecluster.V1alpha.NewDWSFlexInstancesConfig,
    json_name: "newDwsFlexInstances",
    oneof: 0,
    deprecated: false

  field :new_flex_start_instances, 5,
    type: Google.Cloud.Hypercomputecluster.V1alpha.NewFlexStartInstancesConfig,
    json_name: "newFlexStartInstances",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.NewOnDemandInstancesConfig.AtmTagsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.NewOnDemandInstancesConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :zone, 1, type: :string, deprecated: false
  field :machine_type, 2, type: :string, json_name: "machineType", deprecated: false

  field :atm_tags, 3,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.NewOnDemandInstancesConfig.AtmTagsEntry,
    json_name: "atmTags",
    map: true,
    deprecated: false

  field :boot_disk, 6,
    type: Google.Cloud.Hypercomputecluster.V1alpha.Disk,
    json_name: "bootDisk",
    deprecated: true
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.NewSpotInstancesConfig.AtmTagsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.NewSpotInstancesConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :zone, 1, type: :string, deprecated: false
  field :machine_type, 2, type: :string, json_name: "machineType", deprecated: false

  field :atm_tags, 3,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.NewSpotInstancesConfig.AtmTagsEntry,
    json_name: "atmTags",
    map: true,
    deprecated: false

  field :boot_disk, 4,
    type: Google.Cloud.Hypercomputecluster.V1alpha.Disk,
    json_name: "bootDisk",
    deprecated: true

  field :termination_action, 5,
    type: Google.Cloud.Hypercomputecluster.V1alpha.NewSpotInstancesConfig.TerminationAction,
    json_name: "terminationAction",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.NewReservedInstancesConfig.AtmTagsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.NewReservedInstancesConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :reservation, 1, type: :string, deprecated: false

  field :atm_tags, 2,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.NewReservedInstancesConfig.AtmTagsEntry,
    json_name: "atmTags",
    map: true,
    deprecated: false

  field :zone, 3, type: :string, deprecated: true
  field :machine_type, 4, type: :string, json_name: "machineType", deprecated: true

  field :type, 5,
    type: Google.Cloud.Hypercomputecluster.V1alpha.NewReservedInstancesConfig.ReservationType,
    enum: true,
    deprecated: true

  field :boot_disk, 6,
    type: Google.Cloud.Hypercomputecluster.V1alpha.Disk,
    json_name: "bootDisk",
    deprecated: true
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.NewFlexStartInstancesConfig.AtmTagsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.NewFlexStartInstancesConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :zone, 1, type: :string, deprecated: false
  field :machine_type, 2, type: :string, json_name: "machineType", deprecated: false

  field :max_duration, 3,
    type: Google.Protobuf.Duration,
    json_name: "maxDuration",
    deprecated: false

  field :atm_tags, 4,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.NewFlexStartInstancesConfig.AtmTagsEntry,
    json_name: "atmTags",
    map: true,
    deprecated: false

  field :termination_action, 5,
    type: Google.Cloud.Hypercomputecluster.V1alpha.NewFlexStartInstancesConfig.TerminationAction,
    json_name: "terminationAction",
    enum: true,
    deprecated: true

  field :boot_disk, 6,
    type: Google.Cloud.Hypercomputecluster.V1alpha.Disk,
    json_name: "bootDisk",
    deprecated: true
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.Disk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: :string, deprecated: false
  field :size_gb, 2, type: :int64, json_name: "sizeGb", deprecated: false
  field :boot, 3, type: :bool, deprecated: false
  field :source_image, 4, type: :string, json_name: "sourceImage", deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.BootDisk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: :string, deprecated: false
  field :size_gb, 2, type: :int64, json_name: "sizeGb", deprecated: false
  field :image, 3, type: :string, deprecated: false
  field :effective_image, 4, type: :string, json_name: "effectiveImage", deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.AtmTag do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string, deprecated: false
  field :value, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.Orchestrator do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :option, 0

  field :slurm, 1,
    type: Google.Cloud.Hypercomputecluster.V1alpha.SlurmOrchestrator,
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.SlurmOrchestrator.SlurmConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :requeue_exit_codes, 1,
    repeated: true,
    type: :int64,
    json_name: "requeueExitCodes",
    deprecated: false

  field :requeue_hold_exit_codes, 2,
    repeated: true,
    type: :int64,
    json_name: "requeueHoldExitCodes",
    deprecated: false

  field :prolog_flags, 3,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.SlurmOrchestrator.SlurmConfig.PrologFlag,
    json_name: "prologFlags",
    enum: true,
    deprecated: false

  field :prolog_epilog_timeout, 4,
    type: Google.Protobuf.Duration,
    json_name: "prologEpilogTimeout",
    deprecated: false

  field :accounting_storage_enforce_flags, 5,
    repeated: true,
    type:
      Google.Cloud.Hypercomputecluster.V1alpha.SlurmOrchestrator.SlurmConfig.AccountingStorageEnforceFlag,
    json_name: "accountingStorageEnforceFlags",
    enum: true,
    deprecated: false

  field :priority_type, 6,
    type: Google.Cloud.Hypercomputecluster.V1alpha.SlurmOrchestrator.SlurmConfig.PriorityType,
    json_name: "priorityType",
    enum: true,
    deprecated: false

  field :priority_weight_age, 7, type: :int64, json_name: "priorityWeightAge", deprecated: false

  field :priority_weight_assoc, 8,
    type: :int64,
    json_name: "priorityWeightAssoc",
    deprecated: false

  field :priority_weight_fairshare, 9,
    type: :int64,
    json_name: "priorityWeightFairshare",
    deprecated: false

  field :priority_weight_job_size, 10,
    type: :int64,
    json_name: "priorityWeightJobSize",
    deprecated: false

  field :priority_weight_partition, 11,
    type: :int64,
    json_name: "priorityWeightPartition",
    deprecated: false

  field :priority_weight_qos, 12, type: :int64, json_name: "priorityWeightQos", deprecated: false

  field :priority_weight_tres, 13,
    type: :string,
    json_name: "priorityWeightTres",
    deprecated: false

  field :preempt_mode, 14,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.SlurmOrchestrator.SlurmConfig.PreemptMode,
    json_name: "preemptMode",
    enum: true,
    deprecated: false

  field :preempt_type, 15,
    type: Google.Cloud.Hypercomputecluster.V1alpha.SlurmOrchestrator.SlurmConfig.PreemptType,
    json_name: "preemptType",
    enum: true,
    deprecated: false

  field :preempt_exempt_time, 16, type: :string, json_name: "preemptExemptTime", deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.SlurmOrchestrator do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :login_nodes, 6,
    type: Google.Cloud.Hypercomputecluster.V1alpha.SlurmLoginNodes,
    json_name: "loginNodes",
    deprecated: false

  field :node_sets, 1,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.SlurmNodeSet,
    json_name: "nodeSets",
    deprecated: false

  field :partitions, 2,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.SlurmPartition,
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

  field :config, 7,
    type: Google.Cloud.Hypercomputecluster.V1alpha.SlurmOrchestrator.SlurmConfig,
    deprecated: false

  field :task_prolog_bash_scripts, 8,
    repeated: true,
    type: :string,
    json_name: "taskPrologBashScripts",
    deprecated: false

  field :task_epilog_bash_scripts, 9,
    repeated: true,
    type: :string,
    json_name: "taskEpilogBashScripts",
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.SlurmNodeSet.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.SlurmNodeSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :type, 0

  field :compute_instance, 17,
    type: Google.Cloud.Hypercomputecluster.V1alpha.ComputeInstanceSlurmNodeSet,
    json_name: "computeInstance",
    oneof: 0,
    deprecated: false

  field :container_node_pool, 18,
    type: Google.Cloud.Hypercomputecluster.V1alpha.ContainerNodePoolSlurmNodeSet,
    json_name: "containerNodePool",
    oneof: 0,
    deprecated: false

  field :id, 1, type: :string, deprecated: false
  field :compute_id, 16, type: :string, json_name: "computeId", deprecated: false

  field :storage_configs, 3,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.StorageConfig,
    json_name: "storageConfigs",
    deprecated: false

  field :static_node_count, 4, type: :int64, json_name: "staticNodeCount", deprecated: false

  field :max_dynamic_node_count, 5,
    type: :int64,
    json_name: "maxDynamicNodeCount",
    deprecated: false

  field :service_account, 13,
    type: Google.Cloud.Hypercomputecluster.V1alpha.ServiceAccount,
    json_name: "serviceAccount",
    deprecated: false

  field :boot_disk, 15,
    type: Google.Cloud.Hypercomputecluster.V1alpha.Disk,
    json_name: "bootDisk",
    deprecated: false

  field :startup_script, 7, type: :string, json_name: "startupScript", deprecated: false
  field :resource_request_id, 2, type: :string, json_name: "resourceRequestId", deprecated: false
  field :enable_os_login, 9, type: :bool, json_name: "enableOsLogin", deprecated: false
  field :can_ip_forward, 10, type: :bool, json_name: "canIpForward", deprecated: false
  field :enable_public_ips, 11, type: :bool, json_name: "enablePublicIps", deprecated: false

  field :labels, 12,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.SlurmNodeSet.LabelsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.ComputeInstanceSlurmNodeSet.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.ComputeInstanceSlurmNodeSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :startup_script, 1, type: :string, json_name: "startupScript", deprecated: false

  field :labels, 2,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.ComputeInstanceSlurmNodeSet.LabelsEntry,
    map: true,
    deprecated: false

  field :boot_disk, 3,
    type: Google.Cloud.Hypercomputecluster.V1alpha.BootDisk,
    json_name: "bootDisk",
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.ContainerNodePoolSlurmNodeSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.SlurmPartition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false

  field :node_set_ids, 2,
    repeated: true,
    type: :string,
    json_name: "nodeSetIds",
    deprecated: false

  field :exclusive, 3, type: :bool, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.SlurmLoginNodes.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.SlurmLoginNodes do
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
    type: Google.Cloud.Hypercomputecluster.V1alpha.SlurmLoginNodes.LabelsEntry,
    map: true,
    deprecated: false

  field :storage_configs, 12,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.StorageConfig,
    json_name: "storageConfigs",
    deprecated: false

  field :instances, 10,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.ComputeInstance,
    deprecated: false

  field :disks, 4,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.Disk,
    deprecated: false

  field :service_account, 9,
    type: Google.Cloud.Hypercomputecluster.V1alpha.ServiceAccount,
    json_name: "serviceAccount",
    deprecated: false

  field :boot_disk, 13,
    type: Google.Cloud.Hypercomputecluster.V1alpha.BootDisk,
    json_name: "bootDisk",
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.ServiceAccount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :email, 1, type: :string, deprecated: false
  field :scopes, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.StorageConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :local_mount, 2, type: :string, json_name: "localMount", deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.ComputeInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.Network do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  field :initialize_params, 2,
    type: Google.Cloud.Hypercomputecluster.V1alpha.NetworkInitializeParams,
    json_name: "initializeParams",
    oneof: 0,
    deprecated: false

  field :network_source, 3,
    type: Google.Cloud.Hypercomputecluster.V1alpha.NetworkSource,
    json_name: "networkSource",
    oneof: 0,
    deprecated: false

  field :network, 1, type: :string, deprecated: false
  field :subnetwork, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.NetworkInitializeParams do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :network, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.NetworkSource do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :network, 1, type: :string, deprecated: false
  field :subnetwork, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.ComputeNetworkReference do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :network, 1, type: :string, deprecated: false
  field :subnetwork, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.NewComputeNetworkConfig do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :network, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.ExistingComputeNetworkConfig do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :network, 1, type: :string, deprecated: false
  field :subnetwork, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.Storage do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  field :initialize_params, 2,
    type: Google.Cloud.Hypercomputecluster.V1alpha.StorageInitializeParams,
    json_name: "initializeParams",
    oneof: 0,
    deprecated: false

  field :storage_source, 3,
    type: Google.Cloud.Hypercomputecluster.V1alpha.StorageSource,
    json_name: "storageSource",
    oneof: 0,
    deprecated: false

  field :id, 4, type: :string, deprecated: false
  field :storage, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.StorageInitializeParams do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :option, 0

  field :filestore, 1,
    type: Google.Cloud.Hypercomputecluster.V1alpha.FilestoreInitializeParams,
    oneof: 0

  field :gcs, 2, type: Google.Cloud.Hypercomputecluster.V1alpha.GcsInitializeParams, oneof: 0

  field :lustre, 3,
    type: Google.Cloud.Hypercomputecluster.V1alpha.LustreInitializeParams,
    oneof: 0
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.FilestoreInitializeParams do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :file_shares, 1,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.FileShareConfig,
    json_name: "fileShares",
    deprecated: false

  field :tier, 2,
    type: Google.Cloud.Hypercomputecluster.V1alpha.FilestoreInitializeParams.Tier,
    enum: true,
    deprecated: false

  field :filestore, 3, type: :string, deprecated: false
  field :description, 4, type: :string, deprecated: false

  field :protocol, 5,
    type: Google.Cloud.Hypercomputecluster.V1alpha.FilestoreInitializeParams.Protocol,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.GcsInitializeParams do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :option, 0

  field :autoclass, 2, type: Google.Cloud.Hypercomputecluster.V1alpha.GcsAutoclassConfig, oneof: 0

  field :storage_class, 3,
    type: Google.Cloud.Hypercomputecluster.V1alpha.GcsInitializeParams.StorageClass,
    json_name: "storageClass",
    enum: true,
    oneof: 0

  field :bucket, 1, type: :string, deprecated: false

  field :hierarchical_namespace, 4,
    type: Google.Cloud.Hypercomputecluster.V1alpha.GcsHierarchicalNamespaceConfig,
    json_name: "hierarchicalNamespace",
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.LustreInitializeParams do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :lustre, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
  field :filesystem, 3, type: :string, deprecated: false
  field :capacity_gb, 4, type: :int64, json_name: "capacityGb", deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.StorageSource do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :option, 0

  field :filestore, 1, type: :string, oneof: 0, deprecated: false
  field :bucket, 2, type: :string, oneof: 0, deprecated: false
  field :lustre, 3, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.Compute do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_requests, 1,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.ResourceRequest,
    json_name: "resourceRequests",
    deprecated: false

  field :atm_tags, 2,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.AtmTag,
    json_name: "atmTags",
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.ResourceRequest do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :zone, 2, type: :string, deprecated: false
  field :machine_type, 3, type: :string, json_name: "machineType", deprecated: false

  field :guest_accelerators, 4,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.GuestAccelerator,
    json_name: "guestAccelerators",
    deprecated: false

  field :disks, 5,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.Disk,
    deprecated: false

  field :max_run_duration, 6, type: :int64, json_name: "maxRunDuration", deprecated: false

  field :provisioning_model, 7,
    type: Google.Cloud.Hypercomputecluster.V1alpha.ResourceRequest.ProvisioningModel,
    json_name: "provisioningModel",
    enum: true,
    deprecated: false

  field :reservation_affinity, 8,
    type: Google.Cloud.Hypercomputecluster.V1alpha.ReservationAffinity,
    json_name: "reservationAffinity",
    deprecated: false

  field :termination_action, 9,
    type: Google.Cloud.Hypercomputecluster.V1alpha.ResourceRequest.TerminationAction,
    json_name: "terminationAction",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.GuestAccelerator do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :accelerator_type, 1, type: :string, json_name: "acceleratorType", deprecated: false
  field :count, 2, type: :int64, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.NewDWSFlexInstancesConfig.AtmTagsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.NewDWSFlexInstancesConfig do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :zone, 1, type: :string, deprecated: false
  field :machine_type, 2, type: :string, json_name: "machineType", deprecated: false

  field :max_duration, 3,
    type: Google.Protobuf.Duration,
    json_name: "maxDuration",
    deprecated: false

  field :atm_tags, 4,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.NewDWSFlexInstancesConfig.AtmTagsEntry,
    json_name: "atmTags",
    map: true,
    deprecated: false

  field :termination_action, 5,
    type: Google.Cloud.Hypercomputecluster.V1alpha.NewDWSFlexInstancesConfig.TerminationAction,
    json_name: "terminationAction",
    enum: true,
    deprecated: true

  field :boot_disk, 6,
    type: Google.Cloud.Hypercomputecluster.V1alpha.Disk,
    json_name: "bootDisk",
    deprecated: true
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.ReservationAffinity do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1,
    type: Google.Cloud.Hypercomputecluster.V1alpha.ReservationAffinity.ReservationType,
    enum: true,
    deprecated: true

  field :key, 2, type: :string, deprecated: true
  field :values, 3, repeated: true, type: :string, deprecated: true
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.HypercomputeCluster.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.hypercomputecluster.v1alpha.HypercomputeCluster",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListClusters,
      Google.Cloud.Hypercomputecluster.V1alpha.ListClustersRequest,
      Google.Cloud.Hypercomputecluster.V1alpha.ListClustersResponse

  rpc :GetCluster,
      Google.Cloud.Hypercomputecluster.V1alpha.GetClusterRequest,
      Google.Cloud.Hypercomputecluster.V1alpha.Cluster

  rpc :CreateCluster,
      Google.Cloud.Hypercomputecluster.V1alpha.CreateClusterRequest,
      Google.Longrunning.Operation

  rpc :UpdateCluster,
      Google.Cloud.Hypercomputecluster.V1alpha.UpdateClusterRequest,
      Google.Longrunning.Operation

  rpc :DeleteCluster,
      Google.Cloud.Hypercomputecluster.V1alpha.DeleteClusterRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.HypercomputeCluster.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Hypercomputecluster.V1alpha.HypercomputeCluster.Service
end
