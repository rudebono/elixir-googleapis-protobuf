defmodule Google.Ads.Googleads.V17.Errors.ExperimentArmErrorEnum.ExperimentArmError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :EXPERIMENT_ARM_COUNT_LIMIT_EXCEEDED, 2
  field :INVALID_CAMPAIGN_STATUS, 3
  field :DUPLICATE_EXPERIMENT_ARM_NAME, 4
  field :CANNOT_SET_TREATMENT_ARM_CAMPAIGN, 5
  field :CANNOT_MODIFY_CAMPAIGN_IDS, 6
  field :CANNOT_MODIFY_CAMPAIGN_WITHOUT_SUFFIX_SET, 7
  field :CANNOT_MUTATE_TRAFFIC_SPLIT_AFTER_START, 8
  field :CANNOT_ADD_CAMPAIGN_WITH_SHARED_BUDGET, 9
  field :CANNOT_ADD_CAMPAIGN_WITH_CUSTOM_BUDGET, 10
  field :CANNOT_ADD_CAMPAIGNS_WITH_DYNAMIC_ASSETS_ENABLED, 11
  field :UNSUPPORTED_CAMPAIGN_ADVERTISING_CHANNEL_SUB_TYPE, 12
  field :CANNOT_ADD_BASE_CAMPAIGN_WITH_DATE_RANGE, 13
  field :BIDDING_STRATEGY_NOT_SUPPORTED_IN_EXPERIMENTS, 14
  field :TRAFFIC_SPLIT_NOT_SUPPORTED_FOR_CHANNEL_TYPE, 15
end

defmodule Google.Ads.Googleads.V17.Errors.ExperimentArmErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end
