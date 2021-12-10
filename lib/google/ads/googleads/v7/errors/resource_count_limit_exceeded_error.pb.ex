defmodule Google.Ads.Googleads.V7.Errors.ResourceCountLimitExceededErrorEnum.ResourceCountLimitExceededError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :ACCOUNT_LIMIT
          | :CAMPAIGN_LIMIT
          | :ADGROUP_LIMIT
          | :AD_GROUP_AD_LIMIT
          | :AD_GROUP_CRITERION_LIMIT
          | :SHARED_SET_LIMIT
          | :MATCHING_FUNCTION_LIMIT
          | :RESPONSE_ROW_LIMIT_EXCEEDED
          | :RESOURCE_LIMIT

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ACCOUNT_LIMIT, 2
  field :CAMPAIGN_LIMIT, 3
  field :ADGROUP_LIMIT, 4
  field :AD_GROUP_AD_LIMIT, 5
  field :AD_GROUP_CRITERION_LIMIT, 6
  field :SHARED_SET_LIMIT, 7
  field :MATCHING_FUNCTION_LIMIT, 8
  field :RESPONSE_ROW_LIMIT_EXCEEDED, 9
  field :RESOURCE_LIMIT, 10
end
defmodule Google.Ads.Googleads.V7.Errors.ResourceCountLimitExceededErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
