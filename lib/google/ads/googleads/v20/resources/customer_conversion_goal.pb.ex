defmodule Google.Ads.Googleads.V20.Resources.CustomerConversionGoal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :category, 2,
    type: Google.Ads.Googleads.V20.Enums.ConversionActionCategoryEnum.ConversionActionCategory,
    enum: true

  field :origin, 3,
    type: Google.Ads.Googleads.V20.Enums.ConversionOriginEnum.ConversionOrigin,
    enum: true

  field :biddable, 4, type: :bool
end
