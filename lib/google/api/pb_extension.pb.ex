defmodule Google.Api.PbExtension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1"

  extend Google.Protobuf.FieldOptions, :field_behavior, 1052,
    repeated: true,
    type: Google.Api.FieldBehavior,
    json_name: "fieldBehavior",
    enum: true,
    packed: false,
    deprecated: false
end
