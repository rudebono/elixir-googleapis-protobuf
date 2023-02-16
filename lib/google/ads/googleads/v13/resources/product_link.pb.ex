defmodule Google.Ads.Googleads.V13.Resources.ProductLink do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :linked_product, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :product_link_id, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "productLinkId",
    deprecated: false

  field :type, 3,
    type: Google.Ads.Googleads.V13.Enums.LinkedProductTypeEnum.LinkedProductType,
    enum: true,
    deprecated: false

  field :data_partner, 4,
    type: Google.Ads.Googleads.V13.Resources.DataPartnerIdentifier,
    json_name: "dataPartner",
    oneof: 0,
    deprecated: false

  field :google_ads, 5,
    type: Google.Ads.Googleads.V13.Resources.GoogleAdsIdentifier,
    json_name: "googleAds",
    oneof: 0,
    deprecated: false
end

defmodule Google.Ads.Googleads.V13.Resources.DataPartnerIdentifier do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data_partner_id, 1,
    proto3_optional: true,
    type: :int64,
    json_name: "dataPartnerId",
    deprecated: false
end

defmodule Google.Ads.Googleads.V13.Resources.GoogleAdsIdentifier do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :customer, 1, proto3_optional: true, type: :string, deprecated: false
end