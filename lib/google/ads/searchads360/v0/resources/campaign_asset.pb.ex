defmodule Google.Ads.Searchads360.V0.Resources.CampaignAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :campaign, 6, proto3_optional: true, type: :string, deprecated: false
  field :asset, 7, proto3_optional: true, type: :string, deprecated: false

  field :status, 5,
    type: Google.Ads.Searchads360.V0.Enums.AssetLinkStatusEnum.AssetLinkStatus,
    enum: true,
    deprecated: false
end
