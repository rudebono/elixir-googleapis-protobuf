defmodule Google.Ads.Googleads.V7.Enums.SharedSetTypeEnum.SharedSetType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :NEGATIVE_KEYWORDS | :NEGATIVE_PLACEMENTS

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :NEGATIVE_KEYWORDS, 2
  field :NEGATIVE_PLACEMENTS, 3
end

defmodule Google.Ads.Googleads.V7.Enums.SharedSetTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
