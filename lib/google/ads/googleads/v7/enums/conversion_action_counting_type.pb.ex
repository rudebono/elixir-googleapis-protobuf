defmodule Google.Ads.Googleads.V7.Enums.ConversionActionCountingTypeEnum.ConversionActionCountingType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ONE_PER_CLICK | :MANY_PER_CLICK

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :ONE_PER_CLICK, 2

  field :MANY_PER_CLICK, 3
end

defmodule Google.Ads.Googleads.V7.Enums.ConversionActionCountingTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
