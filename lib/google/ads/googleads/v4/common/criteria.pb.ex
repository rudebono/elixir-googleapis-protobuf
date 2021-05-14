defmodule Google.Ads.Googleads.V4.Common.KeywordInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: Google.Protobuf.StringValue.t() | nil,
          match_type: Google.Ads.Googleads.V4.Enums.KeywordMatchTypeEnum.KeywordMatchType.t()
        }

  defstruct [:text, :match_type]

  field :text, 1, type: Google.Protobuf.StringValue

  field :match_type, 2,
    type: Google.Ads.Googleads.V4.Enums.KeywordMatchTypeEnum.KeywordMatchType,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.PlacementInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:url]

  field :url, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.MobileAppCategoryInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mobile_app_category_constant: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:mobile_app_category_constant]

  field :mobile_app_category_constant, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.MobileApplicationInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          app_id: Google.Protobuf.StringValue.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:app_id, :name]

  field :app_id, 2, type: Google.Protobuf.StringValue
  field :name, 3, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.LocationInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          geo_target_constant: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:geo_target_constant]

  field :geo_target_constant, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.DeviceInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V4.Enums.DeviceEnum.Device.t()
        }

  defstruct [:type]

  field :type, 1, type: Google.Ads.Googleads.V4.Enums.DeviceEnum.Device, enum: true
end

defmodule Google.Ads.Googleads.V4.Common.PreferredContentInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V4.Enums.PreferredContentTypeEnum.PreferredContentType.t()
        }

  defstruct [:type]

  field :type, 2,
    type: Google.Ads.Googleads.V4.Enums.PreferredContentTypeEnum.PreferredContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.ListingGroupInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V4.Enums.ListingGroupTypeEnum.ListingGroupType.t(),
          case_value: Google.Ads.Googleads.V4.Common.ListingDimensionInfo.t() | nil,
          parent_ad_group_criterion: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:type, :case_value, :parent_ad_group_criterion]

  field :type, 1,
    type: Google.Ads.Googleads.V4.Enums.ListingGroupTypeEnum.ListingGroupType,
    enum: true

  field :case_value, 2, type: Google.Ads.Googleads.V4.Common.ListingDimensionInfo
  field :parent_ad_group_criterion, 3, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.ListingScopeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dimensions: [Google.Ads.Googleads.V4.Common.ListingDimensionInfo.t()]
        }

  defstruct [:dimensions]

  field :dimensions, 2, repeated: true, type: Google.Ads.Googleads.V4.Common.ListingDimensionInfo
end

defmodule Google.Ads.Googleads.V4.Common.ListingDimensionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dimension: {atom, any}
        }

  defstruct [:dimension]

  oneof :dimension, 0
  field :hotel_id, 2, type: Google.Ads.Googleads.V4.Common.HotelIdInfo, oneof: 0
  field :hotel_class, 3, type: Google.Ads.Googleads.V4.Common.HotelClassInfo, oneof: 0

  field :hotel_country_region, 4,
    type: Google.Ads.Googleads.V4.Common.HotelCountryRegionInfo,
    oneof: 0

  field :hotel_state, 5, type: Google.Ads.Googleads.V4.Common.HotelStateInfo, oneof: 0
  field :hotel_city, 6, type: Google.Ads.Googleads.V4.Common.HotelCityInfo, oneof: 0

  field :product_bidding_category, 13,
    type: Google.Ads.Googleads.V4.Common.ProductBiddingCategoryInfo,
    oneof: 0

  field :product_brand, 15, type: Google.Ads.Googleads.V4.Common.ProductBrandInfo, oneof: 0
  field :product_channel, 8, type: Google.Ads.Googleads.V4.Common.ProductChannelInfo, oneof: 0

  field :product_channel_exclusivity, 9,
    type: Google.Ads.Googleads.V4.Common.ProductChannelExclusivityInfo,
    oneof: 0

  field :product_condition, 10,
    type: Google.Ads.Googleads.V4.Common.ProductConditionInfo,
    oneof: 0

  field :product_custom_attribute, 16,
    type: Google.Ads.Googleads.V4.Common.ProductCustomAttributeInfo,
    oneof: 0

  field :product_item_id, 11, type: Google.Ads.Googleads.V4.Common.ProductItemIdInfo, oneof: 0
  field :product_type, 12, type: Google.Ads.Googleads.V4.Common.ProductTypeInfo, oneof: 0

  field :unknown_listing_dimension, 14,
    type: Google.Ads.Googleads.V4.Common.UnknownListingDimensionInfo,
    oneof: 0
end

defmodule Google.Ads.Googleads.V4.Common.HotelIdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:value]

  field :value, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.HotelClassInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:value]

  field :value, 1, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Common.HotelCountryRegionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          country_region_criterion: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:country_region_criterion]

  field :country_region_criterion, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.HotelStateInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state_criterion: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:state_criterion]

  field :state_criterion, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.HotelCityInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          city_criterion: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:city_criterion]

  field :city_criterion, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.ProductBiddingCategoryInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: Google.Protobuf.Int64Value.t() | nil,
          country_code: Google.Protobuf.StringValue.t() | nil,
          level:
            Google.Ads.Googleads.V4.Enums.ProductBiddingCategoryLevelEnum.ProductBiddingCategoryLevel.t()
        }

  defstruct [:id, :country_code, :level]

  field :id, 1, type: Google.Protobuf.Int64Value
  field :country_code, 2, type: Google.Protobuf.StringValue

  field :level, 3,
    type:
      Google.Ads.Googleads.V4.Enums.ProductBiddingCategoryLevelEnum.ProductBiddingCategoryLevel,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.ProductBrandInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:value]

  field :value, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.ProductChannelInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel: Google.Ads.Googleads.V4.Enums.ProductChannelEnum.ProductChannel.t()
        }

  defstruct [:channel]

  field :channel, 1,
    type: Google.Ads.Googleads.V4.Enums.ProductChannelEnum.ProductChannel,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.ProductChannelExclusivityInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_exclusivity:
            Google.Ads.Googleads.V4.Enums.ProductChannelExclusivityEnum.ProductChannelExclusivity.t()
        }

  defstruct [:channel_exclusivity]

  field :channel_exclusivity, 1,
    type: Google.Ads.Googleads.V4.Enums.ProductChannelExclusivityEnum.ProductChannelExclusivity,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.ProductConditionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          condition: Google.Ads.Googleads.V4.Enums.ProductConditionEnum.ProductCondition.t()
        }

  defstruct [:condition]

  field :condition, 1,
    type: Google.Ads.Googleads.V4.Enums.ProductConditionEnum.ProductCondition,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.ProductCustomAttributeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: Google.Protobuf.StringValue.t() | nil,
          index:
            Google.Ads.Googleads.V4.Enums.ProductCustomAttributeIndexEnum.ProductCustomAttributeIndex.t()
        }

  defstruct [:value, :index]

  field :value, 1, type: Google.Protobuf.StringValue

  field :index, 2,
    type:
      Google.Ads.Googleads.V4.Enums.ProductCustomAttributeIndexEnum.ProductCustomAttributeIndex,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.ProductItemIdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:value]

  field :value, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.ProductTypeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: Google.Protobuf.StringValue.t() | nil,
          level: Google.Ads.Googleads.V4.Enums.ProductTypeLevelEnum.ProductTypeLevel.t()
        }

  defstruct [:value, :level]

  field :value, 1, type: Google.Protobuf.StringValue

  field :level, 2,
    type: Google.Ads.Googleads.V4.Enums.ProductTypeLevelEnum.ProductTypeLevel,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.UnknownListingDimensionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Ads.Googleads.V4.Common.HotelDateSelectionTypeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type:
            Google.Ads.Googleads.V4.Enums.HotelDateSelectionTypeEnum.HotelDateSelectionType.t()
        }

  defstruct [:type]

  field :type, 1,
    type: Google.Ads.Googleads.V4.Enums.HotelDateSelectionTypeEnum.HotelDateSelectionType,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.HotelAdvanceBookingWindowInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_days: Google.Protobuf.Int64Value.t() | nil,
          max_days: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:min_days, :max_days]

  field :min_days, 1, type: Google.Protobuf.Int64Value
  field :max_days, 2, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Common.HotelLengthOfStayInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_nights: Google.Protobuf.Int64Value.t() | nil,
          max_nights: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:min_nights, :max_nights]

  field :min_nights, 1, type: Google.Protobuf.Int64Value
  field :max_nights, 2, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Common.HotelCheckInDayInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          day_of_week: Google.Ads.Googleads.V4.Enums.DayOfWeekEnum.DayOfWeek.t()
        }

  defstruct [:day_of_week]

  field :day_of_week, 1, type: Google.Ads.Googleads.V4.Enums.DayOfWeekEnum.DayOfWeek, enum: true
end

defmodule Google.Ads.Googleads.V4.Common.InteractionTypeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V4.Enums.InteractionTypeEnum.InteractionType.t()
        }

  defstruct [:type]

  field :type, 1,
    type: Google.Ads.Googleads.V4.Enums.InteractionTypeEnum.InteractionType,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.AdScheduleInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_minute: Google.Ads.Googleads.V4.Enums.MinuteOfHourEnum.MinuteOfHour.t(),
          end_minute: Google.Ads.Googleads.V4.Enums.MinuteOfHourEnum.MinuteOfHour.t(),
          start_hour: Google.Protobuf.Int32Value.t() | nil,
          end_hour: Google.Protobuf.Int32Value.t() | nil,
          day_of_week: Google.Ads.Googleads.V4.Enums.DayOfWeekEnum.DayOfWeek.t()
        }

  defstruct [:start_minute, :end_minute, :start_hour, :end_hour, :day_of_week]

  field :start_minute, 1,
    type: Google.Ads.Googleads.V4.Enums.MinuteOfHourEnum.MinuteOfHour,
    enum: true

  field :end_minute, 2,
    type: Google.Ads.Googleads.V4.Enums.MinuteOfHourEnum.MinuteOfHour,
    enum: true

  field :start_hour, 3, type: Google.Protobuf.Int32Value
  field :end_hour, 4, type: Google.Protobuf.Int32Value
  field :day_of_week, 5, type: Google.Ads.Googleads.V4.Enums.DayOfWeekEnum.DayOfWeek, enum: true
end

defmodule Google.Ads.Googleads.V4.Common.AgeRangeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V4.Enums.AgeRangeTypeEnum.AgeRangeType.t()
        }

  defstruct [:type]

  field :type, 1, type: Google.Ads.Googleads.V4.Enums.AgeRangeTypeEnum.AgeRangeType, enum: true
end

defmodule Google.Ads.Googleads.V4.Common.GenderInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V4.Enums.GenderTypeEnum.GenderType.t()
        }

  defstruct [:type]

  field :type, 1, type: Google.Ads.Googleads.V4.Enums.GenderTypeEnum.GenderType, enum: true
end

defmodule Google.Ads.Googleads.V4.Common.IncomeRangeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V4.Enums.IncomeRangeTypeEnum.IncomeRangeType.t()
        }

  defstruct [:type]

  field :type, 1,
    type: Google.Ads.Googleads.V4.Enums.IncomeRangeTypeEnum.IncomeRangeType,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.ParentalStatusInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V4.Enums.ParentalStatusTypeEnum.ParentalStatusType.t()
        }

  defstruct [:type]

  field :type, 1,
    type: Google.Ads.Googleads.V4.Enums.ParentalStatusTypeEnum.ParentalStatusType,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.YouTubeVideoInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          video_id: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:video_id]

  field :video_id, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.YouTubeChannelInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:channel_id]

  field :channel_id, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.UserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_list: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:user_list]

  field :user_list, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.ProximityInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          geo_point: Google.Ads.Googleads.V4.Common.GeoPointInfo.t() | nil,
          radius: Google.Protobuf.DoubleValue.t() | nil,
          radius_units:
            Google.Ads.Googleads.V4.Enums.ProximityRadiusUnitsEnum.ProximityRadiusUnits.t(),
          address: Google.Ads.Googleads.V4.Common.AddressInfo.t() | nil
        }

  defstruct [:geo_point, :radius, :radius_units, :address]

  field :geo_point, 1, type: Google.Ads.Googleads.V4.Common.GeoPointInfo
  field :radius, 2, type: Google.Protobuf.DoubleValue

  field :radius_units, 3,
    type: Google.Ads.Googleads.V4.Enums.ProximityRadiusUnitsEnum.ProximityRadiusUnits,
    enum: true

  field :address, 4, type: Google.Ads.Googleads.V4.Common.AddressInfo
end

defmodule Google.Ads.Googleads.V4.Common.GeoPointInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          longitude_in_micro_degrees: Google.Protobuf.Int32Value.t() | nil,
          latitude_in_micro_degrees: Google.Protobuf.Int32Value.t() | nil
        }

  defstruct [:longitude_in_micro_degrees, :latitude_in_micro_degrees]

  field :longitude_in_micro_degrees, 1, type: Google.Protobuf.Int32Value
  field :latitude_in_micro_degrees, 2, type: Google.Protobuf.Int32Value
end

defmodule Google.Ads.Googleads.V4.Common.AddressInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          postal_code: Google.Protobuf.StringValue.t() | nil,
          province_code: Google.Protobuf.StringValue.t() | nil,
          country_code: Google.Protobuf.StringValue.t() | nil,
          province_name: Google.Protobuf.StringValue.t() | nil,
          street_address: Google.Protobuf.StringValue.t() | nil,
          street_address2: Google.Protobuf.StringValue.t() | nil,
          city_name: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [
    :postal_code,
    :province_code,
    :country_code,
    :province_name,
    :street_address,
    :street_address2,
    :city_name
  ]

  field :postal_code, 1, type: Google.Protobuf.StringValue
  field :province_code, 2, type: Google.Protobuf.StringValue
  field :country_code, 3, type: Google.Protobuf.StringValue
  field :province_name, 4, type: Google.Protobuf.StringValue
  field :street_address, 5, type: Google.Protobuf.StringValue
  field :street_address2, 6, type: Google.Protobuf.StringValue
  field :city_name, 7, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.TopicInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic_constant: Google.Protobuf.StringValue.t() | nil,
          path: [Google.Protobuf.StringValue.t()]
        }

  defstruct [:topic_constant, :path]

  field :topic_constant, 1, type: Google.Protobuf.StringValue
  field :path, 2, repeated: true, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.LanguageInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          language_constant: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:language_constant]

  field :language_constant, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.IpBlockInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ip_address: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:ip_address]

  field :ip_address, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.ContentLabelInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V4.Enums.ContentLabelTypeEnum.ContentLabelType.t()
        }

  defstruct [:type]

  field :type, 1,
    type: Google.Ads.Googleads.V4.Enums.ContentLabelTypeEnum.ContentLabelType,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.CarrierInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          carrier_constant: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:carrier_constant]

  field :carrier_constant, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.UserInterestInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_interest_category: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:user_interest_category]

  field :user_interest_category, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.WebpageInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          criterion_name: Google.Protobuf.StringValue.t() | nil,
          conditions: [Google.Ads.Googleads.V4.Common.WebpageConditionInfo.t()]
        }

  defstruct [:criterion_name, :conditions]

  field :criterion_name, 1, type: Google.Protobuf.StringValue
  field :conditions, 2, repeated: true, type: Google.Ads.Googleads.V4.Common.WebpageConditionInfo
end

defmodule Google.Ads.Googleads.V4.Common.WebpageConditionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operand:
            Google.Ads.Googleads.V4.Enums.WebpageConditionOperandEnum.WebpageConditionOperand.t(),
          operator:
            Google.Ads.Googleads.V4.Enums.WebpageConditionOperatorEnum.WebpageConditionOperator.t(),
          argument: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:operand, :operator, :argument]

  field :operand, 1,
    type: Google.Ads.Googleads.V4.Enums.WebpageConditionOperandEnum.WebpageConditionOperand,
    enum: true

  field :operator, 2,
    type: Google.Ads.Googleads.V4.Enums.WebpageConditionOperatorEnum.WebpageConditionOperator,
    enum: true

  field :argument, 3, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.OperatingSystemVersionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operating_system_version_constant: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:operating_system_version_constant]

  field :operating_system_version_constant, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.AppPaymentModelInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V4.Enums.AppPaymentModelTypeEnum.AppPaymentModelType.t()
        }

  defstruct [:type]

  field :type, 1,
    type: Google.Ads.Googleads.V4.Enums.AppPaymentModelTypeEnum.AppPaymentModelType,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.MobileDeviceInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mobile_device_constant: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:mobile_device_constant]

  field :mobile_device_constant, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.CustomAffinityInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          custom_affinity: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:custom_affinity]

  field :custom_affinity, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.CustomIntentInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          custom_intent: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:custom_intent]

  field :custom_intent, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.LocationGroupInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          feed: Google.Protobuf.StringValue.t() | nil,
          geo_target_constants: [Google.Protobuf.StringValue.t()],
          radius: Google.Protobuf.Int64Value.t() | nil,
          radius_units:
            Google.Ads.Googleads.V4.Enums.LocationGroupRadiusUnitsEnum.LocationGroupRadiusUnits.t()
        }

  defstruct [:feed, :geo_target_constants, :radius, :radius_units]

  field :feed, 1, type: Google.Protobuf.StringValue
  field :geo_target_constants, 2, repeated: true, type: Google.Protobuf.StringValue
  field :radius, 3, type: Google.Protobuf.Int64Value

  field :radius_units, 4,
    type: Google.Ads.Googleads.V4.Enums.LocationGroupRadiusUnitsEnum.LocationGroupRadiusUnits,
    enum: true
end
