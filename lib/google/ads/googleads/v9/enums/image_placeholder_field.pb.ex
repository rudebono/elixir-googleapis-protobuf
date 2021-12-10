defmodule Google.Ads.Googleads.V9.Enums.ImagePlaceholderFieldEnum.ImagePlaceholderField do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ASSET_ID

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ASSET_ID, 2
end
defmodule Google.Ads.Googleads.V9.Enums.ImagePlaceholderFieldEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
