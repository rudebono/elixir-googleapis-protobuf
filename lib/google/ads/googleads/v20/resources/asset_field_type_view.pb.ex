defmodule Google.Ads.Googleads.V20.Resources.AssetFieldTypeView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :field_type, 3,
    type: Google.Ads.Googleads.V20.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "fieldType",
    enum: true,
    deprecated: false
end
