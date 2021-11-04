defmodule Google.Ads.Googleads.V7.Enums.ConversionCustomVariableStatusEnum.ConversionCustomVariableStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ACTIVATION_NEEDED | :ENABLED | :PAUSED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ACTIVATION_NEEDED, 2
  field :ENABLED, 3
  field :PAUSED, 4
end

defmodule Google.Ads.Googleads.V7.Enums.ConversionCustomVariableStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
