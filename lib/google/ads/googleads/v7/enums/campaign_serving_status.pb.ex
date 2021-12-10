defmodule Google.Ads.Googleads.V7.Enums.CampaignServingStatusEnum.CampaignServingStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :SERVING | :NONE | :ENDED | :PENDING | :SUSPENDED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :SERVING, 2
  field :NONE, 3
  field :ENDED, 4
  field :PENDING, 5
  field :SUSPENDED, 6
end
defmodule Google.Ads.Googleads.V7.Enums.CampaignServingStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
