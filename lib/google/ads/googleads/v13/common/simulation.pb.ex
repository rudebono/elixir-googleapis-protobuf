defmodule Google.Ads.Googleads.V13.Common.BidModifierSimulationPointList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :points, 1,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.BidModifierSimulationPoint
end

defmodule Google.Ads.Googleads.V13.Common.CpcBidSimulationPointList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :points, 1, repeated: true, type: Google.Ads.Googleads.V13.Common.CpcBidSimulationPoint
end

defmodule Google.Ads.Googleads.V13.Common.CpvBidSimulationPointList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :points, 1, repeated: true, type: Google.Ads.Googleads.V13.Common.CpvBidSimulationPoint
end

defmodule Google.Ads.Googleads.V13.Common.TargetCpaSimulationPointList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :points, 1, repeated: true, type: Google.Ads.Googleads.V13.Common.TargetCpaSimulationPoint
end

defmodule Google.Ads.Googleads.V13.Common.TargetRoasSimulationPointList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :points, 1,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.TargetRoasSimulationPoint
end

defmodule Google.Ads.Googleads.V13.Common.PercentCpcBidSimulationPointList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :points, 1,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.PercentCpcBidSimulationPoint
end

defmodule Google.Ads.Googleads.V13.Common.BudgetSimulationPointList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :points, 1, repeated: true, type: Google.Ads.Googleads.V13.Common.BudgetSimulationPoint
end

defmodule Google.Ads.Googleads.V13.Common.TargetImpressionShareSimulationPointList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :points, 1,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.TargetImpressionShareSimulationPoint
end

defmodule Google.Ads.Googleads.V13.Common.BidModifierSimulationPoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :bid_modifier, 15, proto3_optional: true, type: :double, json_name: "bidModifier"

  field :biddable_conversions, 16,
    proto3_optional: true,
    type: :double,
    json_name: "biddableConversions"

  field :biddable_conversions_value, 17,
    proto3_optional: true,
    type: :double,
    json_name: "biddableConversionsValue"

  field :clicks, 18, proto3_optional: true, type: :int64
  field :cost_micros, 19, proto3_optional: true, type: :int64, json_name: "costMicros"
  field :impressions, 20, proto3_optional: true, type: :int64

  field :top_slot_impressions, 21,
    proto3_optional: true,
    type: :int64,
    json_name: "topSlotImpressions"

  field :parent_biddable_conversions, 22,
    proto3_optional: true,
    type: :double,
    json_name: "parentBiddableConversions"

  field :parent_biddable_conversions_value, 23,
    proto3_optional: true,
    type: :double,
    json_name: "parentBiddableConversionsValue"

  field :parent_clicks, 24, proto3_optional: true, type: :int64, json_name: "parentClicks"

  field :parent_cost_micros, 25,
    proto3_optional: true,
    type: :int64,
    json_name: "parentCostMicros"

  field :parent_impressions, 26,
    proto3_optional: true,
    type: :int64,
    json_name: "parentImpressions"

  field :parent_top_slot_impressions, 27,
    proto3_optional: true,
    type: :int64,
    json_name: "parentTopSlotImpressions"

  field :parent_required_budget_micros, 28,
    proto3_optional: true,
    type: :int64,
    json_name: "parentRequiredBudgetMicros"
end

defmodule Google.Ads.Googleads.V13.Common.CpcBidSimulationPoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :cpc_simulation_key_value, 0

  field :required_budget_amount_micros, 17, type: :int64, json_name: "requiredBudgetAmountMicros"

  field :biddable_conversions, 9,
    proto3_optional: true,
    type: :double,
    json_name: "biddableConversions"

  field :biddable_conversions_value, 10,
    proto3_optional: true,
    type: :double,
    json_name: "biddableConversionsValue"

  field :clicks, 11, proto3_optional: true, type: :int64
  field :cost_micros, 12, proto3_optional: true, type: :int64, json_name: "costMicros"
  field :impressions, 13, proto3_optional: true, type: :int64

  field :top_slot_impressions, 14,
    proto3_optional: true,
    type: :int64,
    json_name: "topSlotImpressions"

  field :cpc_bid_micros, 15, type: :int64, json_name: "cpcBidMicros", oneof: 0
  field :cpc_bid_scaling_modifier, 16, type: :double, json_name: "cpcBidScalingModifier", oneof: 0
end

defmodule Google.Ads.Googleads.V13.Common.CpvBidSimulationPoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :cpv_bid_micros, 5, proto3_optional: true, type: :int64, json_name: "cpvBidMicros"
  field :cost_micros, 6, proto3_optional: true, type: :int64, json_name: "costMicros"
  field :impressions, 7, proto3_optional: true, type: :int64
  field :views, 8, proto3_optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V13.Common.TargetCpaSimulationPoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :target_cpa_simulation_key_value, 0

  field :required_budget_amount_micros, 19, type: :int64, json_name: "requiredBudgetAmountMicros"

  field :biddable_conversions, 9,
    proto3_optional: true,
    type: :double,
    json_name: "biddableConversions"

  field :biddable_conversions_value, 10,
    proto3_optional: true,
    type: :double,
    json_name: "biddableConversionsValue"

  field :app_installs, 15, type: :double, json_name: "appInstalls"
  field :in_app_actions, 16, type: :double, json_name: "inAppActions"
  field :clicks, 11, proto3_optional: true, type: :int64
  field :cost_micros, 12, proto3_optional: true, type: :int64, json_name: "costMicros"
  field :impressions, 13, proto3_optional: true, type: :int64

  field :top_slot_impressions, 14,
    proto3_optional: true,
    type: :int64,
    json_name: "topSlotImpressions"

  field :target_cpa_micros, 17, type: :int64, json_name: "targetCpaMicros", oneof: 0

  field :target_cpa_scaling_modifier, 18,
    type: :double,
    json_name: "targetCpaScalingModifier",
    oneof: 0
end

defmodule Google.Ads.Googleads.V13.Common.TargetRoasSimulationPoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :target_roas, 8, proto3_optional: true, type: :double, json_name: "targetRoas"
  field :required_budget_amount_micros, 15, type: :int64, json_name: "requiredBudgetAmountMicros"

  field :biddable_conversions, 9,
    proto3_optional: true,
    type: :double,
    json_name: "biddableConversions"

  field :biddable_conversions_value, 10,
    proto3_optional: true,
    type: :double,
    json_name: "biddableConversionsValue"

  field :clicks, 11, proto3_optional: true, type: :int64
  field :cost_micros, 12, proto3_optional: true, type: :int64, json_name: "costMicros"
  field :impressions, 13, proto3_optional: true, type: :int64

  field :top_slot_impressions, 14,
    proto3_optional: true,
    type: :int64,
    json_name: "topSlotImpressions"
end

defmodule Google.Ads.Googleads.V13.Common.PercentCpcBidSimulationPoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :percent_cpc_bid_micros, 1,
    proto3_optional: true,
    type: :int64,
    json_name: "percentCpcBidMicros"

  field :biddable_conversions, 2,
    proto3_optional: true,
    type: :double,
    json_name: "biddableConversions"

  field :biddable_conversions_value, 3,
    proto3_optional: true,
    type: :double,
    json_name: "biddableConversionsValue"

  field :clicks, 4, proto3_optional: true, type: :int64
  field :cost_micros, 5, proto3_optional: true, type: :int64, json_name: "costMicros"
  field :impressions, 6, proto3_optional: true, type: :int64

  field :top_slot_impressions, 7,
    proto3_optional: true,
    type: :int64,
    json_name: "topSlotImpressions"
end

defmodule Google.Ads.Googleads.V13.Common.BudgetSimulationPoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :budget_amount_micros, 1, type: :int64, json_name: "budgetAmountMicros"

  field :required_cpc_bid_ceiling_micros, 2,
    type: :int64,
    json_name: "requiredCpcBidCeilingMicros"

  field :biddable_conversions, 3, type: :double, json_name: "biddableConversions"
  field :biddable_conversions_value, 4, type: :double, json_name: "biddableConversionsValue"
  field :clicks, 5, type: :int64
  field :cost_micros, 6, type: :int64, json_name: "costMicros"
  field :impressions, 7, type: :int64
  field :top_slot_impressions, 8, type: :int64, json_name: "topSlotImpressions"
end

defmodule Google.Ads.Googleads.V13.Common.TargetImpressionShareSimulationPoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :target_impression_share_micros, 1, type: :int64, json_name: "targetImpressionShareMicros"

  field :required_cpc_bid_ceiling_micros, 2,
    type: :int64,
    json_name: "requiredCpcBidCeilingMicros"

  field :required_budget_amount_micros, 3, type: :int64, json_name: "requiredBudgetAmountMicros"
  field :biddable_conversions, 4, type: :double, json_name: "biddableConversions"
  field :biddable_conversions_value, 5, type: :double, json_name: "biddableConversionsValue"
  field :clicks, 6, type: :int64
  field :cost_micros, 7, type: :int64, json_name: "costMicros"
  field :impressions, 8, type: :int64
  field :top_slot_impressions, 9, type: :int64, json_name: "topSlotImpressions"
  field :absolute_top_impressions, 10, type: :int64, json_name: "absoluteTopImpressions"
end