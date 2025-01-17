defmodule Google.Cloud.Osconfig.V1beta.PatchJob.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :REBOOT_CONFIG_UNSPECIFIED, 0
  field :DEFAULT, 1
  field :ALWAYS, 2
  field :NEVER, 3
end

defmodule Google.Cloud.Osconfig.V1beta.Instance.PatchState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :DIST, 1
  field :UPGRADE, 2
end

defmodule Google.Cloud.Osconfig.V1beta.WindowsUpdateSettings.Classification do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :INTERPRETER_UNSPECIFIED, 0
  field :SHELL, 1
  field :POWERSHELL, 2
end

defmodule Google.Cloud.Osconfig.V1beta.PatchRollout.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :ZONE_BY_ZONE, 1
  field :CONCURRENT_ZONES, 2
end

defmodule Google.Cloud.Osconfig.V1beta.ExecutePatchJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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
  field :rollout, 9, type: Google.Cloud.Osconfig.V1beta.PatchRollout
end

defmodule Google.Cloud.Osconfig.V1beta.GetPatchJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Osconfig.V1beta.ListPatchJobInstanceDetailsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Osconfig.V1beta.ListPatchJobInstanceDetailsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :patch_job_instance_details, 1,
    repeated: true,
    type: Google.Cloud.Osconfig.V1beta.PatchJobInstanceDetails,
    json_name: "patchJobInstanceDetails"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Osconfig.V1beta.PatchJobInstanceDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :instance_system_id, 2, type: :string, json_name: "instanceSystemId"
  field :state, 3, type: Google.Cloud.Osconfig.V1beta.Instance.PatchState, enum: true
  field :failure_reason, 4, type: :string, json_name: "failureReason"
  field :attempt_count, 5, type: :int64, json_name: "attemptCount"
end

defmodule Google.Cloud.Osconfig.V1beta.ListPatchJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Osconfig.V1beta.ListPatchJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :patch_jobs, 1,
    repeated: true,
    type: Google.Cloud.Osconfig.V1beta.PatchJob,
    json_name: "patchJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Osconfig.V1beta.PatchJob.InstanceDetailsSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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
  field :rollout, 16, type: Google.Cloud.Osconfig.V1beta.PatchRollout
end

defmodule Google.Cloud.Osconfig.V1beta.PatchConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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
  field :mig_instances_allowed, 10, type: :bool, json_name: "migInstancesAllowed"
end

defmodule Google.Cloud.Osconfig.V1beta.Instance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Osconfig.V1beta.CancelPatchJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Osconfig.V1beta.AptSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Osconfig.V1beta.AptSettings.Type, enum: true
  field :excludes, 2, repeated: true, type: :string
  field :exclusive_packages, 3, repeated: true, type: :string, json_name: "exclusivePackages"
end

defmodule Google.Cloud.Osconfig.V1beta.YumSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :security, 1, type: :bool
  field :minimal, 2, type: :bool
  field :excludes, 3, repeated: true, type: :string
  field :exclusive_packages, 4, repeated: true, type: :string, json_name: "exclusivePackages"
end

defmodule Google.Cloud.Osconfig.V1beta.GooSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Osconfig.V1beta.ZypperSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :with_optional, 1, type: :bool, json_name: "withOptional"
  field :with_update, 2, type: :bool, json_name: "withUpdate"
  field :categories, 3, repeated: true, type: :string
  field :severities, 4, repeated: true, type: :string
  field :excludes, 5, repeated: true, type: :string
  field :exclusive_patches, 6, repeated: true, type: :string, json_name: "exclusivePatches"
end

defmodule Google.Cloud.Osconfig.V1beta.WindowsUpdateSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :classifications, 1,
    repeated: true,
    type: Google.Cloud.Osconfig.V1beta.WindowsUpdateSettings.Classification,
    enum: true

  field :excludes, 2, repeated: true, type: :string
  field :exclusive_patches, 3, repeated: true, type: :string, json_name: "exclusivePatches"
end

defmodule Google.Cloud.Osconfig.V1beta.ExecStep do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :linux_exec_step_config, 1,
    type: Google.Cloud.Osconfig.V1beta.ExecStepConfig,
    json_name: "linuxExecStepConfig"

  field :windows_exec_step_config, 2,
    type: Google.Cloud.Osconfig.V1beta.ExecStepConfig,
    json_name: "windowsExecStepConfig"
end

defmodule Google.Cloud.Osconfig.V1beta.ExecStepConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :object, 2, type: :string, deprecated: false
  field :generation_number, 3, type: :int64, json_name: "generationNumber", deprecated: false
end

defmodule Google.Cloud.Osconfig.V1beta.PatchInstanceFilter.GroupLabel.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Osconfig.V1beta.PatchInstanceFilter.GroupLabel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :labels, 1,
    repeated: true,
    type: Google.Cloud.Osconfig.V1beta.PatchInstanceFilter.GroupLabel.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Osconfig.V1beta.PatchInstanceFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

defmodule Google.Cloud.Osconfig.V1beta.PatchRollout do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :mode, 1, type: Google.Cloud.Osconfig.V1beta.PatchRollout.Mode, enum: true

  field :disruption_budget, 2,
    type: Google.Cloud.Osconfig.V1beta.FixedOrPercent,
    json_name: "disruptionBudget"
end
