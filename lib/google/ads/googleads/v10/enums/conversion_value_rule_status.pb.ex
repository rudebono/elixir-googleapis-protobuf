defmodule Google.Ads.Googleads.V10.Enums.ConversionValueRuleStatusEnum.ConversionValueRuleStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ENABLED | :REMOVED | :PAUSED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ENABLED, 2
  field :REMOVED, 3
  field :PAUSED, 4
end
defmodule Google.Ads.Googleads.V10.Enums.ConversionValueRuleStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
