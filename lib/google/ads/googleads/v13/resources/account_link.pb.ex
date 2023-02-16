defmodule Google.Ads.Googleads.V13.Resources.AccountLink do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :linked_account, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :account_link_id, 8,
    proto3_optional: true,
    type: :int64,
    json_name: "accountLinkId",
    deprecated: false

  field :status, 3,
    type: Google.Ads.Googleads.V13.Enums.AccountLinkStatusEnum.AccountLinkStatus,
    enum: true

  field :type, 4,
    type: Google.Ads.Googleads.V13.Enums.LinkedAccountTypeEnum.LinkedAccountType,
    enum: true,
    deprecated: false

  field :third_party_app_analytics, 5,
    type: Google.Ads.Googleads.V13.Resources.ThirdPartyAppAnalyticsLinkIdentifier,
    json_name: "thirdPartyAppAnalytics",
    oneof: 0,
    deprecated: false

  field :data_partner, 6,
    type: Google.Ads.Googleads.V13.Resources.DataPartnerLinkIdentifier,
    json_name: "dataPartner",
    oneof: 0,
    deprecated: false

  field :google_ads, 7,
    type: Google.Ads.Googleads.V13.Resources.GoogleAdsLinkIdentifier,
    json_name: "googleAds",
    oneof: 0,
    deprecated: false

  field :hotel_center, 9,
    type: Google.Ads.Googleads.V13.Resources.HotelCenterLinkIdentifier,
    json_name: "hotelCenter",
    oneof: 0,
    deprecated: false

  field :advertising_partner, 10,
    type: Google.Ads.Googleads.V13.Resources.AdvertisingPartnerLinkIdentifier,
    json_name: "advertisingPartner",
    oneof: 0,
    deprecated: false
end

defmodule Google.Ads.Googleads.V13.Resources.ThirdPartyAppAnalyticsLinkIdentifier do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :app_analytics_provider_id, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "appAnalyticsProviderId",
    deprecated: false

  field :app_id, 5, proto3_optional: true, type: :string, json_name: "appId", deprecated: false

  field :app_vendor, 3,
    type: Google.Ads.Googleads.V13.Enums.MobileAppVendorEnum.MobileAppVendor,
    json_name: "appVendor",
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Googleads.V13.Resources.DataPartnerLinkIdentifier do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data_partner_id, 1,
    proto3_optional: true,
    type: :int64,
    json_name: "dataPartnerId",
    deprecated: false
end

defmodule Google.Ads.Googleads.V13.Resources.HotelCenterLinkIdentifier do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :hotel_center_id, 1, type: :int64, json_name: "hotelCenterId", deprecated: false
end

defmodule Google.Ads.Googleads.V13.Resources.GoogleAdsLinkIdentifier do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :customer, 3, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Ads.Googleads.V13.Resources.AdvertisingPartnerLinkIdentifier do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :customer, 1, proto3_optional: true, type: :string, deprecated: false
end