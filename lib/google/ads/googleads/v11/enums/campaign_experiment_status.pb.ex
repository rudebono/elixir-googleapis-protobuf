defmodule Google.Ads.Googleads.V11.Enums.CampaignExperimentStatusEnum.CampaignExperimentStatus do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :INITIALIZING, 2
  field :INITIALIZATION_FAILED, 8
  field :ENABLED, 3
  field :GRADUATED, 4
  field :REMOVED, 5
  field :PROMOTING, 6
  field :PROMOTION_FAILED, 9
  field :PROMOTED, 7
  field :ENDED_MANUALLY, 10
end

defmodule Google.Ads.Googleads.V11.Enums.CampaignExperimentStatusEnum do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end