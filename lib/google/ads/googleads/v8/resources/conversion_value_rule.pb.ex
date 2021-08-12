defmodule Google.Ads.Googleads.V8.Resources.ConversionValueRule.ValueRuleAction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: Google.Ads.Googleads.V8.Enums.ValueRuleOperationEnum.ValueRuleOperation.t(),
          value: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:operation, :value]

  field :operation, 1,
    type: Google.Ads.Googleads.V8.Enums.ValueRuleOperationEnum.ValueRuleOperation,
    enum: true

  field :value, 2, type: :double
end

defmodule Google.Ads.Googleads.V8.Resources.ConversionValueRule.ValueRuleGeoLocationCondition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          excluded_geo_target_constants: [String.t()],
          excluded_geo_match_type:
            Google.Ads.Googleads.V8.Enums.ValueRuleGeoLocationMatchTypeEnum.ValueRuleGeoLocationMatchType.t(),
          geo_target_constants: [String.t()],
          geo_match_type:
            Google.Ads.Googleads.V8.Enums.ValueRuleGeoLocationMatchTypeEnum.ValueRuleGeoLocationMatchType.t()
        }

  defstruct [
    :excluded_geo_target_constants,
    :excluded_geo_match_type,
    :geo_target_constants,
    :geo_match_type
  ]

  field :excluded_geo_target_constants, 1, repeated: true, type: :string

  field :excluded_geo_match_type, 2,
    type:
      Google.Ads.Googleads.V8.Enums.ValueRuleGeoLocationMatchTypeEnum.ValueRuleGeoLocationMatchType,
    enum: true

  field :geo_target_constants, 3, repeated: true, type: :string

  field :geo_match_type, 4,
    type:
      Google.Ads.Googleads.V8.Enums.ValueRuleGeoLocationMatchTypeEnum.ValueRuleGeoLocationMatchType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Resources.ConversionValueRule.ValueRuleDeviceCondition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          device_types: [
            [Google.Ads.Googleads.V8.Enums.ValueRuleDeviceTypeEnum.ValueRuleDeviceType.t()]
          ]
        }

  defstruct [:device_types]

  field :device_types, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Enums.ValueRuleDeviceTypeEnum.ValueRuleDeviceType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Resources.ConversionValueRule.ValueRuleAudienceCondition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_lists: [String.t()],
          user_interests: [String.t()]
        }

  defstruct [:user_lists, :user_interests]

  field :user_lists, 1, repeated: true, type: :string
  field :user_interests, 2, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Resources.ConversionValueRule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          action: Google.Ads.Googleads.V8.Resources.ConversionValueRule.ValueRuleAction.t() | nil,
          geo_location_condition:
            Google.Ads.Googleads.V8.Resources.ConversionValueRule.ValueRuleGeoLocationCondition.t()
            | nil,
          device_condition:
            Google.Ads.Googleads.V8.Resources.ConversionValueRule.ValueRuleDeviceCondition.t()
            | nil,
          audience_condition:
            Google.Ads.Googleads.V8.Resources.ConversionValueRule.ValueRuleAudienceCondition.t()
            | nil,
          owner_customer: String.t(),
          status:
            Google.Ads.Googleads.V8.Enums.ConversionValueRuleStatusEnum.ConversionValueRuleStatus.t()
        }

  defstruct [
    :resource_name,
    :id,
    :action,
    :geo_location_condition,
    :device_condition,
    :audience_condition,
    :owner_customer,
    :status
  ]

  field :resource_name, 1, type: :string
  field :id, 2, type: :int64
  field :action, 3, type: Google.Ads.Googleads.V8.Resources.ConversionValueRule.ValueRuleAction

  field :geo_location_condition, 4,
    type: Google.Ads.Googleads.V8.Resources.ConversionValueRule.ValueRuleGeoLocationCondition

  field :device_condition, 5,
    type: Google.Ads.Googleads.V8.Resources.ConversionValueRule.ValueRuleDeviceCondition

  field :audience_condition, 6,
    type: Google.Ads.Googleads.V8.Resources.ConversionValueRule.ValueRuleAudienceCondition

  field :owner_customer, 7, type: :string

  field :status, 8,
    type: Google.Ads.Googleads.V8.Enums.ConversionValueRuleStatusEnum.ConversionValueRuleStatus,
    enum: true
end
