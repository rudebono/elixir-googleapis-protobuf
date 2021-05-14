defmodule Google.Ads.Googleads.V4.Errors.AssetLinkErrorEnum.AssetLinkError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :PINNING_UNSUPPORTED

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :PINNING_UNSUPPORTED, 2
end

defmodule Google.Ads.Googleads.V4.Errors.AssetLinkErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
