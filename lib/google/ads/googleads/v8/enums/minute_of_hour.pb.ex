defmodule Google.Ads.Googleads.V8.Enums.MinuteOfHourEnum.MinuteOfHour do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ZERO | :FIFTEEN | :THIRTY | :FORTY_FIVE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ZERO, 2
  field :FIFTEEN, 3
  field :THIRTY, 4
  field :FORTY_FIVE, 5
end
defmodule Google.Ads.Googleads.V8.Enums.MinuteOfHourEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
