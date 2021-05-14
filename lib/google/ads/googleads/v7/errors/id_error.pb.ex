defmodule Google.Ads.Googleads.V7.Errors.IdErrorEnum.IdError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :NOT_FOUND

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :NOT_FOUND, 2
end

defmodule Google.Ads.Googleads.V7.Errors.IdErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
