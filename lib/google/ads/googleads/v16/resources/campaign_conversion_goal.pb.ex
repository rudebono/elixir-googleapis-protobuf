defmodule Google.Ads.Googleads.V16.Resources.CampaignConversionGoal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :campaign, 2, type: :string, deprecated: false

  field :category, 3,
    type: Google.Ads.Googleads.V16.Enums.ConversionActionCategoryEnum.ConversionActionCategory,
    enum: true

  field :origin, 4,
    type: Google.Ads.Googleads.V16.Enums.ConversionOriginEnum.ConversionOrigin,
    enum: true

  field :biddable, 5, type: :bool
end
