defmodule Google.Ads.Googleads.V7.Enums.ProductChannelEnum.ProductChannel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ONLINE | :LOCAL

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ONLINE, 2
  field :LOCAL, 3
end

defmodule Google.Ads.Googleads.V7.Enums.ProductChannelEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
