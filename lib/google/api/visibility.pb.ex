defmodule Google.Api.Visibility do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :rules, 1, repeated: true, type: Google.Api.VisibilityRule
end
defmodule Google.Api.VisibilityRule do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :selector, 1, type: :string
  field :restriction, 2, type: :string
end
defmodule Google.Api.PbExtension do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
