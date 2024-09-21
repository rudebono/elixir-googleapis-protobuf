defmodule Google.Ads.Searchads360.V0.Resources.AssetGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 9, type: :int64, deprecated: false
  field :campaign, 2, type: :string, deprecated: false
  field :name, 3, type: :string, deprecated: false
  field :final_urls, 4, repeated: true, type: :string, json_name: "finalUrls"
  field :final_mobile_urls, 5, repeated: true, type: :string, json_name: "finalMobileUrls"

  field :status, 6,
    type: Google.Ads.Searchads360.V0.Enums.AssetGroupStatusEnum.AssetGroupStatus,
    enum: true

  field :path1, 7, type: :string
  field :path2, 8, type: :string

  field :ad_strength, 10,
    type: Google.Ads.Searchads360.V0.Enums.AdStrengthEnum.AdStrength,
    json_name: "adStrength",
    enum: true,
    deprecated: false
end