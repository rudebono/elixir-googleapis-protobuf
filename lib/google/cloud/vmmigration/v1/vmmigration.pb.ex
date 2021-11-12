defmodule Google.Cloud.Vmmigration.V1.UtilizationReportView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UTILIZATION_REPORT_VIEW_UNSPECIFIED | :BASIC | :FULL

  field :UTILIZATION_REPORT_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end

defmodule Google.Cloud.Vmmigration.V1.ComputeEngineDiskType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :COMPUTE_ENGINE_DISK_TYPE_UNSPECIFIED
          | :COMPUTE_ENGINE_DISK_TYPE_STANDARD
          | :COMPUTE_ENGINE_DISK_TYPE_SSD
          | :COMPUTE_ENGINE_DISK_TYPE_BALANCED

  field :COMPUTE_ENGINE_DISK_TYPE_UNSPECIFIED, 0
  field :COMPUTE_ENGINE_DISK_TYPE_STANDARD, 1
  field :COMPUTE_ENGINE_DISK_TYPE_SSD, 2
  field :COMPUTE_ENGINE_DISK_TYPE_BALANCED, 3
end

defmodule Google.Cloud.Vmmigration.V1.ComputeEngineLicenseType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :COMPUTE_ENGINE_LICENSE_TYPE_DEFAULT
          | :COMPUTE_ENGINE_LICENSE_TYPE_PAYG
          | :COMPUTE_ENGINE_LICENSE_TYPE_BYOL

  field :COMPUTE_ENGINE_LICENSE_TYPE_DEFAULT, 0
  field :COMPUTE_ENGINE_LICENSE_TYPE_PAYG, 1
  field :COMPUTE_ENGINE_LICENSE_TYPE_BYOL, 2
end

defmodule Google.Cloud.Vmmigration.V1.ComputeEngineBootOption do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :COMPUTE_ENGINE_BOOT_OPTION_UNSPECIFIED
          | :COMPUTE_ENGINE_BOOT_OPTION_EFI
          | :COMPUTE_ENGINE_BOOT_OPTION_BIOS

  field :COMPUTE_ENGINE_BOOT_OPTION_UNSPECIFIED, 0
  field :COMPUTE_ENGINE_BOOT_OPTION_EFI, 1
  field :COMPUTE_ENGINE_BOOT_OPTION_BIOS, 2
end

defmodule Google.Cloud.Vmmigration.V1.MigratingVm.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :PENDING
          | :READY
          | :FIRST_SYNC
          | :ACTIVE
          | :CUTTING_OVER
          | :CUTOVER
          | :FINAL_SYNC
          | :PAUSED
          | :FINALIZING
          | :FINALIZED
          | :ERROR

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :READY, 2
  field :FIRST_SYNC, 3
  field :ACTIVE, 4
  field :CUTTING_OVER, 7
  field :CUTOVER, 8
  field :FINAL_SYNC, 9
  field :PAUSED, 10
  field :FINALIZING, 11
  field :FINALIZED, 12
  field :ERROR, 13
end

defmodule Google.Cloud.Vmmigration.V1.CloneJob.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :PENDING
          | :ACTIVE
          | :FAILED
          | :SUCCEEDED
          | :CANCELLED
          | :CANCELLING
          | :ADAPTING_OS

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :ACTIVE, 2
  field :FAILED, 3
  field :SUCCEEDED, 4
  field :CANCELLED, 5
  field :CANCELLING, 6
  field :ADAPTING_OS, 7
end

defmodule Google.Cloud.Vmmigration.V1.CutoverJob.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :PENDING
          | :FAILED
          | :SUCCEEDED
          | :CANCELLED
          | :CANCELLING
          | :ACTIVE
          | :ADAPTING_OS

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :FAILED, 2
  field :SUCCEEDED, 3
  field :CANCELLED, 4
  field :CANCELLING, 5
  field :ACTIVE, 6
  field :ADAPTING_OS, 7
end

defmodule Google.Cloud.Vmmigration.V1.DatacenterConnector.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :PENDING | :OFFLINE | :FAILED | :ACTIVE

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :OFFLINE, 2
  field :FAILED, 3
  field :ACTIVE, 4
end

defmodule Google.Cloud.Vmmigration.V1.VmwareVmDetails.PowerState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :POWER_STATE_UNSPECIFIED | :ON | :OFF | :SUSPENDED

  field :POWER_STATE_UNSPECIFIED, 0
  field :ON, 1
  field :OFF, 2
  field :SUSPENDED, 3
end

defmodule Google.Cloud.Vmmigration.V1.VmwareVmDetails.BootOption do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :BOOT_OPTION_UNSPECIFIED | :EFI | :BIOS

  field :BOOT_OPTION_UNSPECIFIED, 0
  field :EFI, 1
  field :BIOS, 2
end

defmodule Google.Cloud.Vmmigration.V1.UtilizationReport.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :CREATING | :SUCCEEDED | :FAILED

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
end

defmodule Google.Cloud.Vmmigration.V1.UtilizationReport.TimeFrame do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TIME_FRAME_UNSPECIFIED | :WEEK | :MONTH | :YEAR

  field :TIME_FRAME_UNSPECIFIED, 0
  field :WEEK, 1
  field :MONTH, 2
  field :YEAR, 3
end

defmodule Google.Cloud.Vmmigration.V1.AppliedLicense.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TYPE_UNSPECIFIED | :NONE | :PAYG | :BYOL

  field :TYPE_UNSPECIFIED, 0
  field :NONE, 1
  field :PAYG, 2
  field :BYOL, 3
end

defmodule Google.Cloud.Vmmigration.V1.SchedulingNodeAffinity.Operator do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :OPERATOR_UNSPECIFIED | :IN | :NOT_IN

  field :OPERATOR_UNSPECIFIED, 0
  field :IN, 1
  field :NOT_IN, 2
end

defmodule Google.Cloud.Vmmigration.V1.ComputeScheduling.OnHostMaintenance do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ON_HOST_MAINTENANCE_UNSPECIFIED | :TERMINATE | :MIGRATE

  field :ON_HOST_MAINTENANCE_UNSPECIFIED, 0
  field :TERMINATE, 1
  field :MIGRATE, 2
end

defmodule Google.Cloud.Vmmigration.V1.ComputeScheduling.RestartType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :RESTART_TYPE_UNSPECIFIED | :AUTOMATIC_RESTART | :NO_AUTOMATIC_RESTART

  field :RESTART_TYPE_UNSPECIFIED, 0
  field :AUTOMATIC_RESTART, 1
  field :NO_AUTOMATIC_RESTART, 2
end

defmodule Google.Cloud.Vmmigration.V1.MigrationError.ErrorCode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ERROR_CODE_UNSPECIFIED
          | :UNKNOWN_ERROR
          | :SOURCE_VALIDATION_ERROR
          | :SOURCE_REPLICATION_ERROR
          | :TARGET_REPLICATION_ERROR
          | :OS_ADAPTATION_ERROR
          | :CLONE_ERROR
          | :CUTOVER_ERROR
          | :UTILIZATION_REPORT_ERROR

  field :ERROR_CODE_UNSPECIFIED, 0
  field :UNKNOWN_ERROR, 1
  field :SOURCE_VALIDATION_ERROR, 2
  field :SOURCE_REPLICATION_ERROR, 3
  field :TARGET_REPLICATION_ERROR, 4
  field :OS_ADAPTATION_ERROR, 5
  field :CLONE_ERROR, 6
  field :CUTOVER_ERROR, 7
  field :UTILIZATION_REPORT_ERROR, 8
end

defmodule Google.Cloud.Vmmigration.V1.ReplicationCycle do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          progress_percent: integer
        }

  defstruct [:start_time, :progress_percent]

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :progress_percent, 5, type: :int32, json_name: "progressPercent"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.ReplicationSync do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          last_sync_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:last_sync_time]

  field :last_sync_time, 1, type: Google.Protobuf.Timestamp, json_name: "lastSyncTime"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.MigratingVm.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.MigratingVm do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_vm_defaults:
            {:compute_engine_target_defaults,
             Google.Cloud.Vmmigration.V1.ComputeEngineTargetDefaults.t() | nil},
          name: String.t(),
          source_vm_id: String.t(),
          display_name: String.t(),
          description: String.t(),
          policy: Google.Cloud.Vmmigration.V1.SchedulePolicy.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          last_sync: Google.Cloud.Vmmigration.V1.ReplicationSync.t() | nil,
          state: Google.Cloud.Vmmigration.V1.MigratingVm.State.t(),
          state_time: Google.Protobuf.Timestamp.t() | nil,
          current_sync_info: Google.Cloud.Vmmigration.V1.ReplicationCycle.t() | nil,
          group: String.t(),
          labels: %{String.t() => String.t()},
          error: Google.Rpc.Status.t() | nil
        }

  defstruct [
    :target_vm_defaults,
    :name,
    :source_vm_id,
    :display_name,
    :description,
    :policy,
    :create_time,
    :update_time,
    :last_sync,
    :state,
    :state_time,
    :current_sync_info,
    :group,
    :labels,
    :error
  ]

  oneof :target_vm_defaults, 0

  field :compute_engine_target_defaults, 26,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineTargetDefaults,
    json_name: "computeEngineTargetDefaults",
    oneof: 0

  field :name, 1, type: :string
  field :source_vm_id, 2, type: :string, json_name: "sourceVmId"
  field :display_name, 18, type: :string, json_name: "displayName"
  field :description, 3, type: :string
  field :policy, 8, type: Google.Cloud.Vmmigration.V1.SchedulePolicy
  field :create_time, 9, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 10, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :last_sync, 11, type: Google.Cloud.Vmmigration.V1.ReplicationSync, json_name: "lastSync"
  field :state, 23, type: Google.Cloud.Vmmigration.V1.MigratingVm.State, enum: true
  field :state_time, 22, type: Google.Protobuf.Timestamp, json_name: "stateTime"

  field :current_sync_info, 13,
    type: Google.Cloud.Vmmigration.V1.ReplicationCycle,
    json_name: "currentSyncInfo"

  field :group, 15, type: :string

  field :labels, 16,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.MigratingVm.LabelsEntry,
    map: true

  field :error, 19, type: Google.Rpc.Status

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.CloneJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_vm_details:
            {:compute_engine_target_details,
             Google.Cloud.Vmmigration.V1.ComputeEngineTargetDetails.t() | nil},
          create_time: Google.Protobuf.Timestamp.t() | nil,
          name: String.t(),
          state: Google.Cloud.Vmmigration.V1.CloneJob.State.t(),
          state_time: Google.Protobuf.Timestamp.t() | nil,
          error: Google.Rpc.Status.t() | nil
        }

  defstruct [:target_vm_details, :create_time, :name, :state, :state_time, :error]

  oneof :target_vm_details, 0

  field :compute_engine_target_details, 20,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineTargetDetails,
    json_name: "computeEngineTargetDetails",
    oneof: 0

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :name, 3, type: :string
  field :state, 12, type: Google.Cloud.Vmmigration.V1.CloneJob.State, enum: true
  field :state_time, 14, type: Google.Protobuf.Timestamp, json_name: "stateTime"
  field :error, 17, type: Google.Rpc.Status

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.CutoverJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_vm_details:
            {:compute_engine_target_details,
             Google.Cloud.Vmmigration.V1.ComputeEngineTargetDetails.t() | nil},
          create_time: Google.Protobuf.Timestamp.t() | nil,
          name: String.t(),
          state: Google.Cloud.Vmmigration.V1.CutoverJob.State.t(),
          state_time: Google.Protobuf.Timestamp.t() | nil,
          progress_percent: integer,
          error: Google.Rpc.Status.t() | nil,
          state_message: String.t()
        }

  defstruct [
    :target_vm_details,
    :create_time,
    :name,
    :state,
    :state_time,
    :progress_percent,
    :error,
    :state_message
  ]

  oneof :target_vm_details, 0

  field :compute_engine_target_details, 14,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineTargetDetails,
    json_name: "computeEngineTargetDetails",
    oneof: 0

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :name, 3, type: :string
  field :state, 5, type: Google.Cloud.Vmmigration.V1.CutoverJob.State, enum: true
  field :state_time, 6, type: Google.Protobuf.Timestamp, json_name: "stateTime"
  field :progress_percent, 13, type: :int32, json_name: "progressPercent"
  field :error, 9, type: Google.Rpc.Status
  field :state_message, 10, type: :string, json_name: "stateMessage"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.CreateCloneJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          clone_job_id: String.t(),
          clone_job: Google.Cloud.Vmmigration.V1.CloneJob.t() | nil,
          request_id: String.t()
        }

  defstruct [:parent, :clone_job_id, :clone_job, :request_id]

  field :parent, 1, type: :string
  field :clone_job_id, 2, type: :string, json_name: "cloneJobId"
  field :clone_job, 3, type: Google.Cloud.Vmmigration.V1.CloneJob, json_name: "cloneJob"
  field :request_id, 4, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.CancelCloneJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.CancelCloneJobResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.ListCloneJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.ListCloneJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          clone_jobs: [Google.Cloud.Vmmigration.V1.CloneJob.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:clone_jobs, :next_page_token, :unreachable]

  field :clone_jobs, 1,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.CloneJob,
    json_name: "cloneJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.GetCloneJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.Source.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.Source do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source_details: {:vmware, Google.Cloud.Vmmigration.V1.VmwareSourceDetails.t() | nil},
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          description: String.t()
        }

  defstruct [:source_details, :name, :create_time, :update_time, :labels, :description]

  oneof :source_details, 0

  field :vmware, 10, type: Google.Cloud.Vmmigration.V1.VmwareSourceDetails, oneof: 0
  field :name, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.Source.LabelsEntry,
    map: true

  field :description, 6, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.VmwareSourceDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          username: String.t(),
          password: String.t(),
          vcenter_ip: String.t(),
          thumbprint: String.t()
        }

  defstruct [:username, :password, :vcenter_ip, :thumbprint]

  field :username, 1, type: :string
  field :password, 2, type: :string
  field :vcenter_ip, 3, type: :string, json_name: "vcenterIp"
  field :thumbprint, 4, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.DatacenterConnector do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          name: String.t(),
          registration_id: String.t(),
          service_account: String.t(),
          version: String.t(),
          bucket: String.t(),
          state: Google.Cloud.Vmmigration.V1.DatacenterConnector.State.t(),
          state_time: Google.Protobuf.Timestamp.t() | nil,
          error: Google.Rpc.Status.t() | nil
        }

  defstruct [
    :create_time,
    :update_time,
    :name,
    :registration_id,
    :service_account,
    :version,
    :bucket,
    :state,
    :state_time,
    :error
  ]

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :name, 3, type: :string
  field :registration_id, 12, type: :string, json_name: "registrationId"
  field :service_account, 5, type: :string, json_name: "serviceAccount"
  field :version, 6, type: :string
  field :bucket, 10, type: :string
  field :state, 7, type: Google.Cloud.Vmmigration.V1.DatacenterConnector.State, enum: true
  field :state_time, 8, type: Google.Protobuf.Timestamp, json_name: "stateTime"
  field :error, 11, type: Google.Rpc.Status

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.ListSourcesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.ListSourcesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sources: [Google.Cloud.Vmmigration.V1.Source.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:sources, :next_page_token, :unreachable]

  field :sources, 1, repeated: true, type: Google.Cloud.Vmmigration.V1.Source
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.GetSourceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.CreateSourceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          source_id: String.t(),
          source: Google.Cloud.Vmmigration.V1.Source.t() | nil,
          request_id: String.t()
        }

  defstruct [:parent, :source_id, :source, :request_id]

  field :parent, 1, type: :string
  field :source_id, 2, type: :string, json_name: "sourceId"
  field :source, 3, type: Google.Cloud.Vmmigration.V1.Source
  field :request_id, 4, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.UpdateSourceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          source: Google.Cloud.Vmmigration.V1.Source.t() | nil,
          request_id: String.t()
        }

  defstruct [:update_mask, :source, :request_id]

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :source, 2, type: Google.Cloud.Vmmigration.V1.Source
  field :request_id, 3, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.DeleteSourceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct [:name, :request_id]

  field :name, 1, type: :string
  field :request_id, 2, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.FetchInventoryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: String.t(),
          force_refresh: boolean
        }

  defstruct [:source, :force_refresh]

  field :source, 1, type: :string
  field :force_refresh, 2, type: :bool, json_name: "forceRefresh"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.VmwareVmDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          vm_id: String.t(),
          datacenter_id: String.t(),
          datacenter_description: String.t(),
          uuid: String.t(),
          display_name: String.t(),
          power_state: Google.Cloud.Vmmigration.V1.VmwareVmDetails.PowerState.t(),
          cpu_count: integer,
          memory_mb: integer,
          disk_count: integer,
          committed_storage_mb: integer,
          guest_description: String.t(),
          boot_option: Google.Cloud.Vmmigration.V1.VmwareVmDetails.BootOption.t()
        }

  defstruct [
    :vm_id,
    :datacenter_id,
    :datacenter_description,
    :uuid,
    :display_name,
    :power_state,
    :cpu_count,
    :memory_mb,
    :disk_count,
    :committed_storage_mb,
    :guest_description,
    :boot_option
  ]

  field :vm_id, 1, type: :string, json_name: "vmId"
  field :datacenter_id, 2, type: :string, json_name: "datacenterId"
  field :datacenter_description, 3, type: :string, json_name: "datacenterDescription"
  field :uuid, 4, type: :string
  field :display_name, 5, type: :string, json_name: "displayName"

  field :power_state, 6,
    type: Google.Cloud.Vmmigration.V1.VmwareVmDetails.PowerState,
    enum: true,
    json_name: "powerState"

  field :cpu_count, 7, type: :int32, json_name: "cpuCount"
  field :memory_mb, 8, type: :int32, json_name: "memoryMb"
  field :disk_count, 9, type: :int32, json_name: "diskCount"
  field :committed_storage_mb, 12, type: :int64, json_name: "committedStorageMb"
  field :guest_description, 11, type: :string, json_name: "guestDescription"

  field :boot_option, 13,
    type: Google.Cloud.Vmmigration.V1.VmwareVmDetails.BootOption,
    enum: true,
    json_name: "bootOption"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.VmwareVmsDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          details: [Google.Cloud.Vmmigration.V1.VmwareVmDetails.t()]
        }

  defstruct [:details]

  field :details, 1, repeated: true, type: Google.Cloud.Vmmigration.V1.VmwareVmDetails

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.FetchInventoryResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          SourceVms: {:vmware_vms, Google.Cloud.Vmmigration.V1.VmwareVmsDetails.t() | nil},
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:SourceVms, :update_time]

  oneof :SourceVms, 0

  field :vmware_vms, 1,
    type: Google.Cloud.Vmmigration.V1.VmwareVmsDetails,
    json_name: "vmwareVms",
    oneof: 0

  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.UtilizationReport do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          state: Google.Cloud.Vmmigration.V1.UtilizationReport.State.t(),
          state_time: Google.Protobuf.Timestamp.t() | nil,
          error: Google.Rpc.Status.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          time_frame: Google.Cloud.Vmmigration.V1.UtilizationReport.TimeFrame.t(),
          frame_end_time: Google.Protobuf.Timestamp.t() | nil,
          vm_count: integer,
          vms: [Google.Cloud.Vmmigration.V1.VmUtilizationInfo.t()]
        }

  defstruct [
    :name,
    :display_name,
    :state,
    :state_time,
    :error,
    :create_time,
    :time_frame,
    :frame_end_time,
    :vm_count,
    :vms
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :state, 3, type: Google.Cloud.Vmmigration.V1.UtilizationReport.State, enum: true
  field :state_time, 4, type: Google.Protobuf.Timestamp, json_name: "stateTime"
  field :error, 5, type: Google.Rpc.Status
  field :create_time, 6, type: Google.Protobuf.Timestamp, json_name: "createTime"

  field :time_frame, 7,
    type: Google.Cloud.Vmmigration.V1.UtilizationReport.TimeFrame,
    enum: true,
    json_name: "timeFrame"

  field :frame_end_time, 8, type: Google.Protobuf.Timestamp, json_name: "frameEndTime"
  field :vm_count, 9, type: :int32, json_name: "vmCount"
  field :vms, 10, repeated: true, type: Google.Cloud.Vmmigration.V1.VmUtilizationInfo

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.VmUtilizationInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          VmDetails: {:vmware_vm_details, Google.Cloud.Vmmigration.V1.VmwareVmDetails.t() | nil},
          vm_id: String.t(),
          utilization: Google.Cloud.Vmmigration.V1.VmUtilizationMetrics.t() | nil
        }

  defstruct [:VmDetails, :vm_id, :utilization]

  oneof :VmDetails, 0

  field :vmware_vm_details, 1,
    type: Google.Cloud.Vmmigration.V1.VmwareVmDetails,
    json_name: "vmwareVmDetails",
    oneof: 0

  field :vm_id, 3, type: :string, json_name: "vmId"
  field :utilization, 2, type: Google.Cloud.Vmmigration.V1.VmUtilizationMetrics

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.VmUtilizationMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cpu_max_percent: integer,
          cpu_average_percent: integer,
          memory_max_percent: integer,
          memory_average_percent: integer,
          disk_io_rate_max_kbps: integer,
          disk_io_rate_average_kbps: integer,
          network_throughput_max_kbps: integer,
          network_throughput_average_kbps: integer
        }

  defstruct [
    :cpu_max_percent,
    :cpu_average_percent,
    :memory_max_percent,
    :memory_average_percent,
    :disk_io_rate_max_kbps,
    :disk_io_rate_average_kbps,
    :network_throughput_max_kbps,
    :network_throughput_average_kbps
  ]

  field :cpu_max_percent, 9, type: :int32, json_name: "cpuMaxPercent"
  field :cpu_average_percent, 10, type: :int32, json_name: "cpuAveragePercent"
  field :memory_max_percent, 11, type: :int32, json_name: "memoryMaxPercent"
  field :memory_average_percent, 12, type: :int32, json_name: "memoryAveragePercent"
  field :disk_io_rate_max_kbps, 13, type: :int64, json_name: "diskIoRateMaxKbps"
  field :disk_io_rate_average_kbps, 14, type: :int64, json_name: "diskIoRateAverageKbps"
  field :network_throughput_max_kbps, 15, type: :int64, json_name: "networkThroughputMaxKbps"

  field :network_throughput_average_kbps, 16,
    type: :int64,
    json_name: "networkThroughputAverageKbps"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.ListUtilizationReportsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          view: Google.Cloud.Vmmigration.V1.UtilizationReportView.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :view, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :view, 2, type: Google.Cloud.Vmmigration.V1.UtilizationReportView, enum: true
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :filter, 5, type: :string
  field :order_by, 6, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.ListUtilizationReportsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          utilization_reports: [Google.Cloud.Vmmigration.V1.UtilizationReport.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:utilization_reports, :next_page_token, :unreachable]

  field :utilization_reports, 1,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.UtilizationReport,
    json_name: "utilizationReports"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.GetUtilizationReportRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          view: Google.Cloud.Vmmigration.V1.UtilizationReportView.t()
        }

  defstruct [:name, :view]

  field :name, 1, type: :string
  field :view, 2, type: Google.Cloud.Vmmigration.V1.UtilizationReportView, enum: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.CreateUtilizationReportRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          utilization_report: Google.Cloud.Vmmigration.V1.UtilizationReport.t() | nil,
          utilization_report_id: String.t(),
          request_id: String.t()
        }

  defstruct [:parent, :utilization_report, :utilization_report_id, :request_id]

  field :parent, 1, type: :string

  field :utilization_report, 2,
    type: Google.Cloud.Vmmigration.V1.UtilizationReport,
    json_name: "utilizationReport"

  field :utilization_report_id, 3, type: :string, json_name: "utilizationReportId"
  field :request_id, 4, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.DeleteUtilizationReportRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct [:name, :request_id]

  field :name, 1, type: :string
  field :request_id, 2, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.ListDatacenterConnectorsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          datacenter_connectors: [Google.Cloud.Vmmigration.V1.DatacenterConnector.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:datacenter_connectors, :next_page_token, :unreachable]

  field :datacenter_connectors, 1,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.DatacenterConnector,
    json_name: "datacenterConnectors"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.GetDatacenterConnectorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.CreateDatacenterConnectorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          datacenter_connector_id: String.t(),
          datacenter_connector: Google.Cloud.Vmmigration.V1.DatacenterConnector.t() | nil,
          request_id: String.t()
        }

  defstruct [:parent, :datacenter_connector_id, :datacenter_connector, :request_id]

  field :parent, 1, type: :string
  field :datacenter_connector_id, 2, type: :string, json_name: "datacenterConnectorId"

  field :datacenter_connector, 3,
    type: Google.Cloud.Vmmigration.V1.DatacenterConnector,
    json_name: "datacenterConnector"

  field :request_id, 4, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.DeleteDatacenterConnectorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct [:name, :request_id]

  field :name, 1, type: :string
  field :request_id, 2, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.ListDatacenterConnectorsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.ComputeEngineTargetDefaults.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.ComputeEngineTargetDefaults.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.ComputeEngineTargetDefaults do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          vm_name: String.t(),
          target_project: String.t(),
          zone: String.t(),
          machine_type_series: String.t(),
          machine_type: String.t(),
          network_tags: [String.t()],
          network_interfaces: [Google.Cloud.Vmmigration.V1.NetworkInterface.t()],
          service_account: String.t(),
          disk_type: Google.Cloud.Vmmigration.V1.ComputeEngineDiskType.t(),
          labels: %{String.t() => String.t()},
          license_type: Google.Cloud.Vmmigration.V1.ComputeEngineLicenseType.t(),
          applied_license: Google.Cloud.Vmmigration.V1.AppliedLicense.t() | nil,
          compute_scheduling: Google.Cloud.Vmmigration.V1.ComputeScheduling.t() | nil,
          secure_boot: boolean,
          boot_option: Google.Cloud.Vmmigration.V1.ComputeEngineBootOption.t(),
          metadata: %{String.t() => String.t()}
        }

  defstruct [
    :vm_name,
    :target_project,
    :zone,
    :machine_type_series,
    :machine_type,
    :network_tags,
    :network_interfaces,
    :service_account,
    :disk_type,
    :labels,
    :license_type,
    :applied_license,
    :compute_scheduling,
    :secure_boot,
    :boot_option,
    :metadata
  ]

  field :vm_name, 1, type: :string, json_name: "vmName"
  field :target_project, 2, type: :string, json_name: "targetProject"
  field :zone, 3, type: :string
  field :machine_type_series, 4, type: :string, json_name: "machineTypeSeries"
  field :machine_type, 5, type: :string, json_name: "machineType"
  field :network_tags, 6, repeated: true, type: :string, json_name: "networkTags"

  field :network_interfaces, 7,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.NetworkInterface,
    json_name: "networkInterfaces"

  field :service_account, 8, type: :string, json_name: "serviceAccount"

  field :disk_type, 9,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineDiskType,
    enum: true,
    json_name: "diskType"

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineTargetDefaults.LabelsEntry,
    map: true

  field :license_type, 11,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineLicenseType,
    enum: true,
    json_name: "licenseType"

  field :applied_license, 12,
    type: Google.Cloud.Vmmigration.V1.AppliedLicense,
    json_name: "appliedLicense"

  field :compute_scheduling, 13,
    type: Google.Cloud.Vmmigration.V1.ComputeScheduling,
    json_name: "computeScheduling"

  field :secure_boot, 14, type: :bool, json_name: "secureBoot"

  field :boot_option, 15,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineBootOption,
    enum: true,
    json_name: "bootOption"

  field :metadata, 16,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineTargetDefaults.MetadataEntry,
    map: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.ComputeEngineTargetDetails.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.ComputeEngineTargetDetails.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.ComputeEngineTargetDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          vm_name: String.t(),
          project: String.t(),
          zone: String.t(),
          machine_type_series: String.t(),
          machine_type: String.t(),
          network_tags: [String.t()],
          network_interfaces: [Google.Cloud.Vmmigration.V1.NetworkInterface.t()],
          service_account: String.t(),
          disk_type: Google.Cloud.Vmmigration.V1.ComputeEngineDiskType.t(),
          labels: %{String.t() => String.t()},
          license_type: Google.Cloud.Vmmigration.V1.ComputeEngineLicenseType.t(),
          applied_license: Google.Cloud.Vmmigration.V1.AppliedLicense.t() | nil,
          compute_scheduling: Google.Cloud.Vmmigration.V1.ComputeScheduling.t() | nil,
          secure_boot: boolean,
          boot_option: Google.Cloud.Vmmigration.V1.ComputeEngineBootOption.t(),
          metadata: %{String.t() => String.t()}
        }

  defstruct [
    :vm_name,
    :project,
    :zone,
    :machine_type_series,
    :machine_type,
    :network_tags,
    :network_interfaces,
    :service_account,
    :disk_type,
    :labels,
    :license_type,
    :applied_license,
    :compute_scheduling,
    :secure_boot,
    :boot_option,
    :metadata
  ]

  field :vm_name, 1, type: :string, json_name: "vmName"
  field :project, 2, type: :string
  field :zone, 3, type: :string
  field :machine_type_series, 4, type: :string, json_name: "machineTypeSeries"
  field :machine_type, 5, type: :string, json_name: "machineType"
  field :network_tags, 6, repeated: true, type: :string, json_name: "networkTags"

  field :network_interfaces, 7,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.NetworkInterface,
    json_name: "networkInterfaces"

  field :service_account, 8, type: :string, json_name: "serviceAccount"

  field :disk_type, 9,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineDiskType,
    enum: true,
    json_name: "diskType"

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineTargetDetails.LabelsEntry,
    map: true

  field :license_type, 11,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineLicenseType,
    enum: true,
    json_name: "licenseType"

  field :applied_license, 12,
    type: Google.Cloud.Vmmigration.V1.AppliedLicense,
    json_name: "appliedLicense"

  field :compute_scheduling, 13,
    type: Google.Cloud.Vmmigration.V1.ComputeScheduling,
    json_name: "computeScheduling"

  field :secure_boot, 14, type: :bool, json_name: "secureBoot"

  field :boot_option, 15,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineBootOption,
    enum: true,
    json_name: "bootOption"

  field :metadata, 16,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineTargetDetails.MetadataEntry,
    map: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.NetworkInterface do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          network: String.t(),
          subnetwork: String.t(),
          internal_ip: String.t(),
          external_ip: String.t()
        }

  defstruct [:network, :subnetwork, :internal_ip, :external_ip]

  field :network, 1, type: :string
  field :subnetwork, 2, type: :string
  field :internal_ip, 3, type: :string, json_name: "internalIp"
  field :external_ip, 4, type: :string, json_name: "externalIp"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.AppliedLicense do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Vmmigration.V1.AppliedLicense.Type.t(),
          os_license: String.t()
        }

  defstruct [:type, :os_license]

  field :type, 1, type: Google.Cloud.Vmmigration.V1.AppliedLicense.Type, enum: true
  field :os_license, 2, type: :string, json_name: "osLicense"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.SchedulingNodeAffinity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          operator: Google.Cloud.Vmmigration.V1.SchedulingNodeAffinity.Operator.t(),
          values: [String.t()]
        }

  defstruct [:key, :operator, :values]

  field :key, 1, type: :string

  field :operator, 2,
    type: Google.Cloud.Vmmigration.V1.SchedulingNodeAffinity.Operator,
    enum: true

  field :values, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.ComputeScheduling do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          on_host_maintenance:
            Google.Cloud.Vmmigration.V1.ComputeScheduling.OnHostMaintenance.t(),
          restart_type: Google.Cloud.Vmmigration.V1.ComputeScheduling.RestartType.t(),
          node_affinities: [Google.Cloud.Vmmigration.V1.SchedulingNodeAffinity.t()],
          min_node_cpus: integer
        }

  defstruct [:on_host_maintenance, :restart_type, :node_affinities, :min_node_cpus]

  field :on_host_maintenance, 1,
    type: Google.Cloud.Vmmigration.V1.ComputeScheduling.OnHostMaintenance,
    enum: true,
    json_name: "onHostMaintenance"

  field :restart_type, 5,
    type: Google.Cloud.Vmmigration.V1.ComputeScheduling.RestartType,
    enum: true,
    json_name: "restartType"

  field :node_affinities, 3,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.SchedulingNodeAffinity,
    json_name: "nodeAffinities"

  field :min_node_cpus, 4, type: :int32, json_name: "minNodeCpus"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.SchedulePolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          idle_duration: Google.Protobuf.Duration.t() | nil,
          skip_os_adaptation: boolean
        }

  defstruct [:idle_duration, :skip_os_adaptation]

  field :idle_duration, 1, type: Google.Protobuf.Duration, json_name: "idleDuration"
  field :skip_os_adaptation, 2, type: :bool, json_name: "skipOsAdaptation"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.CreateMigratingVmRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          migrating_vm_id: String.t(),
          migrating_vm: Google.Cloud.Vmmigration.V1.MigratingVm.t() | nil,
          request_id: String.t()
        }

  defstruct [:parent, :migrating_vm_id, :migrating_vm, :request_id]

  field :parent, 1, type: :string
  field :migrating_vm_id, 2, type: :string, json_name: "migratingVmId"
  field :migrating_vm, 3, type: Google.Cloud.Vmmigration.V1.MigratingVm, json_name: "migratingVm"
  field :request_id, 4, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.ListMigratingVmsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.ListMigratingVmsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          migrating_vms: [Google.Cloud.Vmmigration.V1.MigratingVm.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:migrating_vms, :next_page_token, :unreachable]

  field :migrating_vms, 1,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.MigratingVm,
    json_name: "migratingVms"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.GetMigratingVmRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.UpdateMigratingVmRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          migrating_vm: Google.Cloud.Vmmigration.V1.MigratingVm.t() | nil,
          request_id: String.t()
        }

  defstruct [:update_mask, :migrating_vm, :request_id]

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :migrating_vm, 2, type: Google.Cloud.Vmmigration.V1.MigratingVm, json_name: "migratingVm"
  field :request_id, 3, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.DeleteMigratingVmRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.StartMigrationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          migrating_vm: String.t()
        }

  defstruct [:migrating_vm]

  field :migrating_vm, 1, type: :string, json_name: "migratingVm"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.StartMigrationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.PauseMigrationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          migrating_vm: String.t()
        }

  defstruct [:migrating_vm]

  field :migrating_vm, 1, type: :string, json_name: "migratingVm"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.PauseMigrationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.ResumeMigrationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          migrating_vm: String.t()
        }

  defstruct [:migrating_vm]

  field :migrating_vm, 1, type: :string, json_name: "migratingVm"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.ResumeMigrationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.FinalizeMigrationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          migrating_vm: String.t()
        }

  defstruct [:migrating_vm]

  field :migrating_vm, 1, type: :string, json_name: "migratingVm"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.FinalizeMigrationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.TargetProject do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          project: String.t(),
          description: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :project, :description, :create_time, :update_time]

  field :name, 1, type: :string
  field :project, 2, type: :string
  field :description, 3, type: :string
  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 5, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.GetTargetProjectRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.ListTargetProjectsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.ListTargetProjectsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_projects: [Google.Cloud.Vmmigration.V1.TargetProject.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:target_projects, :next_page_token, :unreachable]

  field :target_projects, 1,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.TargetProject,
    json_name: "targetProjects"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.CreateTargetProjectRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          target_project_id: String.t(),
          target_project: Google.Cloud.Vmmigration.V1.TargetProject.t() | nil,
          request_id: String.t()
        }

  defstruct [:parent, :target_project_id, :target_project, :request_id]

  field :parent, 1, type: :string
  field :target_project_id, 2, type: :string, json_name: "targetProjectId"

  field :target_project, 3,
    type: Google.Cloud.Vmmigration.V1.TargetProject,
    json_name: "targetProject"

  field :request_id, 4, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.UpdateTargetProjectRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          target_project: Google.Cloud.Vmmigration.V1.TargetProject.t() | nil,
          request_id: String.t()
        }

  defstruct [:update_mask, :target_project, :request_id]

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :target_project, 2,
    type: Google.Cloud.Vmmigration.V1.TargetProject,
    json_name: "targetProject"

  field :request_id, 3, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.DeleteTargetProjectRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct [:name, :request_id]

  field :name, 1, type: :string
  field :request_id, 2, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.Group do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          description: String.t(),
          display_name: String.t()
        }

  defstruct [:name, :create_time, :update_time, :description, :display_name]

  field :name, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :description, 4, type: :string
  field :display_name, 5, type: :string, json_name: "displayName"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.ListGroupsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.ListGroupsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          groups: [Google.Cloud.Vmmigration.V1.Group.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:groups, :next_page_token, :unreachable]

  field :groups, 1, repeated: true, type: Google.Cloud.Vmmigration.V1.Group
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.GetGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.CreateGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          group_id: String.t(),
          group: Google.Cloud.Vmmigration.V1.Group.t() | nil,
          request_id: String.t()
        }

  defstruct [:parent, :group_id, :group, :request_id]

  field :parent, 1, type: :string
  field :group_id, 2, type: :string, json_name: "groupId"
  field :group, 3, type: Google.Cloud.Vmmigration.V1.Group
  field :request_id, 4, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.UpdateGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          group: Google.Cloud.Vmmigration.V1.Group.t() | nil,
          request_id: String.t()
        }

  defstruct [:update_mask, :group, :request_id]

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :group, 2, type: Google.Cloud.Vmmigration.V1.Group
  field :request_id, 3, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.DeleteGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct [:name, :request_id]

  field :name, 1, type: :string
  field :request_id, 2, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.AddGroupMigrationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          group: String.t(),
          migrating_vm: String.t()
        }

  defstruct [:group, :migrating_vm]

  field :group, 1, type: :string
  field :migrating_vm, 2, type: :string, json_name: "migratingVm"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.AddGroupMigrationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.RemoveGroupMigrationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          group: String.t(),
          migrating_vm: String.t()
        }

  defstruct [:group, :migrating_vm]

  field :group, 1, type: :string
  field :migrating_vm, 2, type: :string, json_name: "migratingVm"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.RemoveGroupMigrationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.CreateCutoverJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          cutover_job_id: String.t(),
          cutover_job: Google.Cloud.Vmmigration.V1.CutoverJob.t() | nil,
          request_id: String.t()
        }

  defstruct [:parent, :cutover_job_id, :cutover_job, :request_id]

  field :parent, 1, type: :string
  field :cutover_job_id, 2, type: :string, json_name: "cutoverJobId"
  field :cutover_job, 3, type: Google.Cloud.Vmmigration.V1.CutoverJob, json_name: "cutoverJob"
  field :request_id, 4, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.CancelCutoverJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.CancelCutoverJobResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.ListCutoverJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.ListCutoverJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cutover_jobs: [Google.Cloud.Vmmigration.V1.CutoverJob.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:cutover_jobs, :next_page_token, :unreachable]

  field :cutover_jobs, 1,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.CutoverJob,
    json_name: "cutoverJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.GetCutoverJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          target: String.t(),
          verb: String.t(),
          status_message: String.t(),
          requested_cancellation: boolean,
          api_version: String.t()
        }

  defstruct [
    :create_time,
    :end_time,
    :target,
    :verb,
    :status_message,
    :requested_cancellation,
    :api_version
  ]

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :status_message, 5, type: :string, json_name: "statusMessage"
  field :requested_cancellation, 6, type: :bool, json_name: "requestedCancellation"
  field :api_version, 7, type: :string, json_name: "apiVersion"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.MigrationError do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          code: Google.Cloud.Vmmigration.V1.MigrationError.ErrorCode.t(),
          error_message: Google.Rpc.LocalizedMessage.t() | nil,
          action_item: Google.Rpc.LocalizedMessage.t() | nil,
          help_links: [Google.Rpc.Help.Link.t()],
          error_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:code, :error_message, :action_item, :help_links, :error_time]

  field :code, 1, type: Google.Cloud.Vmmigration.V1.MigrationError.ErrorCode, enum: true
  field :error_message, 2, type: Google.Rpc.LocalizedMessage, json_name: "errorMessage"
  field :action_item, 3, type: Google.Rpc.LocalizedMessage, json_name: "actionItem"
  field :help_links, 4, repeated: true, type: Google.Rpc.Help.Link, json_name: "helpLinks"
  field :error_time, 5, type: Google.Protobuf.Timestamp, json_name: "errorTime"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vmmigration.V1.VmMigration.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.vmmigration.v1.VmMigration"

  rpc :ListSources,
      Google.Cloud.Vmmigration.V1.ListSourcesRequest,
      Google.Cloud.Vmmigration.V1.ListSourcesResponse

  rpc :GetSource, Google.Cloud.Vmmigration.V1.GetSourceRequest, Google.Cloud.Vmmigration.V1.Source

  rpc :CreateSource, Google.Cloud.Vmmigration.V1.CreateSourceRequest, Google.Longrunning.Operation

  rpc :UpdateSource, Google.Cloud.Vmmigration.V1.UpdateSourceRequest, Google.Longrunning.Operation

  rpc :DeleteSource, Google.Cloud.Vmmigration.V1.DeleteSourceRequest, Google.Longrunning.Operation

  rpc :FetchInventory,
      Google.Cloud.Vmmigration.V1.FetchInventoryRequest,
      Google.Cloud.Vmmigration.V1.FetchInventoryResponse

  rpc :ListUtilizationReports,
      Google.Cloud.Vmmigration.V1.ListUtilizationReportsRequest,
      Google.Cloud.Vmmigration.V1.ListUtilizationReportsResponse

  rpc :GetUtilizationReport,
      Google.Cloud.Vmmigration.V1.GetUtilizationReportRequest,
      Google.Cloud.Vmmigration.V1.UtilizationReport

  rpc :CreateUtilizationReport,
      Google.Cloud.Vmmigration.V1.CreateUtilizationReportRequest,
      Google.Longrunning.Operation

  rpc :DeleteUtilizationReport,
      Google.Cloud.Vmmigration.V1.DeleteUtilizationReportRequest,
      Google.Longrunning.Operation

  rpc :ListDatacenterConnectors,
      Google.Cloud.Vmmigration.V1.ListDatacenterConnectorsRequest,
      Google.Cloud.Vmmigration.V1.ListDatacenterConnectorsResponse

  rpc :GetDatacenterConnector,
      Google.Cloud.Vmmigration.V1.GetDatacenterConnectorRequest,
      Google.Cloud.Vmmigration.V1.DatacenterConnector

  rpc :CreateDatacenterConnector,
      Google.Cloud.Vmmigration.V1.CreateDatacenterConnectorRequest,
      Google.Longrunning.Operation

  rpc :DeleteDatacenterConnector,
      Google.Cloud.Vmmigration.V1.DeleteDatacenterConnectorRequest,
      Google.Longrunning.Operation

  rpc :CreateMigratingVm,
      Google.Cloud.Vmmigration.V1.CreateMigratingVmRequest,
      Google.Longrunning.Operation

  rpc :ListMigratingVms,
      Google.Cloud.Vmmigration.V1.ListMigratingVmsRequest,
      Google.Cloud.Vmmigration.V1.ListMigratingVmsResponse

  rpc :GetMigratingVm,
      Google.Cloud.Vmmigration.V1.GetMigratingVmRequest,
      Google.Cloud.Vmmigration.V1.MigratingVm

  rpc :UpdateMigratingVm,
      Google.Cloud.Vmmigration.V1.UpdateMigratingVmRequest,
      Google.Longrunning.Operation

  rpc :DeleteMigratingVm,
      Google.Cloud.Vmmigration.V1.DeleteMigratingVmRequest,
      Google.Longrunning.Operation

  rpc :StartMigration,
      Google.Cloud.Vmmigration.V1.StartMigrationRequest,
      Google.Longrunning.Operation

  rpc :ResumeMigration,
      Google.Cloud.Vmmigration.V1.ResumeMigrationRequest,
      Google.Longrunning.Operation

  rpc :PauseMigration,
      Google.Cloud.Vmmigration.V1.PauseMigrationRequest,
      Google.Longrunning.Operation

  rpc :FinalizeMigration,
      Google.Cloud.Vmmigration.V1.FinalizeMigrationRequest,
      Google.Longrunning.Operation

  rpc :CreateCloneJob,
      Google.Cloud.Vmmigration.V1.CreateCloneJobRequest,
      Google.Longrunning.Operation

  rpc :CancelCloneJob,
      Google.Cloud.Vmmigration.V1.CancelCloneJobRequest,
      Google.Longrunning.Operation

  rpc :ListCloneJobs,
      Google.Cloud.Vmmigration.V1.ListCloneJobsRequest,
      Google.Cloud.Vmmigration.V1.ListCloneJobsResponse

  rpc :GetCloneJob,
      Google.Cloud.Vmmigration.V1.GetCloneJobRequest,
      Google.Cloud.Vmmigration.V1.CloneJob

  rpc :CreateCutoverJob,
      Google.Cloud.Vmmigration.V1.CreateCutoverJobRequest,
      Google.Longrunning.Operation

  rpc :CancelCutoverJob,
      Google.Cloud.Vmmigration.V1.CancelCutoverJobRequest,
      Google.Longrunning.Operation

  rpc :ListCutoverJobs,
      Google.Cloud.Vmmigration.V1.ListCutoverJobsRequest,
      Google.Cloud.Vmmigration.V1.ListCutoverJobsResponse

  rpc :GetCutoverJob,
      Google.Cloud.Vmmigration.V1.GetCutoverJobRequest,
      Google.Cloud.Vmmigration.V1.CutoverJob

  rpc :ListGroups,
      Google.Cloud.Vmmigration.V1.ListGroupsRequest,
      Google.Cloud.Vmmigration.V1.ListGroupsResponse

  rpc :GetGroup, Google.Cloud.Vmmigration.V1.GetGroupRequest, Google.Cloud.Vmmigration.V1.Group

  rpc :CreateGroup, Google.Cloud.Vmmigration.V1.CreateGroupRequest, Google.Longrunning.Operation

  rpc :UpdateGroup, Google.Cloud.Vmmigration.V1.UpdateGroupRequest, Google.Longrunning.Operation

  rpc :DeleteGroup, Google.Cloud.Vmmigration.V1.DeleteGroupRequest, Google.Longrunning.Operation

  rpc :AddGroupMigration,
      Google.Cloud.Vmmigration.V1.AddGroupMigrationRequest,
      Google.Longrunning.Operation

  rpc :RemoveGroupMigration,
      Google.Cloud.Vmmigration.V1.RemoveGroupMigrationRequest,
      Google.Longrunning.Operation

  rpc :ListTargetProjects,
      Google.Cloud.Vmmigration.V1.ListTargetProjectsRequest,
      Google.Cloud.Vmmigration.V1.ListTargetProjectsResponse

  rpc :GetTargetProject,
      Google.Cloud.Vmmigration.V1.GetTargetProjectRequest,
      Google.Cloud.Vmmigration.V1.TargetProject

  rpc :CreateTargetProject,
      Google.Cloud.Vmmigration.V1.CreateTargetProjectRequest,
      Google.Longrunning.Operation

  rpc :UpdateTargetProject,
      Google.Cloud.Vmmigration.V1.UpdateTargetProjectRequest,
      Google.Longrunning.Operation

  rpc :DeleteTargetProject,
      Google.Cloud.Vmmigration.V1.DeleteTargetProjectRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Vmmigration.V1.VmMigration.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Vmmigration.V1.VmMigration.Service
end
