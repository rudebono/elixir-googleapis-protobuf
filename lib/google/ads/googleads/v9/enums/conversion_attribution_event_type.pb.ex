defmodule Google.Ads.Googleads.V9.Enums.ConversionAttributionEventTypeEnum.ConversionAttributionEventType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :IMPRESSION | :INTERACTION

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :IMPRESSION, 2
  field :INTERACTION, 3
end

defmodule Google.Ads.Googleads.V9.Enums.ConversionAttributionEventTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
