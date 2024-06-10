defmodule Google.Ads.Googleads.V17.Errors.RecommendationErrorEnum.RecommendationError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :BUDGET_AMOUNT_TOO_SMALL, 2
  field :BUDGET_AMOUNT_TOO_LARGE, 3
  field :INVALID_BUDGET_AMOUNT, 4
  field :POLICY_ERROR, 5
  field :INVALID_BID_AMOUNT, 6
  field :ADGROUP_KEYWORD_LIMIT, 7
  field :RECOMMENDATION_ALREADY_APPLIED, 8
  field :RECOMMENDATION_INVALIDATED, 9
  field :TOO_MANY_OPERATIONS, 10
  field :NO_OPERATIONS, 11
  field :DIFFERENT_TYPES_NOT_SUPPORTED, 12
  field :DUPLICATE_RESOURCE_NAME, 13
  field :RECOMMENDATION_ALREADY_DISMISSED, 14
  field :INVALID_APPLY_REQUEST, 15
  field :RECOMMENDATION_TYPE_APPLY_NOT_SUPPORTED, 17
  field :INVALID_MULTIPLIER, 18
  field :ADVERTISING_CHANNEL_TYPE_GENERATE_NOT_SUPPORTED, 19
  field :RECOMMENDATION_TYPE_GENERATE_NOT_SUPPORTED, 20
  field :RECOMMENDATION_TYPES_CANNOT_BE_EMPTY, 21
end

defmodule Google.Ads.Googleads.V17.Errors.RecommendationErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end