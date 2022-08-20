defmodule Google.Ads.Googleads.V10.Common.KeywordInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :text, 3, proto3_optional: true, type: :string

  field :match_type, 2,
    type: Google.Ads.Googleads.V10.Enums.KeywordMatchTypeEnum.KeywordMatchType,
    json_name: "matchType",
    enum: true
end

defmodule Google.Ads.Googleads.V10.Common.PlacementInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :url, 2, proto3_optional: true, type: :string
end

defmodule Google.Ads.Googleads.V10.Common.MobileAppCategoryInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :mobile_app_category_constant, 2,
    proto3_optional: true,
    type: :string,
    json_name: "mobileAppCategoryConstant"
end

defmodule Google.Ads.Googleads.V10.Common.MobileApplicationInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :app_id, 4, proto3_optional: true, type: :string, json_name: "appId"
  field :name, 5, proto3_optional: true, type: :string
end

defmodule Google.Ads.Googleads.V10.Common.LocationInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :geo_target_constant, 2,
    proto3_optional: true,
    type: :string,
    json_name: "geoTargetConstant"
end

defmodule Google.Ads.Googleads.V10.Common.DeviceInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 1, type: Google.Ads.Googleads.V10.Enums.DeviceEnum.Device, enum: true
end

defmodule Google.Ads.Googleads.V10.Common.PreferredContentInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 2,
    type: Google.Ads.Googleads.V10.Enums.PreferredContentTypeEnum.PreferredContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V10.Common.ListingGroupInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 1,
    type: Google.Ads.Googleads.V10.Enums.ListingGroupTypeEnum.ListingGroupType,
    enum: true

  field :case_value, 2,
    type: Google.Ads.Googleads.V10.Common.ListingDimensionInfo,
    json_name: "caseValue"

  field :parent_ad_group_criterion, 4,
    proto3_optional: true,
    type: :string,
    json_name: "parentAdGroupCriterion"
end

defmodule Google.Ads.Googleads.V10.Common.ListingScopeInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dimensions, 2, repeated: true, type: Google.Ads.Googleads.V10.Common.ListingDimensionInfo
end

defmodule Google.Ads.Googleads.V10.Common.ListingDimensionInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :dimension, 0

  field :hotel_id, 2,
    type: Google.Ads.Googleads.V10.Common.HotelIdInfo,
    json_name: "hotelId",
    oneof: 0

  field :hotel_class, 3,
    type: Google.Ads.Googleads.V10.Common.HotelClassInfo,
    json_name: "hotelClass",
    oneof: 0

  field :hotel_country_region, 4,
    type: Google.Ads.Googleads.V10.Common.HotelCountryRegionInfo,
    json_name: "hotelCountryRegion",
    oneof: 0

  field :hotel_state, 5,
    type: Google.Ads.Googleads.V10.Common.HotelStateInfo,
    json_name: "hotelState",
    oneof: 0

  field :hotel_city, 6,
    type: Google.Ads.Googleads.V10.Common.HotelCityInfo,
    json_name: "hotelCity",
    oneof: 0

  field :product_bidding_category, 13,
    type: Google.Ads.Googleads.V10.Common.ProductBiddingCategoryInfo,
    json_name: "productBiddingCategory",
    oneof: 0

  field :product_brand, 15,
    type: Google.Ads.Googleads.V10.Common.ProductBrandInfo,
    json_name: "productBrand",
    oneof: 0

  field :product_channel, 8,
    type: Google.Ads.Googleads.V10.Common.ProductChannelInfo,
    json_name: "productChannel",
    oneof: 0

  field :product_channel_exclusivity, 9,
    type: Google.Ads.Googleads.V10.Common.ProductChannelExclusivityInfo,
    json_name: "productChannelExclusivity",
    oneof: 0

  field :product_condition, 10,
    type: Google.Ads.Googleads.V10.Common.ProductConditionInfo,
    json_name: "productCondition",
    oneof: 0

  field :product_custom_attribute, 16,
    type: Google.Ads.Googleads.V10.Common.ProductCustomAttributeInfo,
    json_name: "productCustomAttribute",
    oneof: 0

  field :product_item_id, 11,
    type: Google.Ads.Googleads.V10.Common.ProductItemIdInfo,
    json_name: "productItemId",
    oneof: 0

  field :product_type, 12,
    type: Google.Ads.Googleads.V10.Common.ProductTypeInfo,
    json_name: "productType",
    oneof: 0

  field :product_grouping, 17,
    type: Google.Ads.Googleads.V10.Common.ProductGroupingInfo,
    json_name: "productGrouping",
    oneof: 0

  field :product_labels, 18,
    type: Google.Ads.Googleads.V10.Common.ProductLabelsInfo,
    json_name: "productLabels",
    oneof: 0

  field :product_legacy_condition, 19,
    type: Google.Ads.Googleads.V10.Common.ProductLegacyConditionInfo,
    json_name: "productLegacyCondition",
    oneof: 0

  field :product_type_full, 20,
    type: Google.Ads.Googleads.V10.Common.ProductTypeFullInfo,
    json_name: "productTypeFull",
    oneof: 0

  field :unknown_listing_dimension, 14,
    type: Google.Ads.Googleads.V10.Common.UnknownListingDimensionInfo,
    json_name: "unknownListingDimension",
    oneof: 0
end

defmodule Google.Ads.Googleads.V10.Common.HotelIdInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :value, 2, proto3_optional: true, type: :string
end

defmodule Google.Ads.Googleads.V10.Common.HotelClassInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :value, 2, proto3_optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V10.Common.HotelCountryRegionInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :country_region_criterion, 2,
    proto3_optional: true,
    type: :string,
    json_name: "countryRegionCriterion"
end

defmodule Google.Ads.Googleads.V10.Common.HotelStateInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :state_criterion, 2, proto3_optional: true, type: :string, json_name: "stateCriterion"
end

defmodule Google.Ads.Googleads.V10.Common.HotelCityInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :city_criterion, 2, proto3_optional: true, type: :string, json_name: "cityCriterion"
end

defmodule Google.Ads.Googleads.V10.Common.ProductBiddingCategoryInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 4, proto3_optional: true, type: :int64
  field :country_code, 5, proto3_optional: true, type: :string, json_name: "countryCode"

  field :level, 3,
    type:
      Google.Ads.Googleads.V10.Enums.ProductBiddingCategoryLevelEnum.ProductBiddingCategoryLevel,
    enum: true
end

defmodule Google.Ads.Googleads.V10.Common.ProductBrandInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :value, 2, proto3_optional: true, type: :string
end

defmodule Google.Ads.Googleads.V10.Common.ProductChannelInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :channel, 1,
    type: Google.Ads.Googleads.V10.Enums.ProductChannelEnum.ProductChannel,
    enum: true
end

defmodule Google.Ads.Googleads.V10.Common.ProductChannelExclusivityInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :channel_exclusivity, 1,
    type: Google.Ads.Googleads.V10.Enums.ProductChannelExclusivityEnum.ProductChannelExclusivity,
    json_name: "channelExclusivity",
    enum: true
end

defmodule Google.Ads.Googleads.V10.Common.ProductConditionInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :condition, 1,
    type: Google.Ads.Googleads.V10.Enums.ProductConditionEnum.ProductCondition,
    enum: true
end

defmodule Google.Ads.Googleads.V10.Common.ProductCustomAttributeInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :value, 3, proto3_optional: true, type: :string

  field :index, 2,
    type:
      Google.Ads.Googleads.V10.Enums.ProductCustomAttributeIndexEnum.ProductCustomAttributeIndex,
    enum: true
end

defmodule Google.Ads.Googleads.V10.Common.ProductItemIdInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :value, 2, proto3_optional: true, type: :string
end

defmodule Google.Ads.Googleads.V10.Common.ProductTypeInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :value, 3, proto3_optional: true, type: :string

  field :level, 2,
    type: Google.Ads.Googleads.V10.Enums.ProductTypeLevelEnum.ProductTypeLevel,
    enum: true
end

defmodule Google.Ads.Googleads.V10.Common.ProductGroupingInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :value, 1, proto3_optional: true, type: :string
end

defmodule Google.Ads.Googleads.V10.Common.ProductLabelsInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :value, 1, proto3_optional: true, type: :string
end

defmodule Google.Ads.Googleads.V10.Common.ProductLegacyConditionInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :value, 1, proto3_optional: true, type: :string
end

defmodule Google.Ads.Googleads.V10.Common.ProductTypeFullInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :value, 1, proto3_optional: true, type: :string
end

defmodule Google.Ads.Googleads.V10.Common.UnknownListingDimensionInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Ads.Googleads.V10.Common.HotelDateSelectionTypeInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 1,
    type: Google.Ads.Googleads.V10.Enums.HotelDateSelectionTypeEnum.HotelDateSelectionType,
    enum: true
end

defmodule Google.Ads.Googleads.V10.Common.HotelAdvanceBookingWindowInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :min_days, 3, proto3_optional: true, type: :int64, json_name: "minDays"
  field :max_days, 4, proto3_optional: true, type: :int64, json_name: "maxDays"
end

defmodule Google.Ads.Googleads.V10.Common.HotelLengthOfStayInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :min_nights, 3, proto3_optional: true, type: :int64, json_name: "minNights"
  field :max_nights, 4, proto3_optional: true, type: :int64, json_name: "maxNights"
end

defmodule Google.Ads.Googleads.V10.Common.HotelCheckInDateRangeInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :start_date, 1, type: :string, json_name: "startDate"
  field :end_date, 2, type: :string, json_name: "endDate"
end

defmodule Google.Ads.Googleads.V10.Common.HotelCheckInDayInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :day_of_week, 1,
    type: Google.Ads.Googleads.V10.Enums.DayOfWeekEnum.DayOfWeek,
    json_name: "dayOfWeek",
    enum: true
end

defmodule Google.Ads.Googleads.V10.Common.InteractionTypeInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 1,
    type: Google.Ads.Googleads.V10.Enums.InteractionTypeEnum.InteractionType,
    enum: true
end

defmodule Google.Ads.Googleads.V10.Common.AdScheduleInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :start_minute, 1,
    type: Google.Ads.Googleads.V10.Enums.MinuteOfHourEnum.MinuteOfHour,
    json_name: "startMinute",
    enum: true

  field :end_minute, 2,
    type: Google.Ads.Googleads.V10.Enums.MinuteOfHourEnum.MinuteOfHour,
    json_name: "endMinute",
    enum: true

  field :start_hour, 6, proto3_optional: true, type: :int32, json_name: "startHour"
  field :end_hour, 7, proto3_optional: true, type: :int32, json_name: "endHour"

  field :day_of_week, 5,
    type: Google.Ads.Googleads.V10.Enums.DayOfWeekEnum.DayOfWeek,
    json_name: "dayOfWeek",
    enum: true
end

defmodule Google.Ads.Googleads.V10.Common.AgeRangeInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 1, type: Google.Ads.Googleads.V10.Enums.AgeRangeTypeEnum.AgeRangeType, enum: true
end

defmodule Google.Ads.Googleads.V10.Common.GenderInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 1, type: Google.Ads.Googleads.V10.Enums.GenderTypeEnum.GenderType, enum: true
end

defmodule Google.Ads.Googleads.V10.Common.IncomeRangeInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 1,
    type: Google.Ads.Googleads.V10.Enums.IncomeRangeTypeEnum.IncomeRangeType,
    enum: true
end

defmodule Google.Ads.Googleads.V10.Common.ParentalStatusInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 1,
    type: Google.Ads.Googleads.V10.Enums.ParentalStatusTypeEnum.ParentalStatusType,
    enum: true
end

defmodule Google.Ads.Googleads.V10.Common.YouTubeVideoInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :video_id, 2, proto3_optional: true, type: :string, json_name: "videoId"
end

defmodule Google.Ads.Googleads.V10.Common.YouTubeChannelInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :channel_id, 2, proto3_optional: true, type: :string, json_name: "channelId"
end

defmodule Google.Ads.Googleads.V10.Common.UserListInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :user_list, 2, proto3_optional: true, type: :string, json_name: "userList"
end

defmodule Google.Ads.Googleads.V10.Common.ProximityInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :geo_point, 1, type: Google.Ads.Googleads.V10.Common.GeoPointInfo, json_name: "geoPoint"
  field :radius, 5, proto3_optional: true, type: :double

  field :radius_units, 3,
    type: Google.Ads.Googleads.V10.Enums.ProximityRadiusUnitsEnum.ProximityRadiusUnits,
    json_name: "radiusUnits",
    enum: true

  field :address, 4, type: Google.Ads.Googleads.V10.Common.AddressInfo
end

defmodule Google.Ads.Googleads.V10.Common.GeoPointInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :longitude_in_micro_degrees, 3,
    proto3_optional: true,
    type: :int32,
    json_name: "longitudeInMicroDegrees"

  field :latitude_in_micro_degrees, 4,
    proto3_optional: true,
    type: :int32,
    json_name: "latitudeInMicroDegrees"
end

defmodule Google.Ads.Googleads.V10.Common.AddressInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :postal_code, 8, proto3_optional: true, type: :string, json_name: "postalCode"
  field :province_code, 9, proto3_optional: true, type: :string, json_name: "provinceCode"
  field :country_code, 10, proto3_optional: true, type: :string, json_name: "countryCode"
  field :province_name, 11, proto3_optional: true, type: :string, json_name: "provinceName"
  field :street_address, 12, proto3_optional: true, type: :string, json_name: "streetAddress"
  field :street_address2, 13, proto3_optional: true, type: :string, json_name: "streetAddress2"
  field :city_name, 14, proto3_optional: true, type: :string, json_name: "cityName"
end

defmodule Google.Ads.Googleads.V10.Common.TopicInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :topic_constant, 3, proto3_optional: true, type: :string, json_name: "topicConstant"
  field :path, 4, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V10.Common.LanguageInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :language_constant, 2, proto3_optional: true, type: :string, json_name: "languageConstant"
end

defmodule Google.Ads.Googleads.V10.Common.IpBlockInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ip_address, 2, proto3_optional: true, type: :string, json_name: "ipAddress"
end

defmodule Google.Ads.Googleads.V10.Common.ContentLabelInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 1,
    type: Google.Ads.Googleads.V10.Enums.ContentLabelTypeEnum.ContentLabelType,
    enum: true
end

defmodule Google.Ads.Googleads.V10.Common.CarrierInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :carrier_constant, 2, proto3_optional: true, type: :string, json_name: "carrierConstant"
end

defmodule Google.Ads.Googleads.V10.Common.UserInterestInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :user_interest_category, 2,
    proto3_optional: true,
    type: :string,
    json_name: "userInterestCategory"
end

defmodule Google.Ads.Googleads.V10.Common.WebpageInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :criterion_name, 3, proto3_optional: true, type: :string, json_name: "criterionName"
  field :conditions, 2, repeated: true, type: Google.Ads.Googleads.V10.Common.WebpageConditionInfo
  field :coverage_percentage, 4, type: :double, json_name: "coveragePercentage"
  field :sample, 5, type: Google.Ads.Googleads.V10.Common.WebpageSampleInfo
end

defmodule Google.Ads.Googleads.V10.Common.WebpageConditionInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :operand, 1,
    type: Google.Ads.Googleads.V10.Enums.WebpageConditionOperandEnum.WebpageConditionOperand,
    enum: true

  field :operator, 2,
    type: Google.Ads.Googleads.V10.Enums.WebpageConditionOperatorEnum.WebpageConditionOperator,
    enum: true

  field :argument, 4, proto3_optional: true, type: :string
end

defmodule Google.Ads.Googleads.V10.Common.WebpageSampleInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :sample_urls, 1, repeated: true, type: :string, json_name: "sampleUrls"
end

defmodule Google.Ads.Googleads.V10.Common.OperatingSystemVersionInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :operating_system_version_constant, 2,
    proto3_optional: true,
    type: :string,
    json_name: "operatingSystemVersionConstant"
end

defmodule Google.Ads.Googleads.V10.Common.AppPaymentModelInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 1,
    type: Google.Ads.Googleads.V10.Enums.AppPaymentModelTypeEnum.AppPaymentModelType,
    enum: true
end

defmodule Google.Ads.Googleads.V10.Common.MobileDeviceInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :mobile_device_constant, 2,
    proto3_optional: true,
    type: :string,
    json_name: "mobileDeviceConstant"
end

defmodule Google.Ads.Googleads.V10.Common.CustomAffinityInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :custom_affinity, 2, proto3_optional: true, type: :string, json_name: "customAffinity"
end

defmodule Google.Ads.Googleads.V10.Common.CustomIntentInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :custom_intent, 2, proto3_optional: true, type: :string, json_name: "customIntent"
end

defmodule Google.Ads.Googleads.V10.Common.LocationGroupInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :feed, 5, proto3_optional: true, type: :string
  field :geo_target_constants, 6, repeated: true, type: :string, json_name: "geoTargetConstants"
  field :radius, 7, proto3_optional: true, type: :int64

  field :radius_units, 4,
    type: Google.Ads.Googleads.V10.Enums.LocationGroupRadiusUnitsEnum.LocationGroupRadiusUnits,
    json_name: "radiusUnits",
    enum: true

  field :feed_item_sets, 8, repeated: true, type: :string, json_name: "feedItemSets"
end

defmodule Google.Ads.Googleads.V10.Common.CustomAudienceInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :custom_audience, 1, type: :string, json_name: "customAudience"
end

defmodule Google.Ads.Googleads.V10.Common.CombinedAudienceInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :combined_audience, 1, type: :string, json_name: "combinedAudience"
end

defmodule Google.Ads.Googleads.V10.Common.AudienceInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :audience, 1, type: :string
end

defmodule Google.Ads.Googleads.V10.Common.KeywordThemeInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :keyword_theme, 0

  field :keyword_theme_constant, 1, type: :string, json_name: "keywordThemeConstant", oneof: 0
  field :free_form_keyword_theme, 2, type: :string, json_name: "freeFormKeywordTheme", oneof: 0
end