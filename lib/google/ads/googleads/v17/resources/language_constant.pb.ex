defmodule Google.Ads.Googleads.V17.Resources.LanguageConstant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 6, proto3_optional: true, type: :int64, deprecated: false
  field :code, 7, proto3_optional: true, type: :string, deprecated: false
  field :name, 8, proto3_optional: true, type: :string, deprecated: false
  field :targetable, 9, proto3_optional: true, type: :bool, deprecated: false
end
