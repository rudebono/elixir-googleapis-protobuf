defmodule Google.Ads.Googleads.V4.Resources.AccountLink do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          linked_account: {atom, any},
          resource_name: String.t(),
          account_link_id: Google.Protobuf.Int64Value.t() | nil,
          status: Google.Ads.Googleads.V4.Enums.AccountLinkStatusEnum.AccountLinkStatus.t(),
          type: Google.Ads.Googleads.V4.Enums.LinkedAccountTypeEnum.LinkedAccountType.t()
        }

  defstruct [:linked_account, :resource_name, :account_link_id, :status, :type]

  oneof :linked_account, 0
  field :resource_name, 1, type: :string
  field :account_link_id, 2, type: Google.Protobuf.Int64Value

  field :status, 3,
    type: Google.Ads.Googleads.V4.Enums.AccountLinkStatusEnum.AccountLinkStatus,
    enum: true

  field :type, 4,
    type: Google.Ads.Googleads.V4.Enums.LinkedAccountTypeEnum.LinkedAccountType,
    enum: true

  field :third_party_app_analytics, 5,
    type: Google.Ads.Googleads.V4.Resources.ThirdPartyAppAnalyticsLinkIdentifier,
    oneof: 0
end

defmodule Google.Ads.Googleads.V4.Resources.ThirdPartyAppAnalyticsLinkIdentifier do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          app_analytics_provider_id: Google.Protobuf.Int64Value.t() | nil,
          app_id: Google.Protobuf.StringValue.t() | nil,
          app_vendor: Google.Ads.Googleads.V4.Enums.MobileAppVendorEnum.MobileAppVendor.t()
        }

  defstruct [:app_analytics_provider_id, :app_id, :app_vendor]

  field :app_analytics_provider_id, 1, type: Google.Protobuf.Int64Value
  field :app_id, 2, type: Google.Protobuf.StringValue

  field :app_vendor, 3,
    type: Google.Ads.Googleads.V4.Enums.MobileAppVendorEnum.MobileAppVendor,
    enum: true
end
