defmodule Google.Ads.Googleads.V6.Enums.GoogleAdsFieldCategoryEnum.GoogleAdsFieldCategory do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :RESOURCE | :ATTRIBUTE | :SEGMENT | :METRIC

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :RESOURCE, 2

  field :ATTRIBUTE, 3

  field :SEGMENT, 5

  field :METRIC, 6
end

defmodule Google.Ads.Googleads.V6.Enums.GoogleAdsFieldCategoryEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
