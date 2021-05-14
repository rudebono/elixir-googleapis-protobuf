defmodule Google.Ads.Googleads.V4.Enums.FeedItemTargetTypeEnum.FeedItemTargetType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :CAMPAIGN | :AD_GROUP | :CRITERION

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :CAMPAIGN, 2

  field :AD_GROUP, 3

  field :CRITERION, 4
end

defmodule Google.Ads.Googleads.V4.Enums.FeedItemTargetTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
