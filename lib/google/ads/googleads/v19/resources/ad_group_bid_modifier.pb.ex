defmodule Google.Ads.Googleads.V19.Resources.AdGroupBidModifier do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :criterion, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :ad_group, 13,
    proto3_optional: true,
    type: :string,
    json_name: "adGroup",
    deprecated: false

  field :criterion_id, 14,
    proto3_optional: true,
    type: :int64,
    json_name: "criterionId",
    deprecated: false

  field :bid_modifier, 15, proto3_optional: true, type: :double, json_name: "bidModifier"

  field :base_ad_group, 16,
    proto3_optional: true,
    type: :string,
    json_name: "baseAdGroup",
    deprecated: false

  field :bid_modifier_source, 10,
    type: Google.Ads.Googleads.V19.Enums.BidModifierSourceEnum.BidModifierSource,
    json_name: "bidModifierSource",
    enum: true,
    deprecated: false

  field :hotel_date_selection_type, 5,
    type: Google.Ads.Googleads.V19.Common.HotelDateSelectionTypeInfo,
    json_name: "hotelDateSelectionType",
    oneof: 0,
    deprecated: false

  field :hotel_advance_booking_window, 6,
    type: Google.Ads.Googleads.V19.Common.HotelAdvanceBookingWindowInfo,
    json_name: "hotelAdvanceBookingWindow",
    oneof: 0,
    deprecated: false

  field :hotel_length_of_stay, 7,
    type: Google.Ads.Googleads.V19.Common.HotelLengthOfStayInfo,
    json_name: "hotelLengthOfStay",
    oneof: 0,
    deprecated: false

  field :hotel_check_in_day, 8,
    type: Google.Ads.Googleads.V19.Common.HotelCheckInDayInfo,
    json_name: "hotelCheckInDay",
    oneof: 0,
    deprecated: false

  field :device, 11, type: Google.Ads.Googleads.V19.Common.DeviceInfo, oneof: 0, deprecated: false

  field :hotel_check_in_date_range, 17,
    type: Google.Ads.Googleads.V19.Common.HotelCheckInDateRangeInfo,
    json_name: "hotelCheckInDateRange",
    oneof: 0,
    deprecated: false
end
