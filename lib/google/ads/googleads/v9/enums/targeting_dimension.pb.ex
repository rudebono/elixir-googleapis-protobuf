defmodule Google.Ads.Googleads.V9.Enums.TargetingDimensionEnum.TargetingDimension do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :KEYWORD
          | :AUDIENCE
          | :TOPIC
          | :GENDER
          | :AGE_RANGE
          | :PLACEMENT
          | :PARENTAL_STATUS
          | :INCOME_RANGE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :KEYWORD, 2
  field :AUDIENCE, 3
  field :TOPIC, 4
  field :GENDER, 5
  field :AGE_RANGE, 6
  field :PLACEMENT, 7
  field :PARENTAL_STATUS, 8
  field :INCOME_RANGE, 9
end

defmodule Google.Ads.Googleads.V9.Enums.TargetingDimensionEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
