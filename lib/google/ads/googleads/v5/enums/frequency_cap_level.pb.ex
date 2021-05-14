defmodule Google.Ads.Googleads.V5.Enums.FrequencyCapLevelEnum.FrequencyCapLevel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :AD_GROUP_AD | :AD_GROUP | :CAMPAIGN

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :AD_GROUP_AD, 2

  field :AD_GROUP, 3

  field :CAMPAIGN, 4
end

defmodule Google.Ads.Googleads.V5.Enums.FrequencyCapLevelEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
