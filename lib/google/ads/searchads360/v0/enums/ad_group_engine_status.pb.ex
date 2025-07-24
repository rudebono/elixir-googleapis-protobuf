defmodule Google.Ads.Searchads360.V0.Enums.AdGroupEngineStatusEnum.AdGroupEngineStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :AD_GROUP_ELIGIBLE, 2
  field :AD_GROUP_EXPIRED, 3
  field :AD_GROUP_REMOVED, 4
  field :AD_GROUP_DRAFT, 5
  field :AD_GROUP_PAUSED, 6
  field :AD_GROUP_SERVING, 7
  field :AD_GROUP_SUBMITTED, 8
  field :CAMPAIGN_PAUSED, 9
  field :ACCOUNT_PAUSED, 10
end

defmodule Google.Ads.Searchads360.V0.Enums.AdGroupEngineStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
