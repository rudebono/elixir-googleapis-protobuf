defmodule Google.Ads.Googleads.V4.Enums.TimeTypeEnum.TimeType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :NOW | :FOREVER

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :NOW, 2

  field :FOREVER, 3
end

defmodule Google.Ads.Googleads.V4.Enums.TimeTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
