defmodule Google.Ads.Googleads.V17.Errors.AdGroupBidModifierErrorEnum.AdGroupBidModifierError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CRITERION_ID_NOT_SUPPORTED, 2
  field :CANNOT_OVERRIDE_OPTED_OUT_CAMPAIGN_CRITERION_BID_MODIFIER, 3
end

defmodule Google.Ads.Googleads.V17.Errors.AdGroupBidModifierErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end