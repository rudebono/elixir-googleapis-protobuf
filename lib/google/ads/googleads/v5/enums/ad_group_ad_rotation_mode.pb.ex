defmodule Google.Ads.Googleads.V5.Enums.AdGroupAdRotationModeEnum.AdGroupAdRotationMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :OPTIMIZE | :ROTATE_FOREVER

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :OPTIMIZE, 2

  field :ROTATE_FOREVER, 3
end

defmodule Google.Ads.Googleads.V5.Enums.AdGroupAdRotationModeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
