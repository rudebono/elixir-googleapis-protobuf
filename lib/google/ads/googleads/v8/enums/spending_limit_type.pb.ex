defmodule Google.Ads.Googleads.V8.Enums.SpendingLimitTypeEnum.SpendingLimitType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :INFINITE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :INFINITE, 2
end
defmodule Google.Ads.Googleads.V8.Enums.SpendingLimitTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
