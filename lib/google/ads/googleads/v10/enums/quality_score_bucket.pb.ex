defmodule Google.Ads.Googleads.V10.Enums.QualityScoreBucketEnum.QualityScoreBucket do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :BELOW_AVERAGE | :AVERAGE | :ABOVE_AVERAGE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :BELOW_AVERAGE, 2
  field :AVERAGE, 3
  field :ABOVE_AVERAGE, 4
end
defmodule Google.Ads.Googleads.V10.Enums.QualityScoreBucketEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
