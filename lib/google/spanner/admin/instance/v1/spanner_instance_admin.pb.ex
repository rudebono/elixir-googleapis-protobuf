defmodule Google.Spanner.Admin.Instance.V1.ReplicaInfo.ReplicaType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :READ_WRITE, 1
  field :READ_ONLY, 2
  field :WITNESS, 3
end

defmodule Google.Spanner.Admin.Instance.V1.InstanceConfig.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :GOOGLE_MANAGED, 1
  field :USER_MANAGED, 2
end

defmodule Google.Spanner.Admin.Instance.V1.InstanceConfig.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
end

defmodule Google.Spanner.Admin.Instance.V1.InstanceConfig.FreeInstanceAvailability do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :FREE_INSTANCE_AVAILABILITY_UNSPECIFIED, 0
  field :AVAILABLE, 1
  field :UNSUPPORTED, 2
  field :DISABLED, 3
  field :QUOTA_EXCEEDED, 4
end

defmodule Google.Spanner.Admin.Instance.V1.InstanceConfig.QuorumType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :QUORUM_TYPE_UNSPECIFIED, 0
  field :REGION, 1
  field :DUAL_REGION, 2
  field :MULTI_REGION, 3
end

defmodule Google.Spanner.Admin.Instance.V1.Instance.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
end

defmodule Google.Spanner.Admin.Instance.V1.Instance.InstanceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :INSTANCE_TYPE_UNSPECIFIED, 0
  field :PROVISIONED, 1
  field :FREE_INSTANCE, 2
end

defmodule Google.Spanner.Admin.Instance.V1.Instance.Edition do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :EDITION_UNSPECIFIED, 0
  field :STANDARD, 1
  field :ENTERPRISE, 2
  field :ENTERPRISE_PLUS, 3
end

defmodule Google.Spanner.Admin.Instance.V1.Instance.DefaultBackupScheduleType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :DEFAULT_BACKUP_SCHEDULE_TYPE_UNSPECIFIED, 0
  field :NONE, 1
  field :AUTOMATIC, 2
end

defmodule Google.Spanner.Admin.Instance.V1.FreeInstanceMetadata.ExpireBehavior do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :EXPIRE_BEHAVIOR_UNSPECIFIED, 0
  field :FREE_TO_PROVISIONED, 1
  field :REMOVE_AFTER_GRACE_PERIOD, 2
end

defmodule Google.Spanner.Admin.Instance.V1.InstancePartition.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
end

defmodule Google.Spanner.Admin.Instance.V1.ReplicaInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :location, 1, type: :string
  field :type, 2, type: Google.Spanner.Admin.Instance.V1.ReplicaInfo.ReplicaType, enum: true
  field :default_leader_location, 3, type: :bool, json_name: "defaultLeaderLocation"
end

defmodule Google.Spanner.Admin.Instance.V1.InstanceConfig.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Spanner.Admin.Instance.V1.InstanceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"

  field :config_type, 5,
    type: Google.Spanner.Admin.Instance.V1.InstanceConfig.Type,
    json_name: "configType",
    enum: true,
    deprecated: false

  field :replicas, 3, repeated: true, type: Google.Spanner.Admin.Instance.V1.ReplicaInfo

  field :optional_replicas, 6,
    repeated: true,
    type: Google.Spanner.Admin.Instance.V1.ReplicaInfo,
    json_name: "optionalReplicas",
    deprecated: false

  field :base_config, 7, type: :string, json_name: "baseConfig", deprecated: false

  field :labels, 8,
    repeated: true,
    type: Google.Spanner.Admin.Instance.V1.InstanceConfig.LabelsEntry,
    map: true

  field :etag, 9, type: :string
  field :leader_options, 4, repeated: true, type: :string, json_name: "leaderOptions"
  field :reconciling, 10, type: :bool, deprecated: false

  field :state, 11,
    type: Google.Spanner.Admin.Instance.V1.InstanceConfig.State,
    enum: true,
    deprecated: false

  field :free_instance_availability, 12,
    type: Google.Spanner.Admin.Instance.V1.InstanceConfig.FreeInstanceAvailability,
    json_name: "freeInstanceAvailability",
    enum: true,
    deprecated: false

  field :quorum_type, 18,
    type: Google.Spanner.Admin.Instance.V1.InstanceConfig.QuorumType,
    json_name: "quorumType",
    enum: true,
    deprecated: false

  field :storage_limit_per_processing_unit, 19,
    type: :int64,
    json_name: "storageLimitPerProcessingUnit",
    deprecated: false
end

defmodule Google.Spanner.Admin.Instance.V1.ReplicaComputeCapacity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :compute_capacity, 0

  field :replica_selection, 1,
    type: Google.Spanner.Admin.Instance.V1.ReplicaSelection,
    json_name: "replicaSelection",
    deprecated: false

  field :node_count, 2, type: :int32, json_name: "nodeCount", oneof: 0
  field :processing_units, 3, type: :int32, json_name: "processingUnits", oneof: 0
end

defmodule Google.Spanner.Admin.Instance.V1.AutoscalingConfig.AutoscalingLimits do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :min_limit, 0

  oneof :max_limit, 1

  field :min_nodes, 1, type: :int32, json_name: "minNodes", oneof: 0
  field :min_processing_units, 2, type: :int32, json_name: "minProcessingUnits", oneof: 0
  field :max_nodes, 3, type: :int32, json_name: "maxNodes", oneof: 1
  field :max_processing_units, 4, type: :int32, json_name: "maxProcessingUnits", oneof: 1
end

defmodule Google.Spanner.Admin.Instance.V1.AutoscalingConfig.AutoscalingTargets do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :high_priority_cpu_utilization_percent, 1,
    type: :int32,
    json_name: "highPriorityCpuUtilizationPercent",
    deprecated: false

  field :storage_utilization_percent, 2,
    type: :int32,
    json_name: "storageUtilizationPercent",
    deprecated: false
end

defmodule Google.Spanner.Admin.Instance.V1.AutoscalingConfig.AsymmetricAutoscalingOption.AutoscalingConfigOverrides do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :autoscaling_limits, 1,
    type: Google.Spanner.Admin.Instance.V1.AutoscalingConfig.AutoscalingLimits,
    json_name: "autoscalingLimits",
    deprecated: false

  field :autoscaling_target_high_priority_cpu_utilization_percent, 2,
    type: :int32,
    json_name: "autoscalingTargetHighPriorityCpuUtilizationPercent",
    deprecated: false
end

defmodule Google.Spanner.Admin.Instance.V1.AutoscalingConfig.AsymmetricAutoscalingOption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :replica_selection, 1,
    type: Google.Spanner.Admin.Instance.V1.ReplicaSelection,
    json_name: "replicaSelection",
    deprecated: false

  field :overrides, 2,
    type:
      Google.Spanner.Admin.Instance.V1.AutoscalingConfig.AsymmetricAutoscalingOption.AutoscalingConfigOverrides,
    deprecated: false
end

defmodule Google.Spanner.Admin.Instance.V1.AutoscalingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :autoscaling_limits, 1,
    type: Google.Spanner.Admin.Instance.V1.AutoscalingConfig.AutoscalingLimits,
    json_name: "autoscalingLimits",
    deprecated: false

  field :autoscaling_targets, 2,
    type: Google.Spanner.Admin.Instance.V1.AutoscalingConfig.AutoscalingTargets,
    json_name: "autoscalingTargets",
    deprecated: false

  field :asymmetric_autoscaling_options, 3,
    repeated: true,
    type: Google.Spanner.Admin.Instance.V1.AutoscalingConfig.AsymmetricAutoscalingOption,
    json_name: "asymmetricAutoscalingOptions",
    deprecated: false
end

defmodule Google.Spanner.Admin.Instance.V1.Instance.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Spanner.Admin.Instance.V1.Instance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :config, 2, type: :string, deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false
  field :node_count, 5, type: :int32, json_name: "nodeCount"
  field :processing_units, 9, type: :int32, json_name: "processingUnits"

  field :replica_compute_capacity, 19,
    repeated: true,
    type: Google.Spanner.Admin.Instance.V1.ReplicaComputeCapacity,
    json_name: "replicaComputeCapacity",
    deprecated: false

  field :autoscaling_config, 17,
    type: Google.Spanner.Admin.Instance.V1.AutoscalingConfig,
    json_name: "autoscalingConfig",
    deprecated: false

  field :state, 6,
    type: Google.Spanner.Admin.Instance.V1.Instance.State,
    enum: true,
    deprecated: false

  field :labels, 7,
    repeated: true,
    type: Google.Spanner.Admin.Instance.V1.Instance.LabelsEntry,
    map: true

  field :instance_type, 10,
    type: Google.Spanner.Admin.Instance.V1.Instance.InstanceType,
    json_name: "instanceType",
    enum: true

  field :endpoint_uris, 8, repeated: true, type: :string, json_name: "endpointUris"

  field :create_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :free_instance_metadata, 13,
    type: Google.Spanner.Admin.Instance.V1.FreeInstanceMetadata,
    json_name: "freeInstanceMetadata"

  field :edition, 20,
    type: Google.Spanner.Admin.Instance.V1.Instance.Edition,
    enum: true,
    deprecated: false

  field :default_backup_schedule_type, 23,
    type: Google.Spanner.Admin.Instance.V1.Instance.DefaultBackupScheduleType,
    json_name: "defaultBackupScheduleType",
    enum: true,
    deprecated: false
end

defmodule Google.Spanner.Admin.Instance.V1.ListInstanceConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Spanner.Admin.Instance.V1.ListInstanceConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instance_configs, 1,
    repeated: true,
    type: Google.Spanner.Admin.Instance.V1.InstanceConfig,
    json_name: "instanceConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Spanner.Admin.Instance.V1.GetInstanceConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Spanner.Admin.Instance.V1.CreateInstanceConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :instance_config_id, 2, type: :string, json_name: "instanceConfigId", deprecated: false

  field :instance_config, 3,
    type: Google.Spanner.Admin.Instance.V1.InstanceConfig,
    json_name: "instanceConfig",
    deprecated: false

  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end

defmodule Google.Spanner.Admin.Instance.V1.UpdateInstanceConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instance_config, 1,
    type: Google.Spanner.Admin.Instance.V1.InstanceConfig,
    json_name: "instanceConfig",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end

defmodule Google.Spanner.Admin.Instance.V1.DeleteInstanceConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string
  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end

defmodule Google.Spanner.Admin.Instance.V1.ListInstanceConfigOperationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Spanner.Admin.Instance.V1.ListInstanceConfigOperationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :operations, 1, repeated: true, type: Google.Longrunning.Operation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Spanner.Admin.Instance.V1.GetInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :field_mask, 2, type: Google.Protobuf.FieldMask, json_name: "fieldMask"
end

defmodule Google.Spanner.Admin.Instance.V1.CreateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 3, type: Google.Spanner.Admin.Instance.V1.Instance, deprecated: false
end

defmodule Google.Spanner.Admin.Instance.V1.ListInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :instance_deadline, 5, type: Google.Protobuf.Timestamp, json_name: "instanceDeadline"
end

defmodule Google.Spanner.Admin.Instance.V1.ListInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Spanner.Admin.Instance.V1.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Spanner.Admin.Instance.V1.UpdateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instance, 1, type: Google.Spanner.Admin.Instance.V1.Instance, deprecated: false
  field :field_mask, 2, type: Google.Protobuf.FieldMask, json_name: "fieldMask", deprecated: false
end

defmodule Google.Spanner.Admin.Instance.V1.DeleteInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Spanner.Admin.Instance.V1.CreateInstanceMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instance, 1, type: Google.Spanner.Admin.Instance.V1.Instance
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :cancel_time, 3, type: Google.Protobuf.Timestamp, json_name: "cancelTime"
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime"

  field :expected_fulfillment_period, 5,
    type: Google.Spanner.Admin.Instance.V1.FulfillmentPeriod,
    json_name: "expectedFulfillmentPeriod",
    enum: true
end

defmodule Google.Spanner.Admin.Instance.V1.UpdateInstanceMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instance, 1, type: Google.Spanner.Admin.Instance.V1.Instance
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :cancel_time, 3, type: Google.Protobuf.Timestamp, json_name: "cancelTime"
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime"

  field :expected_fulfillment_period, 5,
    type: Google.Spanner.Admin.Instance.V1.FulfillmentPeriod,
    json_name: "expectedFulfillmentPeriod",
    enum: true
end

defmodule Google.Spanner.Admin.Instance.V1.FreeInstanceMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :expire_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :upgrade_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "upgradeTime",
    deprecated: false

  field :expire_behavior, 3,
    type: Google.Spanner.Admin.Instance.V1.FreeInstanceMetadata.ExpireBehavior,
    json_name: "expireBehavior",
    enum: true
end

defmodule Google.Spanner.Admin.Instance.V1.CreateInstanceConfigMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instance_config, 1,
    type: Google.Spanner.Admin.Instance.V1.InstanceConfig,
    json_name: "instanceConfig"

  field :progress, 2, type: Google.Spanner.Admin.Instance.V1.OperationProgress
  field :cancel_time, 3, type: Google.Protobuf.Timestamp, json_name: "cancelTime"
end

defmodule Google.Spanner.Admin.Instance.V1.UpdateInstanceConfigMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instance_config, 1,
    type: Google.Spanner.Admin.Instance.V1.InstanceConfig,
    json_name: "instanceConfig"

  field :progress, 2, type: Google.Spanner.Admin.Instance.V1.OperationProgress
  field :cancel_time, 3, type: Google.Protobuf.Timestamp, json_name: "cancelTime"
end

defmodule Google.Spanner.Admin.Instance.V1.InstancePartition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :compute_capacity, 0

  field :name, 1, type: :string, deprecated: false
  field :config, 2, type: :string, deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false
  field :node_count, 5, type: :int32, json_name: "nodeCount", oneof: 0
  field :processing_units, 6, type: :int32, json_name: "processingUnits", oneof: 0

  field :state, 7,
    type: Google.Spanner.Admin.Instance.V1.InstancePartition.State,
    enum: true,
    deprecated: false

  field :create_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :referencing_databases, 10,
    repeated: true,
    type: :string,
    json_name: "referencingDatabases",
    deprecated: false

  field :referencing_backups, 11,
    repeated: true,
    type: :string,
    json_name: "referencingBackups",
    deprecated: true

  field :etag, 12, type: :string
end

defmodule Google.Spanner.Admin.Instance.V1.CreateInstancePartitionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instance_partition, 1,
    type: Google.Spanner.Admin.Instance.V1.InstancePartition,
    json_name: "instancePartition"

  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :cancel_time, 3, type: Google.Protobuf.Timestamp, json_name: "cancelTime"
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Spanner.Admin.Instance.V1.CreateInstancePartitionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :instance_partition_id, 2,
    type: :string,
    json_name: "instancePartitionId",
    deprecated: false

  field :instance_partition, 3,
    type: Google.Spanner.Admin.Instance.V1.InstancePartition,
    json_name: "instancePartition",
    deprecated: false
end

defmodule Google.Spanner.Admin.Instance.V1.DeleteInstancePartitionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string
end

defmodule Google.Spanner.Admin.Instance.V1.GetInstancePartitionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Spanner.Admin.Instance.V1.UpdateInstancePartitionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instance_partition, 1,
    type: Google.Spanner.Admin.Instance.V1.InstancePartition,
    json_name: "instancePartition",
    deprecated: false

  field :field_mask, 2, type: Google.Protobuf.FieldMask, json_name: "fieldMask", deprecated: false
end

defmodule Google.Spanner.Admin.Instance.V1.UpdateInstancePartitionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instance_partition, 1,
    type: Google.Spanner.Admin.Instance.V1.InstancePartition,
    json_name: "instancePartition"

  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :cancel_time, 3, type: Google.Protobuf.Timestamp, json_name: "cancelTime"
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Spanner.Admin.Instance.V1.ListInstancePartitionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  field :instance_partition_deadline, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "instancePartitionDeadline",
    deprecated: false
end

defmodule Google.Spanner.Admin.Instance.V1.ListInstancePartitionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instance_partitions, 1,
    repeated: true,
    type: Google.Spanner.Admin.Instance.V1.InstancePartition,
    json_name: "instancePartitions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Spanner.Admin.Instance.V1.ListInstancePartitionOperationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false

  field :instance_partition_deadline, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "instancePartitionDeadline",
    deprecated: false
end

defmodule Google.Spanner.Admin.Instance.V1.ListInstancePartitionOperationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :operations, 1, repeated: true, type: Google.Longrunning.Operation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  field :unreachable_instance_partitions, 3,
    repeated: true,
    type: :string,
    json_name: "unreachableInstancePartitions"
end

defmodule Google.Spanner.Admin.Instance.V1.MoveInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :target_config, 2, type: :string, json_name: "targetConfig", deprecated: false
end

defmodule Google.Spanner.Admin.Instance.V1.MoveInstanceResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Spanner.Admin.Instance.V1.MoveInstanceMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :target_config, 1, type: :string, json_name: "targetConfig"
  field :progress, 2, type: Google.Spanner.Admin.Instance.V1.OperationProgress
  field :cancel_time, 3, type: Google.Protobuf.Timestamp, json_name: "cancelTime"
end

defmodule Google.Spanner.Admin.Instance.V1.InstanceAdmin.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.spanner.admin.instance.v1.InstanceAdmin",
    protoc_gen_elixir_version: "0.13.0"

  rpc :ListInstanceConfigs,
      Google.Spanner.Admin.Instance.V1.ListInstanceConfigsRequest,
      Google.Spanner.Admin.Instance.V1.ListInstanceConfigsResponse

  rpc :GetInstanceConfig,
      Google.Spanner.Admin.Instance.V1.GetInstanceConfigRequest,
      Google.Spanner.Admin.Instance.V1.InstanceConfig

  rpc :CreateInstanceConfig,
      Google.Spanner.Admin.Instance.V1.CreateInstanceConfigRequest,
      Google.Longrunning.Operation

  rpc :UpdateInstanceConfig,
      Google.Spanner.Admin.Instance.V1.UpdateInstanceConfigRequest,
      Google.Longrunning.Operation

  rpc :DeleteInstanceConfig,
      Google.Spanner.Admin.Instance.V1.DeleteInstanceConfigRequest,
      Google.Protobuf.Empty

  rpc :ListInstanceConfigOperations,
      Google.Spanner.Admin.Instance.V1.ListInstanceConfigOperationsRequest,
      Google.Spanner.Admin.Instance.V1.ListInstanceConfigOperationsResponse

  rpc :ListInstances,
      Google.Spanner.Admin.Instance.V1.ListInstancesRequest,
      Google.Spanner.Admin.Instance.V1.ListInstancesResponse

  rpc :ListInstancePartitions,
      Google.Spanner.Admin.Instance.V1.ListInstancePartitionsRequest,
      Google.Spanner.Admin.Instance.V1.ListInstancePartitionsResponse

  rpc :GetInstance,
      Google.Spanner.Admin.Instance.V1.GetInstanceRequest,
      Google.Spanner.Admin.Instance.V1.Instance

  rpc :CreateInstance,
      Google.Spanner.Admin.Instance.V1.CreateInstanceRequest,
      Google.Longrunning.Operation

  rpc :UpdateInstance,
      Google.Spanner.Admin.Instance.V1.UpdateInstanceRequest,
      Google.Longrunning.Operation

  rpc :DeleteInstance,
      Google.Spanner.Admin.Instance.V1.DeleteInstanceRequest,
      Google.Protobuf.Empty

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse

  rpc :GetInstancePartition,
      Google.Spanner.Admin.Instance.V1.GetInstancePartitionRequest,
      Google.Spanner.Admin.Instance.V1.InstancePartition

  rpc :CreateInstancePartition,
      Google.Spanner.Admin.Instance.V1.CreateInstancePartitionRequest,
      Google.Longrunning.Operation

  rpc :DeleteInstancePartition,
      Google.Spanner.Admin.Instance.V1.DeleteInstancePartitionRequest,
      Google.Protobuf.Empty

  rpc :UpdateInstancePartition,
      Google.Spanner.Admin.Instance.V1.UpdateInstancePartitionRequest,
      Google.Longrunning.Operation

  rpc :ListInstancePartitionOperations,
      Google.Spanner.Admin.Instance.V1.ListInstancePartitionOperationsRequest,
      Google.Spanner.Admin.Instance.V1.ListInstancePartitionOperationsResponse

  rpc :MoveInstance,
      Google.Spanner.Admin.Instance.V1.MoveInstanceRequest,
      Google.Longrunning.Operation
end

defmodule Google.Spanner.Admin.Instance.V1.InstanceAdmin.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Spanner.Admin.Instance.V1.InstanceAdmin.Service
end