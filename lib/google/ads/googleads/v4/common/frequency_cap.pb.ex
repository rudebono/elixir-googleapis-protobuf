defmodule Google.Ads.Googleads.V4.Common.FrequencyCapEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: Google.Ads.Googleads.V4.Common.FrequencyCapKey.t() | nil,
          cap: Google.Protobuf.Int32Value.t() | nil
        }

  defstruct [:key, :cap]

  field :key, 1, type: Google.Ads.Googleads.V4.Common.FrequencyCapKey
  field :cap, 2, type: Google.Protobuf.Int32Value
end

defmodule Google.Ads.Googleads.V4.Common.FrequencyCapKey do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          level: Google.Ads.Googleads.V4.Enums.FrequencyCapLevelEnum.FrequencyCapLevel.t(),
          event_type:
            Google.Ads.Googleads.V4.Enums.FrequencyCapEventTypeEnum.FrequencyCapEventType.t(),
          time_unit:
            Google.Ads.Googleads.V4.Enums.FrequencyCapTimeUnitEnum.FrequencyCapTimeUnit.t(),
          time_length: Google.Protobuf.Int32Value.t() | nil
        }

  defstruct [:level, :event_type, :time_unit, :time_length]

  field :level, 1,
    type: Google.Ads.Googleads.V4.Enums.FrequencyCapLevelEnum.FrequencyCapLevel,
    enum: true

  field :event_type, 3,
    type: Google.Ads.Googleads.V4.Enums.FrequencyCapEventTypeEnum.FrequencyCapEventType,
    enum: true

  field :time_unit, 2,
    type: Google.Ads.Googleads.V4.Enums.FrequencyCapTimeUnitEnum.FrequencyCapTimeUnit,
    enum: true

  field :time_length, 4, type: Google.Protobuf.Int32Value
end
