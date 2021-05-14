defmodule Google.Ads.Googleads.V5.Errors.ReachPlanErrorEnum.ReachPlanError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1
end

defmodule Google.Ads.Googleads.V5.Errors.ReachPlanErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
