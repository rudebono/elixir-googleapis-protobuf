defmodule Google.Ads.Googleads.V4.Errors.PolicyFindingErrorEnum.PolicyFindingError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :POLICY_FINDING | :POLICY_TOPIC_NOT_FOUND

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :POLICY_FINDING, 2

  field :POLICY_TOPIC_NOT_FOUND, 3
end

defmodule Google.Ads.Googleads.V4.Errors.PolicyFindingErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
