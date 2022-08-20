defmodule Google.Ads.Googleads.V11.Errors.ExperimentErrorEnum.ExperimentError do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CANNOT_SET_START_DATE_IN_PAST, 2
  field :END_DATE_BEFORE_START_DATE, 3
  field :START_DATE_TOO_FAR_IN_FUTURE, 4
  field :DUPLICATE_EXPERIMENT_NAME, 5
  field :CANNOT_MODIFY_REMOVED_EXPERIMENT, 6
  field :START_DATE_ALREADY_PASSED, 7
  field :CANNOT_SET_END_DATE_IN_PAST, 8
  field :CANNOT_SET_STATUS_TO_REMOVED, 9
  field :CANNOT_MODIFY_PAST_END_DATE, 10
  field :INVALID_STATUS, 11
  field :INVALID_CAMPAIGN_CHANNEL_TYPE, 12
  field :OVERLAPPING_MEMBERS_AND_DATE_RANGE, 13
  field :INVALID_TRIAL_ARM_TRAFFIC_SPLIT, 14
  field :TRAFFIC_SPLIT_OVERLAPPING, 15
  field :SUM_TRIAL_ARM_TRAFFIC_UNEQUALS_TO_TRIAL_TRAFFIC_SPLIT_DENOMINATOR, 16
  field :CANNOT_MODIFY_TRAFFIC_SPLIT_AFTER_START, 17
  field :EXPERIMENT_NOT_FOUND, 18
  field :EXPERIMENT_NOT_YET_STARTED, 19
  field :CANNOT_HAVE_MULTIPLE_CONTROL_ARMS, 20
  field :IN_DESIGN_CAMPAIGNS_NOT_SET, 21
  field :CANNOT_SET_STATUS_TO_GRADUATED, 22
  field :CANNOT_CREATE_EXPERIMENT_CAMPAIGN_WITH_SHARED_BUDGET, 23
  field :CANNOT_CREATE_EXPERIMENT_CAMPAIGN_WITH_CUSTOM_BUDGET, 24
  field :STATUS_TRANSITION_INVALID, 25
end

defmodule Google.Ads.Googleads.V11.Errors.ExperimentErrorEnum do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end