defmodule Google.Ads.Googleads.V7.Enums.GeoTargetConstantStatusEnum.GeoTargetConstantStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ENABLED | :REMOVAL_PLANNED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ENABLED, 2
  field :REMOVAL_PLANNED, 3
end

defmodule Google.Ads.Googleads.V7.Enums.GeoTargetConstantStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
