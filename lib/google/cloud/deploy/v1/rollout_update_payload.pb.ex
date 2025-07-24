defmodule Google.Cloud.Deploy.V1.RolloutUpdateEvent.RolloutUpdateType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ROLLOUT_UPDATE_TYPE_UNSPECIFIED, 0
  field :PENDING, 1
  field :PENDING_RELEASE, 2
  field :IN_PROGRESS, 3
  field :CANCELLING, 4
  field :CANCELLED, 5
  field :HALTED, 6
  field :SUCCEEDED, 7
  field :FAILED, 8
  field :APPROVAL_REQUIRED, 9
  field :APPROVED, 10
  field :REJECTED, 11
  field :ADVANCE_REQUIRED, 12
  field :ADVANCED, 13
end

defmodule Google.Cloud.Deploy.V1.RolloutUpdateEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :message, 6, type: :string
  field :pipeline_uid, 1, type: :string, json_name: "pipelineUid"
  field :release_uid, 2, type: :string, json_name: "releaseUid"
  field :release, 8, type: :string
  field :rollout, 3, type: :string
  field :target_id, 4, type: :string, json_name: "targetId"
  field :type, 7, type: Google.Cloud.Deploy.V1.Type, enum: true

  field :rollout_update_type, 5,
    type: Google.Cloud.Deploy.V1.RolloutUpdateEvent.RolloutUpdateType,
    json_name: "rolloutUpdateType",
    enum: true
end
