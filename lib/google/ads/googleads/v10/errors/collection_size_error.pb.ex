defmodule Google.Ads.Googleads.V10.Errors.CollectionSizeErrorEnum.CollectionSizeError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :TOO_FEW | :TOO_MANY

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :TOO_FEW, 2
  field :TOO_MANY, 3
end
defmodule Google.Ads.Googleads.V10.Errors.CollectionSizeErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
