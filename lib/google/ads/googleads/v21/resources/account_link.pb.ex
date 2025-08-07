defmodule Google.Ads.Googleads.V21.Resources.AccountLink do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :linked_account, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :account_link_id, 8,
    proto3_optional: true,
    type: :int64,
    json_name: "accountLinkId",
    deprecated: false

  field :status, 3,
    type: Google.Ads.Googleads.V21.Enums.AccountLinkStatusEnum.AccountLinkStatus,
    enum: true

  field :type, 4,
    type: Google.Ads.Googleads.V21.Enums.LinkedAccountTypeEnum.LinkedAccountType,
    enum: true,
    deprecated: false

  field :third_party_app_analytics, 5,
    type: Google.Ads.Googleads.V21.Resources.ThirdPartyAppAnalyticsLinkIdentifier,
    json_name: "thirdPartyAppAnalytics",
    oneof: 0,
    deprecated: false
end

defmodule Google.Ads.Googleads.V21.Resources.ThirdPartyAppAnalyticsLinkIdentifier do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :app_analytics_provider_id, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "appAnalyticsProviderId",
    deprecated: false

  field :app_id, 5, proto3_optional: true, type: :string, json_name: "appId", deprecated: false

  field :app_vendor, 3,
    type: Google.Ads.Googleads.V21.Enums.MobileAppVendorEnum.MobileAppVendor,
    json_name: "appVendor",
    enum: true,
    deprecated: false
end
