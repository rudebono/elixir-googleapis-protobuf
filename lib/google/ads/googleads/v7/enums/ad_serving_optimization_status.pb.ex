defmodule Google.Ads.Googleads.V7.Enums.AdServingOptimizationStatusEnum.AdServingOptimizationStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :OPTIMIZE
          | :CONVERSION_OPTIMIZE
          | :ROTATE
          | :ROTATE_INDEFINITELY
          | :UNAVAILABLE

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :OPTIMIZE, 2

  field :CONVERSION_OPTIMIZE, 3

  field :ROTATE, 4

  field :ROTATE_INDEFINITELY, 5

  field :UNAVAILABLE, 6
end

defmodule Google.Ads.Googleads.V7.Enums.AdServingOptimizationStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
