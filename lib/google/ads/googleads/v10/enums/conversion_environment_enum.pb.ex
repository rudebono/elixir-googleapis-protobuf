defmodule Google.Ads.Googleads.V10.Enums.ConversionEnvironmentEnum.ConversionEnvironment do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :APP | :WEB

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :APP, 2
  field :WEB, 3
end
defmodule Google.Ads.Googleads.V10.Enums.ConversionEnvironmentEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
