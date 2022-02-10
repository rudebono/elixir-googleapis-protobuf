defmodule Google.Ads.Googleads.V10.Enums.SkAdNetworkUserTypeEnum.SkAdNetworkUserType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :UNAVAILABLE | :NEW_INSTALLER | :REINSTALLER

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :UNAVAILABLE, 2
  field :NEW_INSTALLER, 3
  field :REINSTALLER, 4
end
defmodule Google.Ads.Googleads.V10.Enums.SkAdNetworkUserTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
