defmodule Google.Cloud.Osconfig.V1beta.PatchJob.State do
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
defmodule Google.Cloud.Osconfig.V1beta.PatchConfig.RebootConfig do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :REBOOT_CONFIG_UNSPECIFIED | :DEFAULT | :ALWAYS | :NEVER

  field :REBOOT_CONFIG_UNSPECIFIED, 0
  field :DEFAULT, 1
  field :ALWAYS, 2
  field :NEVER, 3
end
defmodule Google.Cloud.Osconfig.V1beta.Instance.PatchState do
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
defmodule Google.Cloud.Osconfig.V1beta.AptSettings.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TYPE_UNSPECIFIED | :DIST | :UPGRADE

  field :TYPE_UNSPECIFIED, 0
  field :DIST, 1
  field :UPGRADE, 2
end
defmodule Google.Cloud.Osconfig.V1beta.WindowsUpdateSettings.Classification do
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
defmodule Google.Cloud.Osconfig.V1beta.ExecStepConfig.Interpreter do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :INTERPRETER_UNSPECIFIED | :SHELL | :POWERSHELL

  field :INTERPRETER_UNSPECIFIED, 0
  field :SHELL, 1
  field :POWERSHELL, 2
end
defmodule Google.Cloud.Osconfig.V1beta.ExecutePatchJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          description: String.t(),
          instance_filter: Google.Cloud.Osconfig.V1beta.PatchInstanceFilter.t() | nil,
          patch_config: Google.Cloud.Osconfig.V1beta.PatchConfig.t() | nil,
          duration: Google.Protobuf.Duration.t() | nil,
          dry_run: boolean,
          display_name: String.t()
        }

  defstruct parent: "",
            description: "",
            instance_filter: nil,
            patch_config: nil,
            duration: nil,
            dry_run: false,
            display_name: ""

  field :parent, 1, type: :string, deprecated: false
  field :description, 2, type: :string

  field :instance_filter, 7,
    type: Google.Cloud.Osconfig.V1beta.PatchInstanceFilter,
    json_name: "instanceFilter",
    deprecated: false

  field :patch_config, 4, type: Google.Cloud.Osconfig.V1beta.PatchConfig, json_name: "patchConfig"
  field :duration, 5, type: Google.Protobuf.Duration
  field :dry_run, 6, type: :bool, json_name: "dryRun"
  field :display_name, 8, type: :string, json_name: "displayName"
end
defmodule Google.Cloud.Osconfig.V1beta.GetPatchJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Osconfig.V1beta.ListPatchJobInstanceDetailsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end
defmodule Google.Cloud.Osconfig.V1beta.ListPatchJobInstanceDetailsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          patch_job_instance_details: [Google.Cloud.Osconfig.V1beta.PatchJobInstanceDetails.t()],
          next_page_token: String.t()
        }

  defstruct patch_job_instance_details: [],
            next_page_token: ""

  field :patch_job_instance_details, 1,
    repeated: true,
    type: Google.Cloud.Osconfig.V1beta.PatchJobInstanceDetails,
    json_name: "patchJobInstanceDetails"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Osconfig.V1beta.PatchJobInstanceDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          instance_system_id: String.t(),
          state: Google.Cloud.Osconfig.V1beta.Instance.PatchState.t(),
          failure_reason: String.t(),
          attempt_count: integer
        }

  defstruct name: "",
            instance_system_id: "",
            state: :PATCH_STATE_UNSPECIFIED,
            failure_reason: "",
            attempt_count: 0

  field :name, 1, type: :string
  field :instance_system_id, 2, type: :string, json_name: "instanceSystemId"
  field :state, 3, type: Google.Cloud.Osconfig.V1beta.Instance.PatchState, enum: true
  field :failure_reason, 4, type: :string, json_name: "failureReason"
  field :attempt_count, 5, type: :int64, json_name: "attemptCount"
end
defmodule Google.Cloud.Osconfig.V1beta.ListPatchJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end
defmodule Google.Cloud.Osconfig.V1beta.ListPatchJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          patch_jobs: [Google.Cloud.Osconfig.V1beta.PatchJob.t()],
          next_page_token: String.t()
        }

  defstruct patch_jobs: [],
            next_page_token: ""

  field :patch_jobs, 1,
    repeated: true,
    type: Google.Cloud.Osconfig.V1beta.PatchJob,
    json_name: "patchJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Osconfig.V1beta.PatchJob.InstanceDetailsSummary do
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

  defstruct pending_instance_count: 0,
            inactive_instance_count: 0,
            notified_instance_count: 0,
            started_instance_count: 0,
            downloading_patches_instance_count: 0,
            applying_patches_instance_count: 0,
            rebooting_instance_count: 0,
            succeeded_instance_count: 0,
            succeeded_reboot_required_instance_count: 0,
            failed_instance_count: 0,
            acked_instance_count: 0,
            timed_out_instance_count: 0,
            pre_patch_step_instance_count: 0,
            post_patch_step_instance_count: 0,
            no_agent_detected_instance_count: 0

  field :pending_instance_count, 1, type: :int64, json_name: "pendingInstanceCount"
  field :inactive_instance_count, 2, type: :int64, json_name: "inactiveInstanceCount"
  field :notified_instance_count, 3, type: :int64, json_name: "notifiedInstanceCount"
  field :started_instance_count, 4, type: :int64, json_name: "startedInstanceCount"

  field :downloading_patches_instance_count, 5,
    type: :int64,
    json_name: "downloadingPatchesInstanceCount"

  field :applying_patches_instance_count, 6,
    type: :int64,
    json_name: "applyingPatchesInstanceCount"

  field :rebooting_instance_count, 7, type: :int64, json_name: "rebootingInstanceCount"
  field :succeeded_instance_count, 8, type: :int64, json_name: "succeededInstanceCount"

  field :succeeded_reboot_required_instance_count, 9,
    type: :int64,
    json_name: "succeededRebootRequiredInstanceCount"

  field :failed_instance_count, 10, type: :int64, json_name: "failedInstanceCount"
  field :acked_instance_count, 11, type: :int64, json_name: "ackedInstanceCount"
  field :timed_out_instance_count, 12, type: :int64, json_name: "timedOutInstanceCount"
  field :pre_patch_step_instance_count, 13, type: :int64, json_name: "prePatchStepInstanceCount"
  field :post_patch_step_instance_count, 14, type: :int64, json_name: "postPatchStepInstanceCount"

  field :no_agent_detected_instance_count, 15,
    type: :int64,
    json_name: "noAgentDetectedInstanceCount"
end
defmodule Google.Cloud.Osconfig.V1beta.PatchJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Osconfig.V1beta.PatchJob.State.t(),
          instance_filter: Google.Cloud.Osconfig.V1beta.PatchInstanceFilter.t() | nil,
          patch_config: Google.Cloud.Osconfig.V1beta.PatchConfig.t() | nil,
          duration: Google.Protobuf.Duration.t() | nil,
          instance_details_summary:
            Google.Cloud.Osconfig.V1beta.PatchJob.InstanceDetailsSummary.t() | nil,
          dry_run: boolean,
          error_message: String.t(),
          percent_complete: float | :infinity | :negative_infinity | :nan,
          patch_deployment: String.t()
        }

  defstruct name: "",
            display_name: "",
            description: "",
            create_time: nil,
            update_time: nil,
            state: :STATE_UNSPECIFIED,
            instance_filter: nil,
            patch_config: nil,
            duration: nil,
            instance_details_summary: nil,
            dry_run: false,
            error_message: "",
            percent_complete: 0.0,
            patch_deployment: ""

  field :name, 1, type: :string
  field :display_name, 14, type: :string, json_name: "displayName"
  field :description, 2, type: :string
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :state, 5, type: Google.Cloud.Osconfig.V1beta.PatchJob.State, enum: true

  field :instance_filter, 13,
    type: Google.Cloud.Osconfig.V1beta.PatchInstanceFilter,
    json_name: "instanceFilter"

  field :patch_config, 7, type: Google.Cloud.Osconfig.V1beta.PatchConfig, json_name: "patchConfig"
  field :duration, 8, type: Google.Protobuf.Duration

  field :instance_details_summary, 9,
    type: Google.Cloud.Osconfig.V1beta.PatchJob.InstanceDetailsSummary,
    json_name: "instanceDetailsSummary"

  field :dry_run, 10, type: :bool, json_name: "dryRun"
  field :error_message, 11, type: :string, json_name: "errorMessage"
  field :percent_complete, 12, type: :double, json_name: "percentComplete"
  field :patch_deployment, 15, type: :string, json_name: "patchDeployment", deprecated: false
end
defmodule Google.Cloud.Osconfig.V1beta.PatchConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reboot_config: Google.Cloud.Osconfig.V1beta.PatchConfig.RebootConfig.t(),
          apt: Google.Cloud.Osconfig.V1beta.AptSettings.t() | nil,
          yum: Google.Cloud.Osconfig.V1beta.YumSettings.t() | nil,
          goo: Google.Cloud.Osconfig.V1beta.GooSettings.t() | nil,
          zypper: Google.Cloud.Osconfig.V1beta.ZypperSettings.t() | nil,
          windows_update: Google.Cloud.Osconfig.V1beta.WindowsUpdateSettings.t() | nil,
          pre_step: Google.Cloud.Osconfig.V1beta.ExecStep.t() | nil,
          post_step: Google.Cloud.Osconfig.V1beta.ExecStep.t() | nil
        }

  defstruct reboot_config: :REBOOT_CONFIG_UNSPECIFIED,
            apt: nil,
            yum: nil,
            goo: nil,
            zypper: nil,
            windows_update: nil,
            pre_step: nil,
            post_step: nil

  field :reboot_config, 1,
    type: Google.Cloud.Osconfig.V1beta.PatchConfig.RebootConfig,
    json_name: "rebootConfig",
    enum: true

  field :apt, 3, type: Google.Cloud.Osconfig.V1beta.AptSettings
  field :yum, 4, type: Google.Cloud.Osconfig.V1beta.YumSettings
  field :goo, 5, type: Google.Cloud.Osconfig.V1beta.GooSettings
  field :zypper, 6, type: Google.Cloud.Osconfig.V1beta.ZypperSettings

  field :windows_update, 7,
    type: Google.Cloud.Osconfig.V1beta.WindowsUpdateSettings,
    json_name: "windowsUpdate"

  field :pre_step, 8, type: Google.Cloud.Osconfig.V1beta.ExecStep, json_name: "preStep"
  field :post_step, 9, type: Google.Cloud.Osconfig.V1beta.ExecStep, json_name: "postStep"
end
defmodule Google.Cloud.Osconfig.V1beta.Instance do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Osconfig.V1beta.CancelPatchJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Osconfig.V1beta.AptSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Osconfig.V1beta.AptSettings.Type.t(),
          excludes: [String.t()],
          exclusive_packages: [String.t()]
        }

  defstruct type: :TYPE_UNSPECIFIED,
            excludes: [],
            exclusive_packages: []

  field :type, 1, type: Google.Cloud.Osconfig.V1beta.AptSettings.Type, enum: true
  field :excludes, 2, repeated: true, type: :string
  field :exclusive_packages, 3, repeated: true, type: :string, json_name: "exclusivePackages"
end
defmodule Google.Cloud.Osconfig.V1beta.YumSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          security: boolean,
          minimal: boolean,
          excludes: [String.t()],
          exclusive_packages: [String.t()]
        }

  defstruct security: false,
            minimal: false,
            excludes: [],
            exclusive_packages: []

  field :security, 1, type: :bool
  field :minimal, 2, type: :bool
  field :excludes, 3, repeated: true, type: :string
  field :exclusive_packages, 4, repeated: true, type: :string, json_name: "exclusivePackages"
end
defmodule Google.Cloud.Osconfig.V1beta.GooSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Osconfig.V1beta.ZypperSettings do
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

  defstruct with_optional: false,
            with_update: false,
            categories: [],
            severities: [],
            excludes: [],
            exclusive_patches: []

  field :with_optional, 1, type: :bool, json_name: "withOptional"
  field :with_update, 2, type: :bool, json_name: "withUpdate"
  field :categories, 3, repeated: true, type: :string
  field :severities, 4, repeated: true, type: :string
  field :excludes, 5, repeated: true, type: :string
  field :exclusive_patches, 6, repeated: true, type: :string, json_name: "exclusivePatches"
end
defmodule Google.Cloud.Osconfig.V1beta.WindowsUpdateSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          classifications: [Google.Cloud.Osconfig.V1beta.WindowsUpdateSettings.Classification.t()],
          excludes: [String.t()],
          exclusive_patches: [String.t()]
        }

  defstruct classifications: [],
            excludes: [],
            exclusive_patches: []

  field :classifications, 1,
    repeated: true,
    type: Google.Cloud.Osconfig.V1beta.WindowsUpdateSettings.Classification,
    enum: true

  field :excludes, 2, repeated: true, type: :string
  field :exclusive_patches, 3, repeated: true, type: :string, json_name: "exclusivePatches"
end
defmodule Google.Cloud.Osconfig.V1beta.ExecStep do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          linux_exec_step_config: Google.Cloud.Osconfig.V1beta.ExecStepConfig.t() | nil,
          windows_exec_step_config: Google.Cloud.Osconfig.V1beta.ExecStepConfig.t() | nil
        }

  defstruct linux_exec_step_config: nil,
            windows_exec_step_config: nil

  field :linux_exec_step_config, 1,
    type: Google.Cloud.Osconfig.V1beta.ExecStepConfig,
    json_name: "linuxExecStepConfig"

  field :windows_exec_step_config, 2,
    type: Google.Cloud.Osconfig.V1beta.ExecStepConfig,
    json_name: "windowsExecStepConfig"
end
defmodule Google.Cloud.Osconfig.V1beta.ExecStepConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          executable:
            {:local_path, String.t()}
            | {:gcs_object, Google.Cloud.Osconfig.V1beta.GcsObject.t() | nil},
          allowed_success_codes: [integer],
          interpreter: Google.Cloud.Osconfig.V1beta.ExecStepConfig.Interpreter.t()
        }

  defstruct executable: nil,
            allowed_success_codes: [],
            interpreter: :INTERPRETER_UNSPECIFIED

  oneof :executable, 0

  field :local_path, 1, type: :string, json_name: "localPath", oneof: 0

  field :gcs_object, 2,
    type: Google.Cloud.Osconfig.V1beta.GcsObject,
    json_name: "gcsObject",
    oneof: 0

  field :allowed_success_codes, 3, repeated: true, type: :int32, json_name: "allowedSuccessCodes"
  field :interpreter, 4, type: Google.Cloud.Osconfig.V1beta.ExecStepConfig.Interpreter, enum: true
end
defmodule Google.Cloud.Osconfig.V1beta.GcsObject do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          object: String.t(),
          generation_number: integer
        }

  defstruct bucket: "",
            object: "",
            generation_number: 0

  field :bucket, 1, type: :string, deprecated: false
  field :object, 2, type: :string, deprecated: false
  field :generation_number, 3, type: :int64, json_name: "generationNumber", deprecated: false
end
defmodule Google.Cloud.Osconfig.V1beta.PatchInstanceFilter.GroupLabel.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Osconfig.V1beta.PatchInstanceFilter.GroupLabel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          labels: %{String.t() => String.t()}
        }

  defstruct labels: %{}

  field :labels, 1,
    repeated: true,
    type: Google.Cloud.Osconfig.V1beta.PatchInstanceFilter.GroupLabel.LabelsEntry,
    map: true
end
defmodule Google.Cloud.Osconfig.V1beta.PatchInstanceFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          all: boolean,
          group_labels: [Google.Cloud.Osconfig.V1beta.PatchInstanceFilter.GroupLabel.t()],
          zones: [String.t()],
          instances: [String.t()],
          instance_name_prefixes: [String.t()]
        }

  defstruct all: false,
            group_labels: [],
            zones: [],
            instances: [],
            instance_name_prefixes: []

  field :all, 1, type: :bool

  field :group_labels, 2,
    repeated: true,
    type: Google.Cloud.Osconfig.V1beta.PatchInstanceFilter.GroupLabel,
    json_name: "groupLabels"

  field :zones, 3, repeated: true, type: :string
  field :instances, 4, repeated: true, type: :string

  field :instance_name_prefixes, 5,
    repeated: true,
    type: :string,
    json_name: "instanceNamePrefixes"
end
