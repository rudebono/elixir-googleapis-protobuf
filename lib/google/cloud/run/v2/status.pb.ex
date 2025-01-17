defmodule Google.Cloud.Run.V2.RevisionScalingStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :desired_min_instance_count, 1, type: :int32, json_name: "desiredMinInstanceCount"
end
