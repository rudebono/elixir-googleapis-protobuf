defmodule Google.Ads.Googleads.V18.Errors.FeedItemTargetErrorEnum.FeedItemTargetError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :MUST_SET_TARGET_ONEOF_ON_CREATE, 2
  field :FEED_ITEM_TARGET_ALREADY_EXISTS, 3
  field :FEED_ITEM_SCHEDULES_CANNOT_OVERLAP, 4
  field :TARGET_LIMIT_EXCEEDED_FOR_GIVEN_TYPE, 5
  field :TOO_MANY_SCHEDULES_PER_DAY, 6
  field :CANNOT_HAVE_ENABLED_CAMPAIGN_AND_ENABLED_AD_GROUP_TARGETS, 7
  field :DUPLICATE_AD_SCHEDULE, 8
  field :DUPLICATE_KEYWORD, 9
end

defmodule Google.Ads.Googleads.V18.Errors.FeedItemTargetErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end