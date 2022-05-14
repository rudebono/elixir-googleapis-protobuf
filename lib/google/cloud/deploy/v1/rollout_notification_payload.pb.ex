defmodule Google.Cloud.Deploy.V1.RolloutNotificationEvent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :message, 1, type: :string
  field :pipeline_uid, 2, type: :string, json_name: "pipelineUid"
  field :release_uid, 3, type: :string, json_name: "releaseUid"
  field :rollout, 4, type: :string
  field :type, 5, type: Google.Cloud.Deploy.V1.Type, enum: true
  field :target_id, 6, type: :string, json_name: "targetId"
end
