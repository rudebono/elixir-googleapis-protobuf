defmodule Google.Cloud.Osconfig.V1.PatchJob.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :STARTED
          | :INSTANCE_LOOKUP
          | :PATCHING
          | :SUCCEEDED
          | :COMPLETED_WITH_ERRORS
          | :CANCELED
          | :TIMED_OUT

  field :STATE_UNSPECIFIED, 0

  field :STARTED, 1

  field :INSTANCE_LOOKUP, 2

  field :PATCHING, 3

  field :SUCCEEDED, 4

  field :COMPLETED_WITH_ERRORS, 5

  field :CANCELED, 6

  field :TIMED_OUT, 7
end

defmodule Google.Cloud.Osconfig.V1.PatchConfig.RebootConfig do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :REBOOT_CONFIG_UNSPECIFIED | :DEFAULT | :ALWAYS | :NEVER

  field :REBOOT_CONFIG_UNSPECIFIED, 0

  field :DEFAULT, 1

  field :ALWAYS, 2

  field :NEVER, 3
end

defmodule Google.Cloud.Osconfig.V1.Instance.PatchState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :PATCH_STATE_UNSPECIFIED
          | :PENDING
          | :INACTIVE
          | :NOTIFIED
          | :STARTED
          | :DOWNLOADING_PATCHES
          | :APPLYING_PATCHES
          | :REBOOTING
          | :SUCCEEDED
          | :SUCCEEDED_REBOOT_REQUIRED
          | :FAILED
          | :ACKED
          | :TIMED_OUT
          | :RUNNING_PRE_PATCH_STEP
          | :RUNNING_POST_PATCH_STEP
          | :NO_AGENT_DETECTED

  field :PATCH_STATE_UNSPECIFIED, 0

  field :PENDING, 1

  field :INACTIVE, 2

  field :NOTIFIED, 3

  field :STARTED, 4

  field :DOWNLOADING_PATCHES, 5

  field :APPLYING_PATCHES, 6

  field :REBOOTING, 7

  field :SUCCEEDED, 8

  field :SUCCEEDED_REBOOT_REQUIRED, 9

  field :FAILED, 10

  field :ACKED, 11

  field :TIMED_OUT, 12

  field :RUNNING_PRE_PATCH_STEP, 13

  field :RUNNING_POST_PATCH_STEP, 14

  field :NO_AGENT_DETECTED, 15
end

defmodule Google.Cloud.Osconfig.V1.AptSettings.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TYPE_UNSPECIFIED | :DIST | :UPGRADE

  field :TYPE_UNSPECIFIED, 0

  field :DIST, 1

  field :UPGRADE, 2
end

defmodule Google.Cloud.Osconfig.V1.WindowsUpdateSettings.Classification do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CLASSIFICATION_UNSPECIFIED
          | :CRITICAL
          | :SECURITY
          | :DEFINITION
          | :DRIVER
          | :FEATURE_PACK
          | :SERVICE_PACK
          | :TOOL
          | :UPDATE_ROLLUP
          | :UPDATE

  field :CLASSIFICATION_UNSPECIFIED, 0

  field :CRITICAL, 1

  field :SECURITY, 2

  field :DEFINITION, 3

  field :DRIVER, 4

  field :FEATURE_PACK, 5

  field :SERVICE_PACK, 6

  field :TOOL, 7

  field :UPDATE_ROLLUP, 8

  field :UPDATE, 9
end

defmodule Google.Cloud.Osconfig.V1.ExecStepConfig.Interpreter do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :INTERPRETER_UNSPECIFIED | :SHELL | :POWERSHELL

  field :INTERPRETER_UNSPECIFIED, 0

  field :SHELL, 1

  field :POWERSHELL, 2
end

defmodule Google.Cloud.Osconfig.V1.PatchRollout.Mode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :MODE_UNSPECIFIED | :ZONE_BY_ZONE | :CONCURRENT_ZONES

  field :MODE_UNSPECIFIED, 0

  field :ZONE_BY_ZONE, 1

  field :CONCURRENT_ZONES, 2
end

defmodule Google.Cloud.Osconfig.V1.ExecutePatchJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          description: String.t(),
          instance_filter: Google.Cloud.Osconfig.V1.PatchInstanceFilter.t() | nil,
          patch_config: Google.Cloud.Osconfig.V1.PatchConfig.t() | nil,
          duration: Google.Protobuf.Duration.t() | nil,
          dry_run: boolean,
          display_name: String.t(),
          rollout: Google.Cloud.Osconfig.V1.PatchRollout.t() | nil
        }

  defstruct [
    :parent,
    :description,
    :instance_filter,
    :patch_config,
    :duration,
    :dry_run,
    :display_name,
    :rollout
  ]

  field :parent, 1, type: :string
  field :description, 2, type: :string
  field :instance_filter, 7, type: Google.Cloud.Osconfig.V1.PatchInstanceFilter
  field :patch_config, 4, type: Google.Cloud.Osconfig.V1.PatchConfig
  field :duration, 5, type: Google.Protobuf.Duration
  field :dry_run, 6, type: :bool
  field :display_name, 8, type: :string
  field :rollout, 9, type: Google.Cloud.Osconfig.V1.PatchRollout
end

defmodule Google.Cloud.Osconfig.V1.GetPatchJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Osconfig.V1.ListPatchJobInstanceDetailsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Osconfig.V1.ListPatchJobInstanceDetailsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          patch_job_instance_details: [Google.Cloud.Osconfig.V1.PatchJobInstanceDetails.t()],
          next_page_token: String.t()
        }

  defstruct [:patch_job_instance_details, :next_page_token]

  field :patch_job_instance_details, 1,
    repeated: true,
    type: Google.Cloud.Osconfig.V1.PatchJobInstanceDetails

  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Osconfig.V1.PatchJobInstanceDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          instance_system_id: String.t(),
          state: Google.Cloud.Osconfig.V1.Instance.PatchState.t(),
          failure_reason: String.t(),
          attempt_count: integer
        }

  defstruct [:name, :instance_system_id, :state, :failure_reason, :attempt_count]

  field :name, 1, type: :string
  field :instance_system_id, 2, type: :string
  field :state, 3, type: Google.Cloud.Osconfig.V1.Instance.PatchState, enum: true
  field :failure_reason, 4, type: :string
  field :attempt_count, 5, type: :int64
end

defmodule Google.Cloud.Osconfig.V1.ListPatchJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Osconfig.V1.ListPatchJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          patch_jobs: [Google.Cloud.Osconfig.V1.PatchJob.t()],
          next_page_token: String.t()
        }

  defstruct [:patch_jobs, :next_page_token]

  field :patch_jobs, 1, repeated: true, type: Google.Cloud.Osconfig.V1.PatchJob
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Osconfig.V1.PatchJob.InstanceDetailsSummary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pending_instance_count: integer,
          inactive_instance_count: integer,
          notified_instance_count: integer,
          started_instance_count: integer,
          downloading_patches_instance_count: integer,
          applying_patches_instance_count: integer,
          rebooting_instance_count: integer,
          succeeded_instance_count: integer,
          succeeded_reboot_required_instance_count: integer,
          failed_instance_count: integer,
          acked_instance_count: integer,
          timed_out_instance_count: integer,
          pre_patch_step_instance_count: integer,
          post_patch_step_instance_count: integer,
          no_agent_detected_instance_count: integer
        }

  defstruct [
    :pending_instance_count,
    :inactive_instance_count,
    :notified_instance_count,
    :started_instance_count,
    :downloading_patches_instance_count,
    :applying_patches_instance_count,
    :rebooting_instance_count,
    :succeeded_instance_count,
    :succeeded_reboot_required_instance_count,
    :failed_instance_count,
    :acked_instance_count,
    :timed_out_instance_count,
    :pre_patch_step_instance_count,
    :post_patch_step_instance_count,
    :no_agent_detected_instance_count
  ]

  field :pending_instance_count, 1, type: :int64
  field :inactive_instance_count, 2, type: :int64
  field :notified_instance_count, 3, type: :int64
  field :started_instance_count, 4, type: :int64
  field :downloading_patches_instance_count, 5, type: :int64
  field :applying_patches_instance_count, 6, type: :int64
  field :rebooting_instance_count, 7, type: :int64
  field :succeeded_instance_count, 8, type: :int64
  field :succeeded_reboot_required_instance_count, 9, type: :int64
  field :failed_instance_count, 10, type: :int64
  field :acked_instance_count, 11, type: :int64
  field :timed_out_instance_count, 12, type: :int64
  field :pre_patch_step_instance_count, 13, type: :int64
  field :post_patch_step_instance_count, 14, type: :int64
  field :no_agent_detected_instance_count, 15, type: :int64
end

defmodule Google.Cloud.Osconfig.V1.PatchJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Osconfig.V1.PatchJob.State.t(),
          instance_filter: Google.Cloud.Osconfig.V1.PatchInstanceFilter.t() | nil,
          patch_config: Google.Cloud.Osconfig.V1.PatchConfig.t() | nil,
          duration: Google.Protobuf.Duration.t() | nil,
          instance_details_summary:
            Google.Cloud.Osconfig.V1.PatchJob.InstanceDetailsSummary.t() | nil,
          dry_run: boolean,
          error_message: String.t(),
          percent_complete: float | :infinity | :negative_infinity | :nan,
          patch_deployment: String.t(),
          rollout: Google.Cloud.Osconfig.V1.PatchRollout.t() | nil
        }

  defstruct [
    :name,
    :display_name,
    :description,
    :create_time,
    :update_time,
    :state,
    :instance_filter,
    :patch_config,
    :duration,
    :instance_details_summary,
    :dry_run,
    :error_message,
    :percent_complete,
    :patch_deployment,
    :rollout
  ]

  field :name, 1, type: :string
  field :display_name, 14, type: :string
  field :description, 2, type: :string
  field :create_time, 3, type: Google.Protobuf.Timestamp
  field :update_time, 4, type: Google.Protobuf.Timestamp
  field :state, 5, type: Google.Cloud.Osconfig.V1.PatchJob.State, enum: true
  field :instance_filter, 13, type: Google.Cloud.Osconfig.V1.PatchInstanceFilter
  field :patch_config, 7, type: Google.Cloud.Osconfig.V1.PatchConfig
  field :duration, 8, type: Google.Protobuf.Duration

  field :instance_details_summary, 9,
    type: Google.Cloud.Osconfig.V1.PatchJob.InstanceDetailsSummary

  field :dry_run, 10, type: :bool
  field :error_message, 11, type: :string
  field :percent_complete, 12, type: :double
  field :patch_deployment, 15, type: :string
  field :rollout, 16, type: Google.Cloud.Osconfig.V1.PatchRollout
end

defmodule Google.Cloud.Osconfig.V1.PatchConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reboot_config: Google.Cloud.Osconfig.V1.PatchConfig.RebootConfig.t(),
          apt: Google.Cloud.Osconfig.V1.AptSettings.t() | nil,
          yum: Google.Cloud.Osconfig.V1.YumSettings.t() | nil,
          goo: Google.Cloud.Osconfig.V1.GooSettings.t() | nil,
          zypper: Google.Cloud.Osconfig.V1.ZypperSettings.t() | nil,
          windows_update: Google.Cloud.Osconfig.V1.WindowsUpdateSettings.t() | nil,
          pre_step: Google.Cloud.Osconfig.V1.ExecStep.t() | nil,
          post_step: Google.Cloud.Osconfig.V1.ExecStep.t() | nil
        }

  defstruct [:reboot_config, :apt, :yum, :goo, :zypper, :windows_update, :pre_step, :post_step]

  field :reboot_config, 1, type: Google.Cloud.Osconfig.V1.PatchConfig.RebootConfig, enum: true
  field :apt, 3, type: Google.Cloud.Osconfig.V1.AptSettings
  field :yum, 4, type: Google.Cloud.Osconfig.V1.YumSettings
  field :goo, 5, type: Google.Cloud.Osconfig.V1.GooSettings
  field :zypper, 6, type: Google.Cloud.Osconfig.V1.ZypperSettings
  field :windows_update, 7, type: Google.Cloud.Osconfig.V1.WindowsUpdateSettings
  field :pre_step, 8, type: Google.Cloud.Osconfig.V1.ExecStep
  field :post_step, 9, type: Google.Cloud.Osconfig.V1.ExecStep
end

defmodule Google.Cloud.Osconfig.V1.Instance do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Osconfig.V1.CancelPatchJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Osconfig.V1.AptSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Osconfig.V1.AptSettings.Type.t(),
          excludes: [String.t()],
          exclusive_packages: [String.t()]
        }

  defstruct [:type, :excludes, :exclusive_packages]

  field :type, 1, type: Google.Cloud.Osconfig.V1.AptSettings.Type, enum: true
  field :excludes, 2, repeated: true, type: :string
  field :exclusive_packages, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Osconfig.V1.YumSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          security: boolean,
          minimal: boolean,
          excludes: [String.t()],
          exclusive_packages: [String.t()]
        }

  defstruct [:security, :minimal, :excludes, :exclusive_packages]

  field :security, 1, type: :bool
  field :minimal, 2, type: :bool
  field :excludes, 3, repeated: true, type: :string
  field :exclusive_packages, 4, repeated: true, type: :string
end

defmodule Google.Cloud.Osconfig.V1.GooSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Osconfig.V1.ZypperSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          with_optional: boolean,
          with_update: boolean,
          categories: [String.t()],
          severities: [String.t()],
          excludes: [String.t()],
          exclusive_patches: [String.t()]
        }

  defstruct [
    :with_optional,
    :with_update,
    :categories,
    :severities,
    :excludes,
    :exclusive_patches
  ]

  field :with_optional, 1, type: :bool
  field :with_update, 2, type: :bool
  field :categories, 3, repeated: true, type: :string
  field :severities, 4, repeated: true, type: :string
  field :excludes, 5, repeated: true, type: :string
  field :exclusive_patches, 6, repeated: true, type: :string
end

defmodule Google.Cloud.Osconfig.V1.WindowsUpdateSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          classifications: [[Google.Cloud.Osconfig.V1.WindowsUpdateSettings.Classification.t()]],
          excludes: [String.t()],
          exclusive_patches: [String.t()]
        }

  defstruct [:classifications, :excludes, :exclusive_patches]

  field :classifications, 1,
    repeated: true,
    type: Google.Cloud.Osconfig.V1.WindowsUpdateSettings.Classification,
    enum: true

  field :excludes, 2, repeated: true, type: :string
  field :exclusive_patches, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Osconfig.V1.ExecStep do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          linux_exec_step_config: Google.Cloud.Osconfig.V1.ExecStepConfig.t() | nil,
          windows_exec_step_config: Google.Cloud.Osconfig.V1.ExecStepConfig.t() | nil
        }

  defstruct [:linux_exec_step_config, :windows_exec_step_config]

  field :linux_exec_step_config, 1, type: Google.Cloud.Osconfig.V1.ExecStepConfig
  field :windows_exec_step_config, 2, type: Google.Cloud.Osconfig.V1.ExecStepConfig
end

defmodule Google.Cloud.Osconfig.V1.ExecStepConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          executable: {atom, any},
          allowed_success_codes: [integer],
          interpreter: Google.Cloud.Osconfig.V1.ExecStepConfig.Interpreter.t()
        }

  defstruct [:executable, :allowed_success_codes, :interpreter]

  oneof :executable, 0
  field :local_path, 1, type: :string, oneof: 0
  field :gcs_object, 2, type: Google.Cloud.Osconfig.V1.GcsObject, oneof: 0
  field :allowed_success_codes, 3, repeated: true, type: :int32
  field :interpreter, 4, type: Google.Cloud.Osconfig.V1.ExecStepConfig.Interpreter, enum: true
end

defmodule Google.Cloud.Osconfig.V1.GcsObject do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          object: String.t(),
          generation_number: integer
        }

  defstruct [:bucket, :object, :generation_number]

  field :bucket, 1, type: :string
  field :object, 2, type: :string
  field :generation_number, 3, type: :int64
end

defmodule Google.Cloud.Osconfig.V1.PatchInstanceFilter.GroupLabel.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Osconfig.V1.PatchInstanceFilter.GroupLabel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          labels: %{String.t() => String.t()}
        }

  defstruct [:labels]

  field :labels, 1,
    repeated: true,
    type: Google.Cloud.Osconfig.V1.PatchInstanceFilter.GroupLabel.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Osconfig.V1.PatchInstanceFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          all: boolean,
          group_labels: [Google.Cloud.Osconfig.V1.PatchInstanceFilter.GroupLabel.t()],
          zones: [String.t()],
          instances: [String.t()],
          instance_name_prefixes: [String.t()]
        }

  defstruct [:all, :group_labels, :zones, :instances, :instance_name_prefixes]

  field :all, 1, type: :bool

  field :group_labels, 2,
    repeated: true,
    type: Google.Cloud.Osconfig.V1.PatchInstanceFilter.GroupLabel

  field :zones, 3, repeated: true, type: :string
  field :instances, 4, repeated: true, type: :string
  field :instance_name_prefixes, 5, repeated: true, type: :string
end

defmodule Google.Cloud.Osconfig.V1.PatchRollout do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mode: Google.Cloud.Osconfig.V1.PatchRollout.Mode.t(),
          disruption_budget: Google.Cloud.Osconfig.V1.FixedOrPercent.t() | nil
        }

  defstruct [:mode, :disruption_budget]

  field :mode, 1, type: Google.Cloud.Osconfig.V1.PatchRollout.Mode, enum: true
  field :disruption_budget, 2, type: Google.Cloud.Osconfig.V1.FixedOrPercent
end
