defmodule Google.Ads.Googleads.V6.Enums.SystemManagedResourceSourceEnum.SystemManagedResourceSource do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :AD_VARIATIONS

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :AD_VARIATIONS, 2
end

defmodule Google.Ads.Googleads.V6.Enums.SystemManagedResourceSourceEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
