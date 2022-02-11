defmodule Google.Ads.Googleads.V10.Errors.AudienceErrorEnum.AudienceError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :NAME_ALREADY_IN_USE | :DIMENSION_INVALID

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :NAME_ALREADY_IN_USE, 2
  field :DIMENSION_INVALID, 3
end
defmodule Google.Ads.Googleads.V10.Errors.AudienceErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
