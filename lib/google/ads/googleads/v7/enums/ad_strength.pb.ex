defmodule Google.Ads.Googleads.V7.Enums.AdStrengthEnum.AdStrength do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :PENDING
          | :NO_ADS
          | :POOR
          | :AVERAGE
          | :GOOD
          | :EXCELLENT

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :PENDING, 2
  field :NO_ADS, 3
  field :POOR, 4
  field :AVERAGE, 5
  field :GOOD, 6
  field :EXCELLENT, 7
end

defmodule Google.Ads.Googleads.V7.Enums.AdStrengthEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
