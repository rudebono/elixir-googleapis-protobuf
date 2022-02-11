defmodule Google.Ads.Googleads.V10.Resources.ConversionValueRule.ValueRuleAction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: Google.Ads.Googleads.V10.Enums.ValueRuleOperationEnum.ValueRuleOperation.t(),
          value: float | :infinity | :negative_infinity | :nan
        }

  defstruct operation: :UNSPECIFIED,
            value: 0.0

  field :operation, 1,
    type: Google.Ads.Googleads.V10.Enums.ValueRuleOperationEnum.ValueRuleOperation,
    enum: true

  field :value, 2, type: :double
end
defmodule Google.Ads.Googleads.V10.Resources.ConversionValueRule.ValueRuleGeoLocationCondition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          excluded_geo_target_constants: [String.t()],
          excluded_geo_match_type:
            Google.Ads.Googleads.V10.Enums.ValueRuleGeoLocationMatchTypeEnum.ValueRuleGeoLocationMatchType.t(),
          geo_target_constants: [String.t()],
          geo_match_type:
            Google.Ads.Googleads.V10.Enums.ValueRuleGeoLocationMatchTypeEnum.ValueRuleGeoLocationMatchType.t()
        }

  defstruct excluded_geo_target_constants: [],
            excluded_geo_match_type: :UNSPECIFIED,
            geo_target_constants: [],
            geo_match_type: :UNSPECIFIED

  field :excluded_geo_target_constants, 1,
    repeated: true,
    type: :string,
    json_name: "excludedGeoTargetConstants",
    deprecated: false

  field :excluded_geo_match_type, 2,
    type:
      Google.Ads.Googleads.V10.Enums.ValueRuleGeoLocationMatchTypeEnum.ValueRuleGeoLocationMatchType,
    json_name: "excludedGeoMatchType",
    enum: true

  field :geo_target_constants, 3,
    repeated: true,
    type: :string,
    json_name: "geoTargetConstants",
    deprecated: false

  field :geo_match_type, 4,
    type:
      Google.Ads.Googleads.V10.Enums.ValueRuleGeoLocationMatchTypeEnum.ValueRuleGeoLocationMatchType,
    json_name: "geoMatchType",
    enum: true
end
defmodule Google.Ads.Googleads.V10.Resources.ConversionValueRule.ValueRuleDeviceCondition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          device_types: [
            Google.Ads.Googleads.V10.Enums.ValueRuleDeviceTypeEnum.ValueRuleDeviceType.t()
          ]
        }

  defstruct device_types: []

  field :device_types, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Enums.ValueRuleDeviceTypeEnum.ValueRuleDeviceType,
    json_name: "deviceTypes",
    enum: true
end
defmodule Google.Ads.Googleads.V10.Resources.ConversionValueRule.ValueRuleAudienceCondition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_lists: [String.t()],
          user_interests: [String.t()]
        }

  defstruct user_lists: [],
            user_interests: []

  field :user_lists, 1, repeated: true, type: :string, json_name: "userLists", deprecated: false

  field :user_interests, 2,
    repeated: true,
    type: :string,
    json_name: "userInterests",
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.ConversionValueRule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          action:
            Google.Ads.Googleads.V10.Resources.ConversionValueRule.ValueRuleAction.t() | nil,
          geo_location_condition:
            Google.Ads.Googleads.V10.Resources.ConversionValueRule.ValueRuleGeoLocationCondition.t()
            | nil,
          device_condition:
            Google.Ads.Googleads.V10.Resources.ConversionValueRule.ValueRuleDeviceCondition.t()
            | nil,
          audience_condition:
            Google.Ads.Googleads.V10.Resources.ConversionValueRule.ValueRuleAudienceCondition.t()
            | nil,
          owner_customer: String.t(),
          status:
            Google.Ads.Googleads.V10.Enums.ConversionValueRuleStatusEnum.ConversionValueRuleStatus.t()
        }

  defstruct resource_name: "",
            id: 0,
            action: nil,
            geo_location_condition: nil,
            device_condition: nil,
            audience_condition: nil,
            owner_customer: "",
            status: :UNSPECIFIED

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 2, type: :int64, deprecated: false
  field :action, 3, type: Google.Ads.Googleads.V10.Resources.ConversionValueRule.ValueRuleAction

  field :geo_location_condition, 4,
    type: Google.Ads.Googleads.V10.Resources.ConversionValueRule.ValueRuleGeoLocationCondition,
    json_name: "geoLocationCondition"

  field :device_condition, 5,
    type: Google.Ads.Googleads.V10.Resources.ConversionValueRule.ValueRuleDeviceCondition,
    json_name: "deviceCondition"

  field :audience_condition, 6,
    type: Google.Ads.Googleads.V10.Resources.ConversionValueRule.ValueRuleAudienceCondition,
    json_name: "audienceCondition"

  field :owner_customer, 7, type: :string, json_name: "ownerCustomer", deprecated: false

  field :status, 8,
    type: Google.Ads.Googleads.V10.Enums.ConversionValueRuleStatusEnum.ConversionValueRuleStatus,
    enum: true
end
