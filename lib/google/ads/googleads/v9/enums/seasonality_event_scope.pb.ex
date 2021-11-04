defmodule Google.Ads.Googleads.V9.Enums.SeasonalityEventScopeEnum.SeasonalityEventScope do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :CUSTOMER | :CAMPAIGN | :CHANNEL

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CUSTOMER, 2
  field :CAMPAIGN, 4
  field :CHANNEL, 5
end

defmodule Google.Ads.Googleads.V9.Enums.SeasonalityEventScopeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
