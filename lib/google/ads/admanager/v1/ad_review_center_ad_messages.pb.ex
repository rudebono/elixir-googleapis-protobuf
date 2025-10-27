defmodule Google.Ads.Admanager.V1.AdReviewCenterAd do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :ad_review_center_ad_id, 2,
    type: :string,
    json_name: "adReviewCenterAdId",
    deprecated: false

  field :product_type, 3,
    type: Google.Ads.Admanager.V1.ExchangeSyndicationProductEnum.ExchangeSyndicationProduct,
    json_name: "productType",
    enum: true,
    deprecated: false

  field :status, 4,
    type: Google.Ads.Admanager.V1.AdReviewCenterAdStatusEnum.AdReviewCenterAdStatus,
    enum: true

  field :preview_url, 5,
    proto3_optional: true,
    type: :string,
    json_name: "previewUrl",
    deprecated: false
end
