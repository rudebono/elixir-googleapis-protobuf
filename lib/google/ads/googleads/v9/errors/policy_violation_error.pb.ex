defmodule Google.Ads.Googleads.V9.Errors.PolicyViolationErrorEnum.PolicyViolationError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :POLICY_ERROR

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :POLICY_ERROR, 2
end
defmodule Google.Ads.Googleads.V9.Errors.PolicyViolationErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
