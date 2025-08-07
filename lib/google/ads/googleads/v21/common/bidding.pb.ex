defmodule Google.Ads.Googleads.V21.Common.Commission do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :commission_rate_micros, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "commissionRateMicros"
end

defmodule Google.Ads.Googleads.V21.Common.EnhancedCpc do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Ads.Googleads.V21.Common.ManualCpa do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Ads.Googleads.V21.Common.ManualCpc do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enhanced_cpc_enabled, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "enhancedCpcEnabled"
end

defmodule Google.Ads.Googleads.V21.Common.ManualCpm do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Ads.Googleads.V21.Common.ManualCpv do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Ads.Googleads.V21.Common.MaximizeConversions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cpc_bid_ceiling_micros, 2, type: :int64, json_name: "cpcBidCeilingMicros"
  field :cpc_bid_floor_micros, 3, type: :int64, json_name: "cpcBidFloorMicros"
  field :target_cpa_micros, 4, type: :int64, json_name: "targetCpaMicros"
end

defmodule Google.Ads.Googleads.V21.Common.MaximizeConversionValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :target_roas, 2, type: :double, json_name: "targetRoas"
  field :cpc_bid_ceiling_micros, 3, type: :int64, json_name: "cpcBidCeilingMicros"
  field :cpc_bid_floor_micros, 4, type: :int64, json_name: "cpcBidFloorMicros"

  field :target_roas_tolerance_percent_millis, 5,
    proto3_optional: true,
    type: :int64,
    json_name: "targetRoasTolerancePercentMillis"
end

defmodule Google.Ads.Googleads.V21.Common.TargetCpa do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :target_cpa_micros, 4, proto3_optional: true, type: :int64, json_name: "targetCpaMicros"

  field :cpc_bid_ceiling_micros, 5,
    proto3_optional: true,
    type: :int64,
    json_name: "cpcBidCeilingMicros"

  field :cpc_bid_floor_micros, 6,
    proto3_optional: true,
    type: :int64,
    json_name: "cpcBidFloorMicros"
end

defmodule Google.Ads.Googleads.V21.Common.TargetCpm do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :goal, 0

  field :target_frequency_goal, 1,
    type: Google.Ads.Googleads.V21.Common.TargetCpmTargetFrequencyGoal,
    json_name: "targetFrequencyGoal",
    oneof: 0
end

defmodule Google.Ads.Googleads.V21.Common.TargetCpmTargetFrequencyGoal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :target_count, 1, type: :int64, json_name: "targetCount"

  field :time_unit, 2,
    type: Google.Ads.Googleads.V21.Enums.TargetFrequencyTimeUnitEnum.TargetFrequencyTimeUnit,
    json_name: "timeUnit",
    enum: true
end

defmodule Google.Ads.Googleads.V21.Common.TargetImpressionShare do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :location, 1,
    type:
      Google.Ads.Googleads.V21.Enums.TargetImpressionShareLocationEnum.TargetImpressionShareLocation,
    enum: true

  field :location_fraction_micros, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "locationFractionMicros"

  field :cpc_bid_ceiling_micros, 5,
    proto3_optional: true,
    type: :int64,
    json_name: "cpcBidCeilingMicros"
end

defmodule Google.Ads.Googleads.V21.Common.TargetRoas do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :target_roas, 4, proto3_optional: true, type: :double, json_name: "targetRoas"

  field :cpc_bid_ceiling_micros, 5,
    proto3_optional: true,
    type: :int64,
    json_name: "cpcBidCeilingMicros"

  field :cpc_bid_floor_micros, 6,
    proto3_optional: true,
    type: :int64,
    json_name: "cpcBidFloorMicros"

  field :target_roas_tolerance_percent_millis, 7,
    proto3_optional: true,
    type: :int64,
    json_name: "targetRoasTolerancePercentMillis"
end

defmodule Google.Ads.Googleads.V21.Common.TargetSpend do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :target_spend_micros, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "targetSpendMicros",
    deprecated: true

  field :cpc_bid_ceiling_micros, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "cpcBidCeilingMicros"
end

defmodule Google.Ads.Googleads.V21.Common.PercentCpc do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cpc_bid_ceiling_micros, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "cpcBidCeilingMicros"

  field :enhanced_cpc_enabled, 4,
    proto3_optional: true,
    type: :bool,
    json_name: "enhancedCpcEnabled"
end

defmodule Google.Ads.Googleads.V21.Common.FixedCpm do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :goal_info, 0

  field :goal, 1, type: Google.Ads.Googleads.V21.Enums.FixedCpmGoalEnum.FixedCpmGoal, enum: true

  field :target_frequency_info, 2,
    type: Google.Ads.Googleads.V21.Common.FixedCpmTargetFrequencyGoalInfo,
    json_name: "targetFrequencyInfo",
    oneof: 0
end

defmodule Google.Ads.Googleads.V21.Common.FixedCpmTargetFrequencyGoalInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :target_count, 1, type: :int64, json_name: "targetCount"

  field :time_unit, 2,
    type:
      Google.Ads.Googleads.V21.Enums.FixedCpmTargetFrequencyTimeUnitEnum.FixedCpmTargetFrequencyTimeUnit,
    json_name: "timeUnit",
    enum: true
end

defmodule Google.Ads.Googleads.V21.Common.TargetCpv do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
