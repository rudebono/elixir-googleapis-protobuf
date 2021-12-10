defmodule Google.Ads.Googleads.V8.Errors.StringLengthErrorEnum.StringLengthError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :EMPTY | :TOO_SHORT | :TOO_LONG

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :EMPTY, 4
  field :TOO_SHORT, 2
  field :TOO_LONG, 3
end
defmodule Google.Ads.Googleads.V8.Errors.StringLengthErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
