defmodule Google.Cloud.Aiplatform.V1beta1.UserActionReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :reference, 0

  field :operation, 1, type: :string, oneof: 0
  field :data_labeling_job, 2, type: :string, json_name: "dataLabelingJob", oneof: 0
  field :method, 3, type: :string
end
