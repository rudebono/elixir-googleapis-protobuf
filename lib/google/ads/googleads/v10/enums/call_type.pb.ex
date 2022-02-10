defmodule Google.Ads.Googleads.V10.Enums.CallTypeEnum.CallType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :MANUALLY_DIALED | :HIGH_END_MOBILE_SEARCH

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :MANUALLY_DIALED, 2
  field :HIGH_END_MOBILE_SEARCH, 3
end
defmodule Google.Ads.Googleads.V10.Enums.CallTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
