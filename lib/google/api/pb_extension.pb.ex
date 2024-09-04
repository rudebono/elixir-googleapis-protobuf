defmodule Google.Api.PbExtension do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.12.0"

  extend Google.Protobuf.EnumOptions, :enum_visibility, 72_295_727,
    optional: true,
    type: Google.Api.VisibilityRule,
    json_name: "enumVisibility"

  extend Google.Protobuf.EnumValueOptions, :value_visibility, 72_295_727,
    optional: true,
    type: Google.Api.VisibilityRule,
    json_name: "valueVisibility"

  extend Google.Protobuf.FieldOptions, :field_visibility, 72_295_727,
    optional: true,
    type: Google.Api.VisibilityRule,
    json_name: "fieldVisibility"

  extend Google.Protobuf.MessageOptions, :message_visibility, 72_295_727,
    optional: true,
    type: Google.Api.VisibilityRule,
    json_name: "messageVisibility"

  extend Google.Protobuf.MethodOptions, :method_visibility, 72_295_727,
    optional: true,
    type: Google.Api.VisibilityRule,
    json_name: "methodVisibility"

  extend Google.Protobuf.ServiceOptions, :api_visibility, 72_295_727,
    optional: true,
    type: Google.Api.VisibilityRule,
    json_name: "apiVisibility"
end