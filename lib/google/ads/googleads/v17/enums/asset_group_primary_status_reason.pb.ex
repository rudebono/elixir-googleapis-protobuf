defmodule Google.Ads.Googleads.V17.Enums.AssetGroupPrimaryStatusReasonEnum.AssetGroupPrimaryStatusReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ASSET_GROUP_PAUSED, 2
  field :ASSET_GROUP_REMOVED, 3
  field :CAMPAIGN_REMOVED, 4
  field :CAMPAIGN_PAUSED, 5
  field :CAMPAIGN_PENDING, 6
  field :CAMPAIGN_ENDED, 7
  field :ASSET_GROUP_LIMITED, 8
  field :ASSET_GROUP_DISAPPROVED, 9
  field :ASSET_GROUP_UNDER_REVIEW, 10
end

defmodule Google.Ads.Googleads.V17.Enums.AssetGroupPrimaryStatusReasonEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end