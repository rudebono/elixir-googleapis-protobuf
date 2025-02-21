defmodule Google.Cloud.Channel.V1.ListPurchasableSkusRequest.ChangeOfferPurchase.ChangeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CHANGE_TYPE_UNSPECIFIED, 0
  field :UPGRADE, 1
  field :DOWNGRADE, 2
end

defmodule Google.Cloud.Channel.V1.CheckCloudIdentityAccountsExistRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :domain, 2, type: :string, deprecated: false
  field :primary_admin_email, 4, type: :string, json_name: "primaryAdminEmail", deprecated: false
end

defmodule Google.Cloud.Channel.V1.CloudIdentityCustomerAccount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :existing, 1, type: :bool
  field :owned, 2, type: :bool
  field :customer_name, 3, type: :string, json_name: "customerName"
  field :customer_cloud_identity_id, 4, type: :string, json_name: "customerCloudIdentityId"

  field :customer_type, 5,
    type: Google.Cloud.Channel.V1.CloudIdentityInfo.CustomerType,
    json_name: "customerType",
    enum: true

  field :channel_partner_cloud_identity_id, 6,
    type: :string,
    json_name: "channelPartnerCloudIdentityId"
end

defmodule Google.Cloud.Channel.V1.CheckCloudIdentityAccountsExistResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :cloud_identity_accounts, 1,
    repeated: true,
    type: Google.Cloud.Channel.V1.CloudIdentityCustomerAccount,
    json_name: "cloudIdentityAccounts"
end

defmodule Google.Cloud.Channel.V1.ListCustomersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Channel.V1.ListCustomersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customers, 1, repeated: true, type: Google.Cloud.Channel.V1.Customer
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Channel.V1.GetCustomerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Channel.V1.CreateCustomerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :customer, 2, type: Google.Cloud.Channel.V1.Customer, deprecated: false
end

defmodule Google.Cloud.Channel.V1.UpdateCustomerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer, 2, type: Google.Cloud.Channel.V1.Customer, deprecated: false
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Channel.V1.DeleteCustomerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Channel.V1.ImportCustomerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :customer_identity, 0

  field :domain, 2, type: :string, oneof: 0, deprecated: false

  field :cloud_identity_id, 3,
    type: :string,
    json_name: "cloudIdentityId",
    oneof: 0,
    deprecated: false

  field :primary_admin_email, 8,
    type: :string,
    json_name: "primaryAdminEmail",
    oneof: 0,
    deprecated: false

  field :parent, 1, type: :string, deprecated: false
  field :auth_token, 4, type: :string, json_name: "authToken", deprecated: false
  field :overwrite_if_exists, 5, type: :bool, json_name: "overwriteIfExists", deprecated: false
  field :channel_partner_id, 6, type: :string, json_name: "channelPartnerId", deprecated: false
  field :customer, 7, type: :string, deprecated: false
end

defmodule Google.Cloud.Channel.V1.ProvisionCloudIdentityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer, 1, type: :string, deprecated: false

  field :cloud_identity_info, 2,
    type: Google.Cloud.Channel.V1.CloudIdentityInfo,
    json_name: "cloudIdentityInfo"

  field :user, 3, type: Google.Cloud.Channel.V1.AdminUser
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end

defmodule Google.Cloud.Channel.V1.ListEntitlementsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Channel.V1.ListEntitlementsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entitlements, 1, repeated: true, type: Google.Cloud.Channel.V1.Entitlement
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Channel.V1.ListTransferableSkusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :transferred_customer_identity, 0

  field :cloud_identity_id, 4, type: :string, json_name: "cloudIdentityId", oneof: 0
  field :customer_name, 7, type: :string, json_name: "customerName", oneof: 0
  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :auth_token, 5, type: :string, json_name: "authToken", deprecated: false
  field :language_code, 6, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Channel.V1.ListTransferableSkusResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :transferable_skus, 1,
    repeated: true,
    type: Google.Cloud.Channel.V1.TransferableSku,
    json_name: "transferableSkus"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Channel.V1.ListTransferableOffersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :transferred_customer_identity, 0

  field :cloud_identity_id, 4, type: :string, json_name: "cloudIdentityId", oneof: 0
  field :customer_name, 5, type: :string, json_name: "customerName", oneof: 0
  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :sku, 6, type: :string, deprecated: false
  field :language_code, 7, type: :string, json_name: "languageCode", deprecated: false
  field :billing_account, 8, type: :string, json_name: "billingAccount", deprecated: false
end

defmodule Google.Cloud.Channel.V1.ListTransferableOffersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :transferable_offers, 1,
    repeated: true,
    type: Google.Cloud.Channel.V1.TransferableOffer,
    json_name: "transferableOffers"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Channel.V1.TransferableOffer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :offer, 1, type: Google.Cloud.Channel.V1.Offer
end

defmodule Google.Cloud.Channel.V1.GetEntitlementRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Channel.V1.ListChannelPartnerLinksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false

  field :view, 4,
    type: Google.Cloud.Channel.V1.ChannelPartnerLinkView,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Channel.V1.ListChannelPartnerLinksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :channel_partner_links, 1,
    repeated: true,
    type: Google.Cloud.Channel.V1.ChannelPartnerLink,
    json_name: "channelPartnerLinks"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Channel.V1.GetChannelPartnerLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :view, 2,
    type: Google.Cloud.Channel.V1.ChannelPartnerLinkView,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Channel.V1.CreateChannelPartnerLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :channel_partner_link, 2,
    type: Google.Cloud.Channel.V1.ChannelPartnerLink,
    json_name: "channelPartnerLink",
    deprecated: false
end

defmodule Google.Cloud.Channel.V1.UpdateChannelPartnerLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :channel_partner_link, 2,
    type: Google.Cloud.Channel.V1.ChannelPartnerLink,
    json_name: "channelPartnerLink",
    deprecated: false

  field :update_mask, 3,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Channel.V1.GetCustomerRepricingConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Channel.V1.ListCustomerRepricingConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Channel.V1.ListCustomerRepricingConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_repricing_configs, 1,
    repeated: true,
    type: Google.Cloud.Channel.V1.CustomerRepricingConfig,
    json_name: "customerRepricingConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Channel.V1.CreateCustomerRepricingConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :customer_repricing_config, 2,
    type: Google.Cloud.Channel.V1.CustomerRepricingConfig,
    json_name: "customerRepricingConfig",
    deprecated: false
end

defmodule Google.Cloud.Channel.V1.UpdateCustomerRepricingConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_repricing_config, 1,
    type: Google.Cloud.Channel.V1.CustomerRepricingConfig,
    json_name: "customerRepricingConfig",
    deprecated: false
end

defmodule Google.Cloud.Channel.V1.DeleteCustomerRepricingConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Channel.V1.GetChannelPartnerRepricingConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Channel.V1.ListChannelPartnerRepricingConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Channel.V1.ListChannelPartnerRepricingConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :channel_partner_repricing_configs, 1,
    repeated: true,
    type: Google.Cloud.Channel.V1.ChannelPartnerRepricingConfig,
    json_name: "channelPartnerRepricingConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Channel.V1.CreateChannelPartnerRepricingConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :channel_partner_repricing_config, 2,
    type: Google.Cloud.Channel.V1.ChannelPartnerRepricingConfig,
    json_name: "channelPartnerRepricingConfig",
    deprecated: false
end

defmodule Google.Cloud.Channel.V1.UpdateChannelPartnerRepricingConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :channel_partner_repricing_config, 1,
    type: Google.Cloud.Channel.V1.ChannelPartnerRepricingConfig,
    json_name: "channelPartnerRepricingConfig",
    deprecated: false
end

defmodule Google.Cloud.Channel.V1.DeleteChannelPartnerRepricingConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Channel.V1.ListSkuGroupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Channel.V1.ListSkuGroupBillableSkusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Channel.V1.ListSkuGroupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :sku_groups, 1,
    repeated: true,
    type: Google.Cloud.Channel.V1.SkuGroup,
    json_name: "skuGroups"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Channel.V1.ListSkuGroupBillableSkusResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :billable_skus, 1,
    repeated: true,
    type: Google.Cloud.Channel.V1.BillableSku,
    json_name: "billableSkus"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Channel.V1.SkuGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Channel.V1.BillableSku do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :sku, 1, type: :string
  field :sku_display_name, 2, type: :string, json_name: "skuDisplayName"
  field :service, 3, type: :string
  field :service_display_name, 4, type: :string, json_name: "serviceDisplayName"
end

defmodule Google.Cloud.Channel.V1.CreateEntitlementRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :entitlement, 2, type: Google.Cloud.Channel.V1.Entitlement, deprecated: false
  field :request_id, 5, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Channel.V1.TransferEntitlementsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :entitlements, 2,
    repeated: true,
    type: Google.Cloud.Channel.V1.Entitlement,
    deprecated: false

  field :auth_token, 4, type: :string, json_name: "authToken"
  field :request_id, 6, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Channel.V1.TransferEntitlementsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entitlements, 1, repeated: true, type: Google.Cloud.Channel.V1.Entitlement
end

defmodule Google.Cloud.Channel.V1.TransferEntitlementsToGoogleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :entitlements, 2,
    repeated: true,
    type: Google.Cloud.Channel.V1.Entitlement,
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Channel.V1.ChangeParametersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :parameters, 2, repeated: true, type: Google.Cloud.Channel.V1.Parameter, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :purchase_order_id, 5, type: :string, json_name: "purchaseOrderId", deprecated: false
end

defmodule Google.Cloud.Channel.V1.ChangeRenewalSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :renewal_settings, 4,
    type: Google.Cloud.Channel.V1.RenewalSettings,
    json_name: "renewalSettings",
    deprecated: false

  field :request_id, 5, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Channel.V1.ChangeOfferRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :offer, 2, type: :string, deprecated: false
  field :parameters, 3, repeated: true, type: Google.Cloud.Channel.V1.Parameter, deprecated: false
  field :purchase_order_id, 5, type: :string, json_name: "purchaseOrderId", deprecated: false
  field :request_id, 6, type: :string, json_name: "requestId", deprecated: false
  field :billing_account, 7, type: :string, json_name: "billingAccount", deprecated: false
end

defmodule Google.Cloud.Channel.V1.StartPaidServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Channel.V1.CancelEntitlementRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Channel.V1.SuspendEntitlementRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Channel.V1.ActivateEntitlementRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Channel.V1.LookupOfferRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entitlement, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Channel.V1.ListProductsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :account, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :language_code, 4, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Cloud.Channel.V1.ListProductsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :products, 1, repeated: true, type: Google.Cloud.Channel.V1.Product
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Channel.V1.ListSkusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :account, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
  field :language_code, 5, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Cloud.Channel.V1.ListSkusResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :skus, 1, repeated: true, type: Google.Cloud.Channel.V1.Sku
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Channel.V1.ListOffersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :language_code, 5, type: :string, json_name: "languageCode", deprecated: false
  field :show_future_offers, 7, type: :bool, json_name: "showFutureOffers", deprecated: false
end

defmodule Google.Cloud.Channel.V1.ListOffersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :offers, 1, repeated: true, type: Google.Cloud.Channel.V1.Offer
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Channel.V1.ListPurchasableSkusRequest.CreateEntitlementPurchase do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :product, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Channel.V1.ListPurchasableSkusRequest.ChangeOfferPurchase do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entitlement, 1, type: :string, deprecated: false

  field :change_type, 2,
    type: Google.Cloud.Channel.V1.ListPurchasableSkusRequest.ChangeOfferPurchase.ChangeType,
    json_name: "changeType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Channel.V1.ListPurchasableSkusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :purchase_option, 0

  field :create_entitlement_purchase, 2,
    type: Google.Cloud.Channel.V1.ListPurchasableSkusRequest.CreateEntitlementPurchase,
    json_name: "createEntitlementPurchase",
    oneof: 0

  field :change_offer_purchase, 3,
    type: Google.Cloud.Channel.V1.ListPurchasableSkusRequest.ChangeOfferPurchase,
    json_name: "changeOfferPurchase",
    oneof: 0

  field :customer, 1, type: :string, deprecated: false
  field :page_size, 4, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 5, type: :string, json_name: "pageToken", deprecated: false
  field :language_code, 6, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Cloud.Channel.V1.ListPurchasableSkusResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :purchasable_skus, 1,
    repeated: true,
    type: Google.Cloud.Channel.V1.PurchasableSku,
    json_name: "purchasableSkus"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Channel.V1.PurchasableSku do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :sku, 1, type: Google.Cloud.Channel.V1.Sku
end

defmodule Google.Cloud.Channel.V1.ListPurchasableOffersRequest.CreateEntitlementPurchase do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :sku, 1, type: :string, deprecated: false
  field :billing_account, 2, type: :string, json_name: "billingAccount", deprecated: false
end

defmodule Google.Cloud.Channel.V1.ListPurchasableOffersRequest.ChangeOfferPurchase do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entitlement, 1, type: :string, deprecated: false
  field :new_sku, 2, type: :string, json_name: "newSku", deprecated: false
  field :billing_account, 3, type: :string, json_name: "billingAccount", deprecated: false
end

defmodule Google.Cloud.Channel.V1.ListPurchasableOffersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :purchase_option, 0

  field :create_entitlement_purchase, 2,
    type: Google.Cloud.Channel.V1.ListPurchasableOffersRequest.CreateEntitlementPurchase,
    json_name: "createEntitlementPurchase",
    oneof: 0

  field :change_offer_purchase, 3,
    type: Google.Cloud.Channel.V1.ListPurchasableOffersRequest.ChangeOfferPurchase,
    json_name: "changeOfferPurchase",
    oneof: 0

  field :customer, 1, type: :string, deprecated: false
  field :page_size, 4, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 5, type: :string, json_name: "pageToken", deprecated: false
  field :language_code, 6, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Cloud.Channel.V1.ListPurchasableOffersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :purchasable_offers, 1,
    repeated: true,
    type: Google.Cloud.Channel.V1.PurchasableOffer,
    json_name: "purchasableOffers"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Channel.V1.PurchasableOffer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :offer, 1, type: Google.Cloud.Channel.V1.Offer
end

defmodule Google.Cloud.Channel.V1.QueryEligibleBillingAccountsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer, 1, type: :string, deprecated: false
  field :skus, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Channel.V1.QueryEligibleBillingAccountsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :sku_purchase_groups, 1,
    repeated: true,
    type: Google.Cloud.Channel.V1.SkuPurchaseGroup,
    json_name: "skuPurchaseGroups"
end

defmodule Google.Cloud.Channel.V1.SkuPurchaseGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :skus, 1, repeated: true, type: :string

  field :billing_account_purchase_infos, 2,
    repeated: true,
    type: Google.Cloud.Channel.V1.BillingAccountPurchaseInfo,
    json_name: "billingAccountPurchaseInfos"
end

defmodule Google.Cloud.Channel.V1.BillingAccountPurchaseInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :billing_account, 1,
    type: Google.Cloud.Channel.V1.BillingAccount,
    json_name: "billingAccount"
end

defmodule Google.Cloud.Channel.V1.RegisterSubscriberRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :account, 1, type: :string, deprecated: false
  field :service_account, 2, type: :string, json_name: "serviceAccount", deprecated: false
end

defmodule Google.Cloud.Channel.V1.RegisterSubscriberResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :topic, 1, type: :string
end

defmodule Google.Cloud.Channel.V1.UnregisterSubscriberRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :account, 1, type: :string, deprecated: false
  field :service_account, 2, type: :string, json_name: "serviceAccount", deprecated: false
end

defmodule Google.Cloud.Channel.V1.UnregisterSubscriberResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :topic, 1, type: :string
end

defmodule Google.Cloud.Channel.V1.ListSubscribersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :account, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Channel.V1.ListSubscribersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :topic, 1, type: :string
  field :service_accounts, 2, repeated: true, type: :string, json_name: "serviceAccounts"
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Channel.V1.ListEntitlementChangesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Channel.V1.ListEntitlementChangesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entitlement_changes, 1,
    repeated: true,
    type: Google.Cloud.Channel.V1.EntitlementChange,
    json_name: "entitlementChanges"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Channel.V1.CloudChannelService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.channel.v1.CloudChannelService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListCustomers,
      Google.Cloud.Channel.V1.ListCustomersRequest,
      Google.Cloud.Channel.V1.ListCustomersResponse

  rpc :GetCustomer, Google.Cloud.Channel.V1.GetCustomerRequest, Google.Cloud.Channel.V1.Customer

  rpc :CheckCloudIdentityAccountsExist,
      Google.Cloud.Channel.V1.CheckCloudIdentityAccountsExistRequest,
      Google.Cloud.Channel.V1.CheckCloudIdentityAccountsExistResponse

  rpc :CreateCustomer,
      Google.Cloud.Channel.V1.CreateCustomerRequest,
      Google.Cloud.Channel.V1.Customer

  rpc :UpdateCustomer,
      Google.Cloud.Channel.V1.UpdateCustomerRequest,
      Google.Cloud.Channel.V1.Customer

  rpc :DeleteCustomer, Google.Cloud.Channel.V1.DeleteCustomerRequest, Google.Protobuf.Empty

  rpc :ImportCustomer,
      Google.Cloud.Channel.V1.ImportCustomerRequest,
      Google.Cloud.Channel.V1.Customer

  rpc :ProvisionCloudIdentity,
      Google.Cloud.Channel.V1.ProvisionCloudIdentityRequest,
      Google.Longrunning.Operation

  rpc :ListEntitlements,
      Google.Cloud.Channel.V1.ListEntitlementsRequest,
      Google.Cloud.Channel.V1.ListEntitlementsResponse

  rpc :ListTransferableSkus,
      Google.Cloud.Channel.V1.ListTransferableSkusRequest,
      Google.Cloud.Channel.V1.ListTransferableSkusResponse

  rpc :ListTransferableOffers,
      Google.Cloud.Channel.V1.ListTransferableOffersRequest,
      Google.Cloud.Channel.V1.ListTransferableOffersResponse

  rpc :GetEntitlement,
      Google.Cloud.Channel.V1.GetEntitlementRequest,
      Google.Cloud.Channel.V1.Entitlement

  rpc :CreateEntitlement,
      Google.Cloud.Channel.V1.CreateEntitlementRequest,
      Google.Longrunning.Operation

  rpc :ChangeParameters,
      Google.Cloud.Channel.V1.ChangeParametersRequest,
      Google.Longrunning.Operation

  rpc :ChangeRenewalSettings,
      Google.Cloud.Channel.V1.ChangeRenewalSettingsRequest,
      Google.Longrunning.Operation

  rpc :ChangeOffer, Google.Cloud.Channel.V1.ChangeOfferRequest, Google.Longrunning.Operation

  rpc :StartPaidService,
      Google.Cloud.Channel.V1.StartPaidServiceRequest,
      Google.Longrunning.Operation

  rpc :SuspendEntitlement,
      Google.Cloud.Channel.V1.SuspendEntitlementRequest,
      Google.Longrunning.Operation

  rpc :CancelEntitlement,
      Google.Cloud.Channel.V1.CancelEntitlementRequest,
      Google.Longrunning.Operation

  rpc :ActivateEntitlement,
      Google.Cloud.Channel.V1.ActivateEntitlementRequest,
      Google.Longrunning.Operation

  rpc :TransferEntitlements,
      Google.Cloud.Channel.V1.TransferEntitlementsRequest,
      Google.Longrunning.Operation

  rpc :TransferEntitlementsToGoogle,
      Google.Cloud.Channel.V1.TransferEntitlementsToGoogleRequest,
      Google.Longrunning.Operation

  rpc :ListChannelPartnerLinks,
      Google.Cloud.Channel.V1.ListChannelPartnerLinksRequest,
      Google.Cloud.Channel.V1.ListChannelPartnerLinksResponse

  rpc :GetChannelPartnerLink,
      Google.Cloud.Channel.V1.GetChannelPartnerLinkRequest,
      Google.Cloud.Channel.V1.ChannelPartnerLink

  rpc :CreateChannelPartnerLink,
      Google.Cloud.Channel.V1.CreateChannelPartnerLinkRequest,
      Google.Cloud.Channel.V1.ChannelPartnerLink

  rpc :UpdateChannelPartnerLink,
      Google.Cloud.Channel.V1.UpdateChannelPartnerLinkRequest,
      Google.Cloud.Channel.V1.ChannelPartnerLink

  rpc :GetCustomerRepricingConfig,
      Google.Cloud.Channel.V1.GetCustomerRepricingConfigRequest,
      Google.Cloud.Channel.V1.CustomerRepricingConfig

  rpc :ListCustomerRepricingConfigs,
      Google.Cloud.Channel.V1.ListCustomerRepricingConfigsRequest,
      Google.Cloud.Channel.V1.ListCustomerRepricingConfigsResponse

  rpc :CreateCustomerRepricingConfig,
      Google.Cloud.Channel.V1.CreateCustomerRepricingConfigRequest,
      Google.Cloud.Channel.V1.CustomerRepricingConfig

  rpc :UpdateCustomerRepricingConfig,
      Google.Cloud.Channel.V1.UpdateCustomerRepricingConfigRequest,
      Google.Cloud.Channel.V1.CustomerRepricingConfig

  rpc :DeleteCustomerRepricingConfig,
      Google.Cloud.Channel.V1.DeleteCustomerRepricingConfigRequest,
      Google.Protobuf.Empty

  rpc :GetChannelPartnerRepricingConfig,
      Google.Cloud.Channel.V1.GetChannelPartnerRepricingConfigRequest,
      Google.Cloud.Channel.V1.ChannelPartnerRepricingConfig

  rpc :ListChannelPartnerRepricingConfigs,
      Google.Cloud.Channel.V1.ListChannelPartnerRepricingConfigsRequest,
      Google.Cloud.Channel.V1.ListChannelPartnerRepricingConfigsResponse

  rpc :CreateChannelPartnerRepricingConfig,
      Google.Cloud.Channel.V1.CreateChannelPartnerRepricingConfigRequest,
      Google.Cloud.Channel.V1.ChannelPartnerRepricingConfig

  rpc :UpdateChannelPartnerRepricingConfig,
      Google.Cloud.Channel.V1.UpdateChannelPartnerRepricingConfigRequest,
      Google.Cloud.Channel.V1.ChannelPartnerRepricingConfig

  rpc :DeleteChannelPartnerRepricingConfig,
      Google.Cloud.Channel.V1.DeleteChannelPartnerRepricingConfigRequest,
      Google.Protobuf.Empty

  rpc :ListSkuGroups,
      Google.Cloud.Channel.V1.ListSkuGroupsRequest,
      Google.Cloud.Channel.V1.ListSkuGroupsResponse

  rpc :ListSkuGroupBillableSkus,
      Google.Cloud.Channel.V1.ListSkuGroupBillableSkusRequest,
      Google.Cloud.Channel.V1.ListSkuGroupBillableSkusResponse

  rpc :LookupOffer, Google.Cloud.Channel.V1.LookupOfferRequest, Google.Cloud.Channel.V1.Offer

  rpc :ListProducts,
      Google.Cloud.Channel.V1.ListProductsRequest,
      Google.Cloud.Channel.V1.ListProductsResponse

  rpc :ListSkus, Google.Cloud.Channel.V1.ListSkusRequest, Google.Cloud.Channel.V1.ListSkusResponse

  rpc :ListOffers,
      Google.Cloud.Channel.V1.ListOffersRequest,
      Google.Cloud.Channel.V1.ListOffersResponse

  rpc :ListPurchasableSkus,
      Google.Cloud.Channel.V1.ListPurchasableSkusRequest,
      Google.Cloud.Channel.V1.ListPurchasableSkusResponse

  rpc :ListPurchasableOffers,
      Google.Cloud.Channel.V1.ListPurchasableOffersRequest,
      Google.Cloud.Channel.V1.ListPurchasableOffersResponse

  rpc :QueryEligibleBillingAccounts,
      Google.Cloud.Channel.V1.QueryEligibleBillingAccountsRequest,
      Google.Cloud.Channel.V1.QueryEligibleBillingAccountsResponse

  rpc :RegisterSubscriber,
      Google.Cloud.Channel.V1.RegisterSubscriberRequest,
      Google.Cloud.Channel.V1.RegisterSubscriberResponse

  rpc :UnregisterSubscriber,
      Google.Cloud.Channel.V1.UnregisterSubscriberRequest,
      Google.Cloud.Channel.V1.UnregisterSubscriberResponse

  rpc :ListSubscribers,
      Google.Cloud.Channel.V1.ListSubscribersRequest,
      Google.Cloud.Channel.V1.ListSubscribersResponse

  rpc :ListEntitlementChanges,
      Google.Cloud.Channel.V1.ListEntitlementChangesRequest,
      Google.Cloud.Channel.V1.ListEntitlementChangesResponse
end

defmodule Google.Cloud.Channel.V1.CloudChannelService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Channel.V1.CloudChannelService.Service
end
