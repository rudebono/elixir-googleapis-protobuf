defmodule Google.Ads.Googleads.V13.Resources.AssetFieldTypeView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :field_type, 3,
    type: Google.Ads.Googleads.V13.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "fieldType",
    enum: true,
    deprecated: false
end