defmodule Google.Ads.Googleads.V8.Enums.AppCampaignAppStoreEnum.AppCampaignAppStore do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :APPLE_APP_STORE | :GOOGLE_APP_STORE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :APPLE_APP_STORE, 2
  field :GOOGLE_APP_STORE, 3
end
defmodule Google.Ads.Googleads.V8.Enums.AppCampaignAppStoreEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
