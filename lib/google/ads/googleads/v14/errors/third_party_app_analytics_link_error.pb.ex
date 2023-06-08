defmodule Google.Ads.Googleads.V14.Errors.ThirdPartyAppAnalyticsLinkErrorEnum.ThirdPartyAppAnalyticsLinkError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :INVALID_ANALYTICS_PROVIDER_ID, 2
  field :INVALID_MOBILE_APP_ID, 3
  field :MOBILE_APP_IS_NOT_ENABLED, 4
  field :CANNOT_REGENERATE_SHAREABLE_LINK_ID_FOR_REMOVED_LINK, 5
end

defmodule Google.Ads.Googleads.V14.Errors.ThirdPartyAppAnalyticsLinkErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end