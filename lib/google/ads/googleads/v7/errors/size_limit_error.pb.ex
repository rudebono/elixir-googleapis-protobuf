defmodule Google.Ads.Googleads.V7.Errors.SizeLimitErrorEnum.SizeLimitError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :REQUEST_SIZE_LIMIT_EXCEEDED
          | :RESPONSE_SIZE_LIMIT_EXCEEDED

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :REQUEST_SIZE_LIMIT_EXCEEDED, 2

  field :RESPONSE_SIZE_LIMIT_EXCEEDED, 3
end

defmodule Google.Ads.Googleads.V7.Errors.SizeLimitErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
