defmodule Google.Ads.Googleads.V7.Errors.RegionCodeErrorEnum.RegionCodeError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :INVALID_REGION_CODE

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :INVALID_REGION_CODE, 2
end

defmodule Google.Ads.Googleads.V7.Errors.RegionCodeErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
