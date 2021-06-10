defmodule Google.Ads.Googleads.V8.Enums.LegacyAppInstallAdAppStoreEnum.LegacyAppInstallAdAppStore do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :APPLE_APP_STORE
          | :GOOGLE_PLAY
          | :WINDOWS_STORE
          | :WINDOWS_PHONE_STORE
          | :CN_APP_STORE

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :APPLE_APP_STORE, 2

  field :GOOGLE_PLAY, 3

  field :WINDOWS_STORE, 4

  field :WINDOWS_PHONE_STORE, 5

  field :CN_APP_STORE, 6
end

defmodule Google.Ads.Googleads.V8.Enums.LegacyAppInstallAdAppStoreEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
