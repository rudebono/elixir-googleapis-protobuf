defmodule Google.Cloud.Websecurityscanner.V1alpha.FindingTypeStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :finding_type, 1,
    type: Google.Cloud.Websecurityscanner.V1alpha.Finding.FindingType,
    json_name: "findingType",
    enum: true

  field :finding_count, 2, type: :int32, json_name: "findingCount"
end
