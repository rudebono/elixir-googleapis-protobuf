defmodule Google.Ads.Googleads.V9.Errors.NullErrorEnum.NullError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :NULL_CONTENT

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :NULL_CONTENT, 2
end
defmodule Google.Ads.Googleads.V9.Errors.NullErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
