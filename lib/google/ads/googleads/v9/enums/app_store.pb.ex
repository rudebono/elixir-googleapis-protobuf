defmodule Google.Ads.Googleads.V9.Enums.AppStoreEnum.AppStore do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :APPLE_ITUNES | :GOOGLE_PLAY

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :APPLE_ITUNES, 2
  field :GOOGLE_PLAY, 3
end

defmodule Google.Ads.Googleads.V9.Enums.AppStoreEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
