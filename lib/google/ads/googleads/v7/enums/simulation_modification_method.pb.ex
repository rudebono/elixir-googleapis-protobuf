defmodule Google.Ads.Googleads.V7.Enums.SimulationModificationMethodEnum.SimulationModificationMethod do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :UNIFORM | :DEFAULT | :SCALING

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :UNIFORM, 2
  field :DEFAULT, 3
  field :SCALING, 4
end
defmodule Google.Ads.Googleads.V7.Enums.SimulationModificationMethodEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
