defmodule Google.Cloud.Osconfig.Logging.PatchJobCompletedLog.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STARTED, 1
  field :INSTANCE_LOOKUP, 2
  field :PATCHING, 3
  field :SUCCEEDED, 4
  field :COMPLETED_WITH_ERRORS, 5
  field :CANCELED, 6
  field :TIMED_OUT, 7
end

defmodule Google.Cloud.Osconfig.Logging.PatchJobCompletedLog.InstanceDetailsSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instances_pending, 1, type: :int64, json_name: "instancesPending"
  field :instances_inactive, 2, type: :int64, json_name: "instancesInactive"
  field :instances_notified, 3, type: :int64, json_name: "instancesNotified"
  field :instances_started, 4, type: :int64, json_name: "instancesStarted"
  field :instances_downloading_patches, 5, type: :int64, json_name: "instancesDownloadingPatches"
  field :instances_applying_patches, 6, type: :int64, json_name: "instancesApplyingPatches"
  field :instances_rebooting, 7, type: :int64, json_name: "instancesRebooting"
  field :instances_succeeded, 8, type: :int64, json_name: "instancesSucceeded"

  field :instances_succeeded_reboot_required, 9,
    type: :int64,
    json_name: "instancesSucceededRebootRequired"

  field :instances_failed, 10, type: :int64, json_name: "instancesFailed"
  field :instances_acked, 11, type: :int64, json_name: "instancesAcked"
  field :instances_timed_out, 12, type: :int64, json_name: "instancesTimedOut"

  field :instances_running_pre_patch_step, 13,
    type: :int64,
    json_name: "instancesRunningPrePatchStep"

  field :instances_running_post_patch_step, 14,
    type: :int64,
    json_name: "instancesRunningPostPatchStep"
end

defmodule Google.Cloud.Osconfig.Logging.PatchJobCompletedLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :patch_job, 1, type: :string, json_name: "patchJob"
  field :state, 2, type: Google.Cloud.Osconfig.Logging.PatchJobCompletedLog.State, enum: true

  field :instance_details_summary, 3,
    type: Google.Cloud.Osconfig.Logging.PatchJobCompletedLog.InstanceDetailsSummary,
    json_name: "instanceDetailsSummary"

  field :dry_run, 4, type: :bool, json_name: "dryRun"
  field :error_message, 5, type: :string, json_name: "errorMessage"
  field :create_time, 6, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 7, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end
