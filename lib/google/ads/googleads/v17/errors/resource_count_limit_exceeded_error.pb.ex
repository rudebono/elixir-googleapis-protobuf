defmodule Google.Ads.Googleads.V17.Errors.ResourceCountLimitExceededErrorEnum.ResourceCountLimitExceededError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

defmodule Google.Ads.Googleads.V17.Errors.ResourceCountLimitExceededErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end