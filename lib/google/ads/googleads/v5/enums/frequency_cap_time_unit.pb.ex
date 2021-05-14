defmodule Google.Ads.Googleads.V5.Enums.FrequencyCapTimeUnitEnum.FrequencyCapTimeUnit do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :DAY | :WEEK | :MONTH

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :DAY, 2

  field :WEEK, 3

  field :MONTH, 4
end

defmodule Google.Ads.Googleads.V5.Enums.FrequencyCapTimeUnitEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
