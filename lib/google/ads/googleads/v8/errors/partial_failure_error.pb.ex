defmodule Google.Ads.Googleads.V8.Errors.PartialFailureErrorEnum.PartialFailureError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :PARTIAL_FAILURE_MODE_REQUIRED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :PARTIAL_FAILURE_MODE_REQUIRED, 2
end
defmodule Google.Ads.Googleads.V8.Errors.PartialFailureErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
