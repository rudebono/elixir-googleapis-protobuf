defmodule Google.Ads.Googleads.V9.Enums.ValueRuleDeviceTypeEnum.ValueRuleDeviceType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :MOBILE | :DESKTOP | :TABLET

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :MOBILE, 2
  field :DESKTOP, 3
  field :TABLET, 4
end
defmodule Google.Ads.Googleads.V9.Enums.ValueRuleDeviceTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
