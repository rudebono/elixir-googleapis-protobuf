defmodule Google.Ads.Googleads.V4.Enums.ReachPlanAdLengthEnum.ReachPlanAdLength do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :SIX_SECONDS
          | :FIFTEEN_OR_TWENTY_SECONDS
          | :TWENTY_SECONDS_OR_MORE

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :SIX_SECONDS, 2

  field :FIFTEEN_OR_TWENTY_SECONDS, 3

  field :TWENTY_SECONDS_OR_MORE, 4
end

defmodule Google.Ads.Googleads.V4.Enums.ReachPlanAdLengthEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
