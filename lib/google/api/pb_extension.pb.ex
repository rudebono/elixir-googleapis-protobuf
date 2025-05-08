defmodule Google.Api.PbExtension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1"

  extend Google.Protobuf.FieldOptions, :field_policy, 158_361_448,
    optional: true,
    type: Google.Api.FieldPolicy,
    json_name: "fieldPolicy"

  extend Google.Protobuf.MethodOptions, :method_policy, 161_893_301,
    optional: true,
    type: Google.Api.MethodPolicy,
    json_name: "methodPolicy"
end
