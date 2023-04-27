defmodule Google.Ads.Googleads.V13.Enums.SmartCampaignStatusEnum.SmartCampaignStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :PAUSED, 2
  field :NOT_ELIGIBLE, 3
  field :PENDING, 4
  field :ELIGIBLE, 5
  field :REMOVED, 6
  field :ENDED, 7
end

defmodule Google.Ads.Googleads.V13.Enums.SmartCampaignStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end