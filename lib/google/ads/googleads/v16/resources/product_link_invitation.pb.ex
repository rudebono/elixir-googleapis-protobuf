defmodule Google.Ads.Googleads.V16.Resources.ProductLinkInvitation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :invited_account, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :product_link_invitation_id, 2,
    type: :int64,
    json_name: "productLinkInvitationId",
    deprecated: false

  field :status, 3,
    type:
      Google.Ads.Googleads.V16.Enums.ProductLinkInvitationStatusEnum.ProductLinkInvitationStatus,
    enum: true,
    deprecated: false

  field :type, 6,
    type: Google.Ads.Googleads.V16.Enums.LinkedProductTypeEnum.LinkedProductType,
    enum: true,
    deprecated: false

  field :hotel_center, 4,
    type: Google.Ads.Googleads.V16.Resources.HotelCenterLinkInvitationIdentifier,
    json_name: "hotelCenter",
    oneof: 0,
    deprecated: false

  field :merchant_center, 5,
    type: Google.Ads.Googleads.V16.Resources.MerchantCenterLinkInvitationIdentifier,
    json_name: "merchantCenter",
    oneof: 0,
    deprecated: false

  field :advertising_partner, 7,
    type: Google.Ads.Googleads.V16.Resources.AdvertisingPartnerLinkInvitationIdentifier,
    json_name: "advertisingPartner",
    oneof: 0,
    deprecated: false
end

defmodule Google.Ads.Googleads.V16.Resources.HotelCenterLinkInvitationIdentifier do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :hotel_center_id, 1, type: :int64, json_name: "hotelCenterId", deprecated: false
end

defmodule Google.Ads.Googleads.V16.Resources.MerchantCenterLinkInvitationIdentifier do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :merchant_center_id, 1, type: :int64, json_name: "merchantCenterId", deprecated: false
end

defmodule Google.Ads.Googleads.V16.Resources.AdvertisingPartnerLinkInvitationIdentifier do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :customer, 1, proto3_optional: true, type: :string, deprecated: false
end