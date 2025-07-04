defmodule Google.Ads.Googleads.V20.Enums.CampaignPrimaryStatusEnum.CampaignPrimaryStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ELIGIBLE, 2
  field :PAUSED, 3
  field :REMOVED, 4
  field :ENDED, 5
  field :PENDING, 6
  field :MISCONFIGURED, 7
  field :LIMITED, 8
  field :LEARNING, 9
  field :NOT_ELIGIBLE, 10
end

defmodule Google.Ads.Googleads.V20.Enums.CampaignPrimaryStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
