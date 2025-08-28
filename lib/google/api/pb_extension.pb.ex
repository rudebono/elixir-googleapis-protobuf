defmodule Google.Api.PbExtension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0"

  extend Google.Protobuf.FieldOptions, :field_info, 291_403_980,
    optional: true,
    type: Google.Api.FieldInfo,
    json_name: "fieldInfo"
end
