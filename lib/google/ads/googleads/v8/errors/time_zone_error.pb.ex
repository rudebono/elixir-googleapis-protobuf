defmodule Google.Ads.Googleads.V8.Errors.TimeZoneErrorEnum.TimeZoneError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :INVALID_TIME_ZONE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :INVALID_TIME_ZONE, 5
end
defmodule Google.Ads.Googleads.V8.Errors.TimeZoneErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
