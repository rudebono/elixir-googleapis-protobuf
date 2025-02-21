defmodule Google.Ads.Searchads360.V0.Resources.AdGroupAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :ad_group, 2, type: :string, json_name: "adGroup", deprecated: false
  field :asset, 3, type: :string, deprecated: false

  field :status, 5,
    type: Google.Ads.Searchads360.V0.Enums.AssetLinkStatusEnum.AssetLinkStatus,
    enum: true
end
