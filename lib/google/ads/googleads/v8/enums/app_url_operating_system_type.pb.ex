defmodule Google.Ads.Googleads.V8.Enums.AppUrlOperatingSystemTypeEnum.AppUrlOperatingSystemType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :IOS | :ANDROID

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :IOS, 2

  field :ANDROID, 3
end

defmodule Google.Ads.Googleads.V8.Enums.AppUrlOperatingSystemTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
