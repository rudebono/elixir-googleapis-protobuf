defmodule Google.Ads.Googleads.V20.Enums.CampaignDraftStatusEnum.CampaignDraftStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :PROPOSED, 2
  field :REMOVED, 3
  field :PROMOTING, 5
  field :PROMOTED, 4
  field :PROMOTE_FAILED, 6
end

defmodule Google.Ads.Googleads.V20.Enums.CampaignDraftStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
