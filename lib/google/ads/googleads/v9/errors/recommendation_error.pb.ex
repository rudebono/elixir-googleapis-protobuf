defmodule Google.Ads.Googleads.V9.Errors.RecommendationErrorEnum.RecommendationError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :BUDGET_AMOUNT_TOO_SMALL
          | :BUDGET_AMOUNT_TOO_LARGE
          | :INVALID_BUDGET_AMOUNT
          | :POLICY_ERROR
          | :INVALID_BID_AMOUNT
          | :ADGROUP_KEYWORD_LIMIT
          | :RECOMMENDATION_ALREADY_APPLIED
          | :RECOMMENDATION_INVALIDATED
          | :TOO_MANY_OPERATIONS
          | :NO_OPERATIONS
          | :DIFFERENT_TYPES_NOT_SUPPORTED
          | :DUPLICATE_RESOURCE_NAME
          | :RECOMMENDATION_ALREADY_DISMISSED
          | :INVALID_APPLY_REQUEST

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
end
defmodule Google.Ads.Googleads.V9.Errors.RecommendationErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
