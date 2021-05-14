defmodule Google.Ads.Googleads.V5.Enums.SimulationModificationMethodEnum.SimulationModificationMethod do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :UNIFORM | :DEFAULT

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :UNIFORM, 2

  field :DEFAULT, 3
end

defmodule Google.Ads.Googleads.V5.Enums.SimulationModificationMethodEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
