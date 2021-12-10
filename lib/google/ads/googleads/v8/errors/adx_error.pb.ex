defmodule Google.Ads.Googleads.V8.Errors.AdxErrorEnum.AdxError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :UNSUPPORTED_FEATURE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :UNSUPPORTED_FEATURE, 2
end
defmodule Google.Ads.Googleads.V8.Errors.AdxErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
