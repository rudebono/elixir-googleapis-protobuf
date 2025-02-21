defmodule Google.Cloud.Deploy.V1.ReleaseNotificationEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :message, 1, type: :string
  field :pipeline_uid, 4, type: :string, json_name: "pipelineUid"
  field :release_uid, 5, type: :string, json_name: "releaseUid"
  field :release, 2, type: :string
  field :type, 3, type: Google.Cloud.Deploy.V1.Type, enum: true
end
