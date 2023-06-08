defmodule Google.Ads.Googleads.V14.Errors.CampaignExperimentErrorEnum.CampaignExperimentError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :DUPLICATE_NAME, 2
  field :INVALID_TRANSITION, 3
  field :CANNOT_CREATE_EXPERIMENT_WITH_SHARED_BUDGET, 4
  field :CANNOT_CREATE_EXPERIMENT_FOR_REMOVED_BASE_CAMPAIGN, 5
  field :CANNOT_CREATE_EXPERIMENT_FOR_NON_PROPOSED_DRAFT, 6
  field :CUSTOMER_CANNOT_CREATE_EXPERIMENT, 7
  field :CAMPAIGN_CANNOT_CREATE_EXPERIMENT, 8
  field :EXPERIMENT_DURATIONS_MUST_NOT_OVERLAP, 9
  field :EXPERIMENT_DURATION_MUST_BE_WITHIN_CAMPAIGN_DURATION, 10
  field :CANNOT_MUTATE_EXPERIMENT_DUE_TO_STATUS, 11
end

defmodule Google.Ads.Googleads.V14.Errors.CampaignExperimentErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end