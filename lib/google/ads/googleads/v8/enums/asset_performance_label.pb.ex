defmodule Google.Ads.Googleads.V8.Enums.AssetPerformanceLabelEnum.AssetPerformanceLabel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :PENDING | :LEARNING | :LOW | :GOOD | :BEST

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :PENDING, 2

  field :LEARNING, 3

  field :LOW, 4

  field :GOOD, 5

  field :BEST, 6
end

defmodule Google.Ads.Googleads.V8.Enums.AssetPerformanceLabelEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
