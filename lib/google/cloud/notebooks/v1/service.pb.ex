defmodule Google.Cloud.Notebooks.V1.UpgradeType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :UPGRADE_TYPE_UNSPECIFIED, 0
  field :UPGRADE_FRAMEWORK, 1
  field :UPGRADE_OS, 2
  field :UPGRADE_CUDA, 3
  field :UPGRADE_ALL, 4
end
defmodule Google.Cloud.Notebooks.V1.GetInstanceHealthResponse.HealthState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :HEALTH_STATE_UNSPECIFIED, 0
  field :HEALTHY, 1
  field :UNHEALTHY, 2
  field :AGENT_NOT_INSTALLED, 3
  field :AGENT_NOT_RUNNING, 4
end
defmodule Google.Cloud.Notebooks.V1.OperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :status_message, 5, type: :string, json_name: "statusMessage"
  field :requested_cancellation, 6, type: :bool, json_name: "requestedCancellation"
  field :api_version, 7, type: :string, json_name: "apiVersion"
  field :endpoint, 8, type: :string
end
defmodule Google.Cloud.Notebooks.V1.ListInstancesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Notebooks.V1.ListInstancesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Cloud.Notebooks.V1.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Notebooks.V1.GetInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1.CreateInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 3, type: Google.Cloud.Notebooks.V1.Instance, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1.RegisterInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
end
defmodule Google.Cloud.Notebooks.V1.SetInstanceAcceleratorRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :type, 2,
    type: Google.Cloud.Notebooks.V1.Instance.AcceleratorType,
    enum: true,
    deprecated: false

  field :core_count, 3, type: :int64, json_name: "coreCount", deprecated: false
end
defmodule Google.Cloud.Notebooks.V1.SetInstanceMachineTypeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :machine_type, 2, type: :string, json_name: "machineType", deprecated: false
end
defmodule Google.Cloud.Notebooks.V1.UpdateInstanceConfigRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :config, 2, type: Google.Cloud.Notebooks.V1.InstanceConfig
end
defmodule Google.Cloud.Notebooks.V1.SetInstanceLabelsRequest.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Notebooks.V1.SetInstanceLabelsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :labels, 2,
    repeated: true,
    type: Google.Cloud.Notebooks.V1.SetInstanceLabelsRequest.LabelsEntry,
    map: true
end
defmodule Google.Cloud.Notebooks.V1.UpdateInstanceMetadataItemsRequest.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Notebooks.V1.UpdateInstanceMetadataItemsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :items, 2,
    repeated: true,
    type: Google.Cloud.Notebooks.V1.UpdateInstanceMetadataItemsRequest.ItemsEntry,
    map: true
end
defmodule Google.Cloud.Notebooks.V1.UpdateInstanceMetadataItemsResponse.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Notebooks.V1.UpdateInstanceMetadataItemsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :items, 1,
    repeated: true,
    type: Google.Cloud.Notebooks.V1.UpdateInstanceMetadataItemsResponse.ItemsEntry,
    map: true
end
defmodule Google.Cloud.Notebooks.V1.UpdateShieldedInstanceConfigRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :shielded_instance_config, 2,
    type: Google.Cloud.Notebooks.V1.Instance.ShieldedInstanceConfig,
    json_name: "shieldedInstanceConfig"
end
defmodule Google.Cloud.Notebooks.V1.DeleteInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1.StartInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1.StopInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1.ResetInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1.ReportInstanceInfoRequest.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Notebooks.V1.ReportInstanceInfoRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :vm_id, 2, type: :string, json_name: "vmId", deprecated: false

  field :metadata, 3,
    repeated: true,
    type: Google.Cloud.Notebooks.V1.ReportInstanceInfoRequest.MetadataEntry,
    map: true
end
defmodule Google.Cloud.Notebooks.V1.IsInstanceUpgradeableRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :notebook_instance, 1, type: :string, json_name: "notebookInstance", deprecated: false
  field :type, 2, type: Google.Cloud.Notebooks.V1.UpgradeType, enum: true, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1.IsInstanceUpgradeableResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :upgradeable, 1, type: :bool
  field :upgrade_version, 2, type: :string, json_name: "upgradeVersion"
  field :upgrade_info, 3, type: :string, json_name: "upgradeInfo"
  field :upgrade_image, 4, type: :string, json_name: "upgradeImage"
end
defmodule Google.Cloud.Notebooks.V1.GetInstanceHealthRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1.GetInstanceHealthResponse.HealthInfoEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Notebooks.V1.GetInstanceHealthResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :health_state, 1,
    type: Google.Cloud.Notebooks.V1.GetInstanceHealthResponse.HealthState,
    json_name: "healthState",
    enum: true,
    deprecated: false

  field :health_info, 2,
    repeated: true,
    type: Google.Cloud.Notebooks.V1.GetInstanceHealthResponse.HealthInfoEntry,
    json_name: "healthInfo",
    map: true,
    deprecated: false
end
defmodule Google.Cloud.Notebooks.V1.UpgradeInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :type, 2, type: Google.Cloud.Notebooks.V1.UpgradeType, enum: true, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1.RollbackInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :target_snapshot, 2, type: :string, json_name: "targetSnapshot", deprecated: false
end
defmodule Google.Cloud.Notebooks.V1.UpgradeInstanceInternalRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :vm_id, 2, type: :string, json_name: "vmId", deprecated: false
  field :type, 3, type: Google.Cloud.Notebooks.V1.UpgradeType, enum: true, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1.ListEnvironmentsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Notebooks.V1.ListEnvironmentsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :environments, 1, repeated: true, type: Google.Cloud.Notebooks.V1.Environment
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Notebooks.V1.GetEnvironmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1.CreateEnvironmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :environment_id, 2, type: :string, json_name: "environmentId", deprecated: false
  field :environment, 3, type: Google.Cloud.Notebooks.V1.Environment, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1.DeleteEnvironmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1.ListSchedulesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Notebooks.V1.ListSchedulesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :schedules, 1, repeated: true, type: Google.Cloud.Notebooks.V1.Schedule
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Notebooks.V1.GetScheduleRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1.DeleteScheduleRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1.CreateScheduleRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :schedule_id, 2, type: :string, json_name: "scheduleId", deprecated: false
  field :schedule, 3, type: Google.Cloud.Notebooks.V1.Schedule, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1.TriggerScheduleRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1.ListExecutionsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Notebooks.V1.ListExecutionsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :executions, 1, repeated: true, type: Google.Cloud.Notebooks.V1.Execution
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Notebooks.V1.GetExecutionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1.DeleteExecutionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1.CreateExecutionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :execution_id, 2, type: :string, json_name: "executionId", deprecated: false
  field :execution, 3, type: Google.Cloud.Notebooks.V1.Execution, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1.NotebookService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.notebooks.v1.NotebookService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :ListInstances,
      Google.Cloud.Notebooks.V1.ListInstancesRequest,
      Google.Cloud.Notebooks.V1.ListInstancesResponse

  rpc :GetInstance,
      Google.Cloud.Notebooks.V1.GetInstanceRequest,
      Google.Cloud.Notebooks.V1.Instance

  rpc :CreateInstance,
      Google.Cloud.Notebooks.V1.CreateInstanceRequest,
      Google.Longrunning.Operation

  rpc :RegisterInstance,
      Google.Cloud.Notebooks.V1.RegisterInstanceRequest,
      Google.Longrunning.Operation

  rpc :SetInstanceAccelerator,
      Google.Cloud.Notebooks.V1.SetInstanceAcceleratorRequest,
      Google.Longrunning.Operation

  rpc :SetInstanceMachineType,
      Google.Cloud.Notebooks.V1.SetInstanceMachineTypeRequest,
      Google.Longrunning.Operation

  rpc :UpdateInstanceConfig,
      Google.Cloud.Notebooks.V1.UpdateInstanceConfigRequest,
      Google.Longrunning.Operation

  rpc :UpdateShieldedInstanceConfig,
      Google.Cloud.Notebooks.V1.UpdateShieldedInstanceConfigRequest,
      Google.Longrunning.Operation

  rpc :SetInstanceLabels,
      Google.Cloud.Notebooks.V1.SetInstanceLabelsRequest,
      Google.Longrunning.Operation

  rpc :UpdateInstanceMetadataItems,
      Google.Cloud.Notebooks.V1.UpdateInstanceMetadataItemsRequest,
      Google.Cloud.Notebooks.V1.UpdateInstanceMetadataItemsResponse

  rpc :DeleteInstance,
      Google.Cloud.Notebooks.V1.DeleteInstanceRequest,
      Google.Longrunning.Operation

  rpc :StartInstance, Google.Cloud.Notebooks.V1.StartInstanceRequest, Google.Longrunning.Operation

  rpc :StopInstance, Google.Cloud.Notebooks.V1.StopInstanceRequest, Google.Longrunning.Operation

  rpc :ResetInstance, Google.Cloud.Notebooks.V1.ResetInstanceRequest, Google.Longrunning.Operation

  rpc :ReportInstanceInfo,
      Google.Cloud.Notebooks.V1.ReportInstanceInfoRequest,
      Google.Longrunning.Operation

  rpc :IsInstanceUpgradeable,
      Google.Cloud.Notebooks.V1.IsInstanceUpgradeableRequest,
      Google.Cloud.Notebooks.V1.IsInstanceUpgradeableResponse

  rpc :GetInstanceHealth,
      Google.Cloud.Notebooks.V1.GetInstanceHealthRequest,
      Google.Cloud.Notebooks.V1.GetInstanceHealthResponse

  rpc :UpgradeInstance,
      Google.Cloud.Notebooks.V1.UpgradeInstanceRequest,
      Google.Longrunning.Operation

  rpc :RollbackInstance,
      Google.Cloud.Notebooks.V1.RollbackInstanceRequest,
      Google.Longrunning.Operation

  rpc :UpgradeInstanceInternal,
      Google.Cloud.Notebooks.V1.UpgradeInstanceInternalRequest,
      Google.Longrunning.Operation

  rpc :ListEnvironments,
      Google.Cloud.Notebooks.V1.ListEnvironmentsRequest,
      Google.Cloud.Notebooks.V1.ListEnvironmentsResponse

  rpc :GetEnvironment,
      Google.Cloud.Notebooks.V1.GetEnvironmentRequest,
      Google.Cloud.Notebooks.V1.Environment

  rpc :CreateEnvironment,
      Google.Cloud.Notebooks.V1.CreateEnvironmentRequest,
      Google.Longrunning.Operation

  rpc :DeleteEnvironment,
      Google.Cloud.Notebooks.V1.DeleteEnvironmentRequest,
      Google.Longrunning.Operation

  rpc :ListSchedules,
      Google.Cloud.Notebooks.V1.ListSchedulesRequest,
      Google.Cloud.Notebooks.V1.ListSchedulesResponse

  rpc :GetSchedule,
      Google.Cloud.Notebooks.V1.GetScheduleRequest,
      Google.Cloud.Notebooks.V1.Schedule

  rpc :DeleteSchedule,
      Google.Cloud.Notebooks.V1.DeleteScheduleRequest,
      Google.Longrunning.Operation

  rpc :CreateSchedule,
      Google.Cloud.Notebooks.V1.CreateScheduleRequest,
      Google.Longrunning.Operation

  rpc :TriggerSchedule,
      Google.Cloud.Notebooks.V1.TriggerScheduleRequest,
      Google.Longrunning.Operation

  rpc :ListExecutions,
      Google.Cloud.Notebooks.V1.ListExecutionsRequest,
      Google.Cloud.Notebooks.V1.ListExecutionsResponse

  rpc :GetExecution,
      Google.Cloud.Notebooks.V1.GetExecutionRequest,
      Google.Cloud.Notebooks.V1.Execution

  rpc :DeleteExecution,
      Google.Cloud.Notebooks.V1.DeleteExecutionRequest,
      Google.Longrunning.Operation

  rpc :CreateExecution,
      Google.Cloud.Notebooks.V1.CreateExecutionRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Notebooks.V1.NotebookService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Notebooks.V1.NotebookService.Service
end
