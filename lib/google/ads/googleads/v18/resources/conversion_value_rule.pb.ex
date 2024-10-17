defmodule Google.Ads.Googleads.V18.Resources.ConversionValueRule.ValueRuleAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :operation, 1,
    type: Google.Ads.Googleads.V18.Enums.ValueRuleOperationEnum.ValueRuleOperation,
    enum: true

  field :value, 2, type: :double
end

defmodule Google.Ads.Googleads.V18.Resources.ConversionValueRule.ValueRuleGeoLocationCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :excluded_geo_target_constants, 1,
    repeated: true,
    type: :string,
    json_name: "excludedGeoTargetConstants",
    deprecated: false

  field :excluded_geo_match_type, 2,
    type:
      Google.Ads.Googleads.V18.Enums.ValueRuleGeoLocationMatchTypeEnum.ValueRuleGeoLocationMatchType,
    json_name: "excludedGeoMatchType",
    enum: true

  field :geo_target_constants, 3,
    repeated: true,
    type: :string,
    json_name: "geoTargetConstants",
    deprecated: false

  field :geo_match_type, 4,
    type:
      Google.Ads.Googleads.V18.Enums.ValueRuleGeoLocationMatchTypeEnum.ValueRuleGeoLocationMatchType,
    json_name: "geoMatchType",
    enum: true
end

defmodule Google.Ads.Googleads.V18.Resources.ConversionValueRule.ValueRuleDeviceCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :device_types, 1,
    repeated: true,
    type: Google.Ads.Googleads.V18.Enums.ValueRuleDeviceTypeEnum.ValueRuleDeviceType,
    json_name: "deviceTypes",
    enum: true
end

defmodule Google.Ads.Googleads.V18.Resources.ConversionValueRule.ValueRuleAudienceCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :user_lists, 1, repeated: true, type: :string, json_name: "userLists", deprecated: false

  field :user_interests, 2,
    repeated: true,
    type: :string,
    json_name: "userInterests",
    deprecated: false
end

defmodule Google.Ads.Googleads.V18.Resources.ConversionValueRule.ValueRuleItineraryCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :advance_booking_window, 1,
    type:
      Google.Ads.Googleads.V18.Resources.ConversionValueRule.ValueRuleItineraryAdvanceBookingWindow,
    json_name: "advanceBookingWindow"

  field :travel_length, 2,
    type: Google.Ads.Googleads.V18.Resources.ConversionValueRule.ValueRuleItineraryTravelLength,
    json_name: "travelLength"

  field :travel_start_day, 3,
    type: Google.Ads.Googleads.V18.Resources.ConversionValueRule.ValueRuleItineraryTravelStartDay,
    json_name: "travelStartDay"
end

defmodule Google.Ads.Googleads.V18.Resources.ConversionValueRule.ValueRuleItineraryAdvanceBookingWindow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :min_days, 1, type: :int32, json_name: "minDays"
  field :max_days, 2, type: :int32, json_name: "maxDays"
end

defmodule Google.Ads.Googleads.V18.Resources.ConversionValueRule.ValueRuleItineraryTravelLength do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :min_nights, 1, type: :int32, json_name: "minNights"
  field :max_nights, 2, type: :int32, json_name: "maxNights"
end

defmodule Google.Ads.Googleads.V18.Resources.ConversionValueRule.ValueRuleItineraryTravelStartDay do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :monday, 1, type: :bool
  field :tuesday, 2, type: :bool
  field :wednesday, 3, type: :bool
  field :thursday, 4, type: :bool
  field :friday, 5, type: :bool
  field :saturday, 6, type: :bool
  field :sunday, 7, type: :bool
end

defmodule Google.Ads.Googleads.V18.Resources.ConversionValueRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 2, type: :int64, deprecated: false
  field :action, 3, type: Google.Ads.Googleads.V18.Resources.ConversionValueRule.ValueRuleAction

  field :geo_location_condition, 4,
    type: Google.Ads.Googleads.V18.Resources.ConversionValueRule.ValueRuleGeoLocationCondition,
    json_name: "geoLocationCondition"

  field :device_condition, 5,
    type: Google.Ads.Googleads.V18.Resources.ConversionValueRule.ValueRuleDeviceCondition,
    json_name: "deviceCondition"

  field :audience_condition, 6,
    type: Google.Ads.Googleads.V18.Resources.ConversionValueRule.ValueRuleAudienceCondition,
    json_name: "audienceCondition"

  field :itinerary_condition, 9,
    type: Google.Ads.Googleads.V18.Resources.ConversionValueRule.ValueRuleItineraryCondition,
    json_name: "itineraryCondition"

  field :owner_customer, 7, type: :string, json_name: "ownerCustomer", deprecated: false

  field :status, 8,
    type: Google.Ads.Googleads.V18.Enums.ConversionValueRuleStatusEnum.ConversionValueRuleStatus,
    enum: true
end