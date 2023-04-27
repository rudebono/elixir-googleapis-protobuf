defmodule Google.Ads.Googleads.V13.Enums.ShoppingAddProductsToCampaignRecommendationEnum.Reason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :MERCHANT_CENTER_ACCOUNT_HAS_NO_SUBMITTED_PRODUCTS, 2
  field :MERCHANT_CENTER_ACCOUNT_HAS_NO_SUBMITTED_PRODUCTS_IN_FEED, 3
  field :ADS_ACCOUNT_EXCLUDES_OFFERS_FROM_CAMPAIGN, 4
  field :ALL_PRODUCTS_ARE_EXCLUDED_FROM_CAMPAIGN, 5
end

defmodule Google.Ads.Googleads.V13.Enums.ShoppingAddProductsToCampaignRecommendationEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end