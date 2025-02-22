defmodule Google.Cloud.Deploy.V1.RolloutNotificationEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :message, 1, type: :string
  field :pipeline_uid, 2, type: :string, json_name: "pipelineUid"
  field :release_uid, 3, type: :string, json_name: "releaseUid"
  field :release, 7, type: :string
  field :rollout_uid, 8, type: :string, json_name: "rolloutUid"
  field :rollout, 4, type: :string
  field :target_id, 6, type: :string, json_name: "targetId"
  field :type, 5, type: Google.Cloud.Deploy.V1.Type, enum: true
end
