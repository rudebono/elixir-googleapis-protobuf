defmodule Google.Api.FieldBehavior do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :FIELD_BEHAVIOR_UNSPECIFIED, 0
  field :OPTIONAL, 1
  field :REQUIRED, 2
  field :OUTPUT_ONLY, 3
  field :INPUT_ONLY, 4
  field :IMMUTABLE, 5
  field :UNORDERED_LIST, 6
  field :NON_EMPTY_DEFAULT, 7
end
defmodule Google.Api.PbExtension do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  extend Google.Protobuf.FieldOptions, :field_behavior, 1052,
    repeated: true,
    type: Google.Api.FieldBehavior,
    json_name: "fieldBehavior",
    enum: true
end
