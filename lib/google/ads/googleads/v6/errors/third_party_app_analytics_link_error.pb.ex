defmodule Google.Ads.Googleads.V6.Errors.ThirdPartyAppAnalyticsLinkErrorEnum.ThirdPartyAppAnalyticsLinkError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :INVALID_ANALYTICS_PROVIDER_ID
          | :INVALID_MOBILE_APP_ID
          | :MOBILE_APP_IS_NOT_ENABLED
          | :CANNOT_REGENERATE_SHAREABLE_LINK_ID_FOR_REMOVED_LINK

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :INVALID_ANALYTICS_PROVIDER_ID, 2

  field :INVALID_MOBILE_APP_ID, 3

  field :MOBILE_APP_IS_NOT_ENABLED, 4

  field :CANNOT_REGENERATE_SHAREABLE_LINK_ID_FOR_REMOVED_LINK, 5
end

defmodule Google.Ads.Googleads.V6.Errors.ThirdPartyAppAnalyticsLinkErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
