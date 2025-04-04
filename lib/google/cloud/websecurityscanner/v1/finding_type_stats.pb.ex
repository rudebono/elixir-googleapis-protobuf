defmodule Google.Cloud.Websecurityscanner.V1.FindingTypeStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :finding_type, 1, type: :string, json_name: "findingType"
  field :finding_count, 2, type: :int32, json_name: "findingCount"
end
