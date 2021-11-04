defmodule Google.Ads.Googleads.V7.Enums.ProductTypeLevelEnum.ProductTypeLevel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :LEVEL1 | :LEVEL2 | :LEVEL3 | :LEVEL4 | :LEVEL5

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :LEVEL1, 7
  field :LEVEL2, 8
  field :LEVEL3, 9
  field :LEVEL4, 10
  field :LEVEL5, 11
end

defmodule Google.Ads.Googleads.V7.Enums.ProductTypeLevelEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
