defmodule Google.Ads.Googleads.V4.Resources.AdGroupBidModifier do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          criterion: {atom, any},
          resource_name: String.t(),
          ad_group: Google.Protobuf.StringValue.t() | nil,
          criterion_id: Google.Protobuf.Int64Value.t() | nil,
          bid_modifier: Google.Protobuf.DoubleValue.t() | nil,
          base_ad_group: Google.Protobuf.StringValue.t() | nil,
          bid_modifier_source:
            Google.Ads.Googleads.V4.Enums.BidModifierSourceEnum.BidModifierSource.t()
        }

  defstruct [
    :criterion,
    :resource_name,
    :ad_group,
    :criterion_id,
    :bid_modifier,
    :base_ad_group,
    :bid_modifier_source
  ]

  oneof :criterion, 0
  field :resource_name, 1, type: :string
  field :ad_group, 2, type: Google.Protobuf.StringValue
  field :criterion_id, 3, type: Google.Protobuf.Int64Value
  field :bid_modifier, 4, type: Google.Protobuf.DoubleValue
  field :base_ad_group, 9, type: Google.Protobuf.StringValue

  field :bid_modifier_source, 10,
    type: Google.Ads.Googleads.V4.Enums.BidModifierSourceEnum.BidModifierSource,
    enum: true

  field :hotel_date_selection_type, 5,
    type: Google.Ads.Googleads.V4.Common.HotelDateSelectionTypeInfo,
    oneof: 0

  field :hotel_advance_booking_window, 6,
    type: Google.Ads.Googleads.V4.Common.HotelAdvanceBookingWindowInfo,
    oneof: 0

  field :hotel_length_of_stay, 7,
    type: Google.Ads.Googleads.V4.Common.HotelLengthOfStayInfo,
    oneof: 0

  field :hotel_check_in_day, 8, type: Google.Ads.Googleads.V4.Common.HotelCheckInDayInfo, oneof: 0
  field :device, 11, type: Google.Ads.Googleads.V4.Common.DeviceInfo, oneof: 0

  field :preferred_content, 12,
    type: Google.Ads.Googleads.V4.Common.PreferredContentInfo,
    oneof: 0
end
