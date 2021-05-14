defmodule Google.Ads.Googleads.V4.Errors.OperatorErrorEnum.OperatorError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :OPERATOR_NOT_SUPPORTED

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :OPERATOR_NOT_SUPPORTED, 2
end

defmodule Google.Ads.Googleads.V4.Errors.OperatorErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
