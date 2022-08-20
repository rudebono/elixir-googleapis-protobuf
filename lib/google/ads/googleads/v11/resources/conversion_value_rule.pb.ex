defmodule Google.Ads.Googleads.V11.Resources.ConversionValueRule.ValueRuleAction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :operation, 1,
    type: Google.Ads.Googleads.V11.Enums.ValueRuleOperationEnum.ValueRuleOperation,
    enum: true

  field :value, 2, type: :double
end

defmodule Google.Ads.Googleads.V11.Resources.ConversionValueRule.ValueRuleGeoLocationCondition do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :excluded_geo_target_constants, 1,
    repeated: true,
    type: :string,
    json_name: "excludedGeoTargetConstants",
    deprecated: false

  field :excluded_geo_match_type, 2,
    type:
      Google.Ads.Googleads.V11.Enums.ValueRuleGeoLocationMatchTypeEnum.ValueRuleGeoLocationMatchType,
    json_name: "excludedGeoMatchType",
    enum: true

  field :geo_target_constants, 3,
    repeated: true,
    type: :string,
    json_name: "geoTargetConstants",
    deprecated: false

  field :geo_match_type, 4,
    type:
      Google.Ads.Googleads.V11.Enums.ValueRuleGeoLocationMatchTypeEnum.ValueRuleGeoLocationMatchType,
    json_name: "geoMatchType",
    enum: true
end

defmodule Google.Ads.Googleads.V11.Resources.ConversionValueRule.ValueRuleDeviceCondition do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :device_types, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Enums.ValueRuleDeviceTypeEnum.ValueRuleDeviceType,
    json_name: "deviceTypes",
    enum: true
end

defmodule Google.Ads.Googleads.V11.Resources.ConversionValueRule.ValueRuleAudienceCondition do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :user_lists, 1, repeated: true, type: :string, json_name: "userLists", deprecated: false

  field :user_interests, 2,
    repeated: true,
    type: :string,
    json_name: "userInterests",
    deprecated: false
end

defmodule Google.Ads.Googleads.V11.Resources.ConversionValueRule do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 2, type: :int64, deprecated: false
  field :action, 3, type: Google.Ads.Googleads.V11.Resources.ConversionValueRule.ValueRuleAction

  field :geo_location_condition, 4,
    type: Google.Ads.Googleads.V11.Resources.ConversionValueRule.ValueRuleGeoLocationCondition,
    json_name: "geoLocationCondition"

  field :device_condition, 5,
    type: Google.Ads.Googleads.V11.Resources.ConversionValueRule.ValueRuleDeviceCondition,
    json_name: "deviceCondition"

  field :audience_condition, 6,
    type: Google.Ads.Googleads.V11.Resources.ConversionValueRule.ValueRuleAudienceCondition,
    json_name: "audienceCondition"

  field :owner_customer, 7, type: :string, json_name: "ownerCustomer", deprecated: false

  field :status, 8,
    type: Google.Ads.Googleads.V11.Enums.ConversionValueRuleStatusEnum.ConversionValueRuleStatus,
    enum: true
end