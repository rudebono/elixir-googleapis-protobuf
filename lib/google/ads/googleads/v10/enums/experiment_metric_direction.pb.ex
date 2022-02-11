defmodule Google.Ads.Googleads.V10.Enums.ExperimentMetricDirectionEnum.ExperimentMetricDirection do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :NO_CHANGE
          | :INCREASE
          | :DECREASE
          | :NO_CHANGE_OR_INCREASE
          | :NO_CHANGE_OR_DECREASE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :NO_CHANGE, 2
  field :INCREASE, 3
  field :DECREASE, 4
  field :NO_CHANGE_OR_INCREASE, 5
  field :NO_CHANGE_OR_DECREASE, 6
end
defmodule Google.Ads.Googleads.V10.Enums.ExperimentMetricDirectionEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
