defmodule Google.Cloud.Deploy.V1.AutomationEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :message, 1, type: :string
  field :automation, 2, type: :string
  field :pipeline_uid, 3, type: :string, json_name: "pipelineUid"
  field :type, 4, type: Google.Cloud.Deploy.V1.Type, enum: true
end