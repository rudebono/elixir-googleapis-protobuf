defmodule Google.Ads.Googleads.V4.Errors.DistinctErrorEnum.DistinctError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :DUPLICATE_ELEMENT | :DUPLICATE_TYPE

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :DUPLICATE_ELEMENT, 2

  field :DUPLICATE_TYPE, 3
end

defmodule Google.Ads.Googleads.V4.Errors.DistinctErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
