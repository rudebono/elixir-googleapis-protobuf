defmodule Google.Ads.Googleads.V9.Errors.AssetSetErrorEnum.AssetSetError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :DUPLICATE_ASSET_SET_NAME

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :DUPLICATE_ASSET_SET_NAME, 2
end
defmodule Google.Ads.Googleads.V9.Errors.AssetSetErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
