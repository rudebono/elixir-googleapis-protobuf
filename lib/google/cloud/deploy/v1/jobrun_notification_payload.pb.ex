defmodule Google.Cloud.Deploy.V1.JobRunNotificationEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :message, 1, type: :string
  field :job_run, 2, type: :string, json_name: "jobRun"
  field :pipeline_uid, 3, type: :string, json_name: "pipelineUid"
  field :release_uid, 4, type: :string, json_name: "releaseUid"
  field :rollout_uid, 5, type: :string, json_name: "rolloutUid"
  field :target_id, 6, type: :string, json_name: "targetId"
  field :type, 7, type: Google.Cloud.Deploy.V1.Type, enum: true
end