defmodule Google.Ads.Googleads.V9.Resources.CustomerAsset do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :asset, 2, type: :string, deprecated: false

  field :field_type, 3,
    type: Google.Ads.Googleads.V9.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "fieldType",
    enum: true,
    deprecated: false

  field :status, 4,
    type: Google.Ads.Googleads.V9.Enums.AssetLinkStatusEnum.AssetLinkStatus,
    enum: true
end
