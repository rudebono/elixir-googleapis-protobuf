defmodule Google.Ads.Googleads.V5.Enums.CustomInterestTypeEnum.CustomInterestType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :CUSTOM_AFFINITY | :CUSTOM_INTENT

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :CUSTOM_AFFINITY, 2

  field :CUSTOM_INTENT, 3
end

defmodule Google.Ads.Googleads.V5.Enums.CustomInterestTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
