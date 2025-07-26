defmodule Google.Ads.Googleads.V19.Enums.AssetLinkPrimaryStatusReasonEnum.AssetLinkPrimaryStatusReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ASSET_LINK_PAUSED, 2
  field :ASSET_LINK_REMOVED, 3
  field :ASSET_DISAPPROVED, 4
  field :ASSET_UNDER_REVIEW, 5
  field :ASSET_APPROVED_LABELED, 6
end

defmodule Google.Ads.Googleads.V19.Enums.AssetLinkPrimaryStatusReasonEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
