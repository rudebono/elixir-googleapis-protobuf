defmodule Google.Cloud.Channel.V1.ListPurchasableSkusRequest.ChangeOfferPurchase.ChangeType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :CHANGE_TYPE_UNSPECIFIED | :UPGRADE | :DOWNGRADE

  field :CHANGE_TYPE_UNSPECIFIED, 0
  field :UPGRADE, 1
  field :DOWNGRADE, 2
end
defmodule Google.Cloud.Channel.V1.CheckCloudIdentityAccountsExistRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          domain: String.t()
        }

  defstruct parent: "",
            domain: ""

  field :parent, 1, type: :string, deprecated: false
  field :domain, 2, type: :string, deprecated: false
end
defmodule Google.Cloud.Channel.V1.CloudIdentityCustomerAccount do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          existing: boolean,
          owned: boolean,
          customer_name: String.t(),
          customer_cloud_identity_id: String.t()
        }

  defstruct existing: false,
            owned: false,
            customer_name: "",
            customer_cloud_identity_id: ""

  field :existing, 1, type: :bool
  field :owned, 2, type: :bool
  field :customer_name, 3, type: :string, json_name: "customerName"
  field :customer_cloud_identity_id, 4, type: :string, json_name: "customerCloudIdentityId"
end
defmodule Google.Cloud.Channel.V1.CheckCloudIdentityAccountsExistResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cloud_identity_accounts: [Google.Cloud.Channel.V1.CloudIdentityCustomerAccount.t()]
        }

  defstruct cloud_identity_accounts: []

  field :cloud_identity_accounts, 1,
    repeated: true,
    type: Google.Cloud.Channel.V1.CloudIdentityCustomerAccount,
    json_name: "cloudIdentityAccounts"
end
defmodule Google.Cloud.Channel.V1.ListCustomersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end
defmodule Google.Cloud.Channel.V1.ListCustomersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customers: [Google.Cloud.Channel.V1.Customer.t()],
          next_page_token: String.t()
        }

  defstruct customers: [],
            next_page_token: ""

  field :customers, 1, repeated: true, type: Google.Cloud.Channel.V1.Customer
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Channel.V1.GetCustomerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Channel.V1.CreateCustomerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          customer: Google.Cloud.Channel.V1.Customer.t() | nil
        }

  defstruct parent: "",
            customer: nil

  field :parent, 1, type: :string, deprecated: false
  field :customer, 2, type: Google.Cloud.Channel.V1.Customer, deprecated: false
end
defmodule Google.Cloud.Channel.V1.UpdateCustomerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer: Google.Cloud.Channel.V1.Customer.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct customer: nil,
            update_mask: nil

  field :customer, 2, type: Google.Cloud.Channel.V1.Customer, deprecated: false
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Channel.V1.DeleteCustomerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Channel.V1.ImportCustomerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_identity: {:domain, String.t()} | {:cloud_identity_id, String.t()},
          parent: String.t(),
          auth_token: String.t(),
          overwrite_if_exists: boolean,
          channel_partner_id: String.t(),
          customer: String.t()
        }

  defstruct customer_identity: nil,
            parent: "",
            auth_token: "",
            overwrite_if_exists: false,
            channel_partner_id: "",
            customer: ""

  oneof :customer_identity, 0

  field :domain, 2, type: :string, oneof: 0, deprecated: false

  field :cloud_identity_id, 3,
    type: :string,
    json_name: "cloudIdentityId",
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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer: String.t(),
          cloud_identity_info: Google.Cloud.Channel.V1.CloudIdentityInfo.t() | nil,
          user: Google.Cloud.Channel.V1.AdminUser.t() | nil,
          validate_only: boolean
        }

  defstruct customer: "",
            cloud_identity_info: nil,
            user: nil,
            validate_only: false

  field :customer, 1, type: :string, deprecated: false

  field :cloud_identity_info, 2,
    type: Google.Cloud.Channel.V1.CloudIdentityInfo,
    json_name: "cloudIdentityInfo"

  field :user, 3, type: Google.Cloud.Channel.V1.AdminUser
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end
defmodule Google.Cloud.Channel.V1.ListEntitlementsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end
defmodule Google.Cloud.Channel.V1.ListEntitlementsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entitlements: [Google.Cloud.Channel.V1.Entitlement.t()],
          next_page_token: String.t()
        }

  defstruct entitlements: [],
            next_page_token: ""

  field :entitlements, 1, repeated: true, type: Google.Cloud.Channel.V1.Entitlement
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Channel.V1.ListTransferableSkusRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transferred_customer_identity:
            {:cloud_identity_id, String.t()} | {:customer_name, String.t()},
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          auth_token: String.t(),
          language_code: String.t()
        }

  defstruct transferred_customer_identity: nil,
            parent: "",
            page_size: 0,
            page_token: "",
            auth_token: "",
            language_code: ""

  oneof :transferred_customer_identity, 0

  field :cloud_identity_id, 4, type: :string, json_name: "cloudIdentityId", oneof: 0
  field :customer_name, 7, type: :string, json_name: "customerName", oneof: 0
  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :auth_token, 5, type: :string, json_name: "authToken"
  field :language_code, 6, type: :string, json_name: "languageCode"
end
defmodule Google.Cloud.Channel.V1.ListTransferableSkusResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transferable_skus: [Google.Cloud.Channel.V1.TransferableSku.t()],
          next_page_token: String.t()
        }

  defstruct transferable_skus: [],
            next_page_token: ""

  field :transferable_skus, 1,
    repeated: true,
    type: Google.Cloud.Channel.V1.TransferableSku,
    json_name: "transferableSkus"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Channel.V1.ListTransferableOffersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transferred_customer_identity:
            {:cloud_identity_id, String.t()} | {:customer_name, String.t()},
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          sku: String.t(),
          language_code: String.t()
        }

  defstruct transferred_customer_identity: nil,
            parent: "",
            page_size: 0,
            page_token: "",
            sku: "",
            language_code: ""

  oneof :transferred_customer_identity, 0

  field :cloud_identity_id, 4, type: :string, json_name: "cloudIdentityId", oneof: 0
  field :customer_name, 5, type: :string, json_name: "customerName", oneof: 0
  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :sku, 6, type: :string, deprecated: false
  field :language_code, 7, type: :string, json_name: "languageCode"
end
defmodule Google.Cloud.Channel.V1.ListTransferableOffersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transferable_offers: [Google.Cloud.Channel.V1.TransferableOffer.t()],
          next_page_token: String.t()
        }

  defstruct transferable_offers: [],
            next_page_token: ""

  field :transferable_offers, 1,
    repeated: true,
    type: Google.Cloud.Channel.V1.TransferableOffer,
    json_name: "transferableOffers"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Channel.V1.TransferableOffer do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          offer: Google.Cloud.Channel.V1.Offer.t() | nil
        }

  defstruct offer: nil

  field :offer, 1, type: Google.Cloud.Channel.V1.Offer
end
defmodule Google.Cloud.Channel.V1.GetEntitlementRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Channel.V1.ListChannelPartnerLinksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          view: Google.Cloud.Channel.V1.ChannelPartnerLinkView.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            view: :UNSPECIFIED

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_partner_links: [Google.Cloud.Channel.V1.ChannelPartnerLink.t()],
          next_page_token: String.t()
        }

  defstruct channel_partner_links: [],
            next_page_token: ""

  field :channel_partner_links, 1,
    repeated: true,
    type: Google.Cloud.Channel.V1.ChannelPartnerLink,
    json_name: "channelPartnerLinks"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Channel.V1.GetChannelPartnerLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          view: Google.Cloud.Channel.V1.ChannelPartnerLinkView.t()
        }

  defstruct name: "",
            view: :UNSPECIFIED

  field :name, 1, type: :string, deprecated: false

  field :view, 2,
    type: Google.Cloud.Channel.V1.ChannelPartnerLinkView,
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Channel.V1.CreateChannelPartnerLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          channel_partner_link: Google.Cloud.Channel.V1.ChannelPartnerLink.t() | nil
        }

  defstruct parent: "",
            channel_partner_link: nil

  field :parent, 1, type: :string, deprecated: false

  field :channel_partner_link, 2,
    type: Google.Cloud.Channel.V1.ChannelPartnerLink,
    json_name: "channelPartnerLink",
    deprecated: false
end
defmodule Google.Cloud.Channel.V1.UpdateChannelPartnerLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          channel_partner_link: Google.Cloud.Channel.V1.ChannelPartnerLink.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct name: "",
            channel_partner_link: nil,
            update_mask: nil

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
defmodule Google.Cloud.Channel.V1.CreateEntitlementRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          entitlement: Google.Cloud.Channel.V1.Entitlement.t() | nil,
          request_id: String.t()
        }

  defstruct parent: "",
            entitlement: nil,
            request_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :entitlement, 2, type: Google.Cloud.Channel.V1.Entitlement, deprecated: false
  field :request_id, 5, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Channel.V1.TransferEntitlementsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          entitlements: [Google.Cloud.Channel.V1.Entitlement.t()],
          auth_token: String.t(),
          request_id: String.t()
        }

  defstruct parent: "",
            entitlements: [],
            auth_token: "",
            request_id: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entitlements: [Google.Cloud.Channel.V1.Entitlement.t()]
        }

  defstruct entitlements: []

  field :entitlements, 1, repeated: true, type: Google.Cloud.Channel.V1.Entitlement
end
defmodule Google.Cloud.Channel.V1.TransferEntitlementsToGoogleRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          entitlements: [Google.Cloud.Channel.V1.Entitlement.t()],
          request_id: String.t()
        }

  defstruct parent: "",
            entitlements: [],
            request_id: ""

  field :parent, 1, type: :string, deprecated: false

  field :entitlements, 2,
    repeated: true,
    type: Google.Cloud.Channel.V1.Entitlement,
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Channel.V1.ChangeParametersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          parameters: [Google.Cloud.Channel.V1.Parameter.t()],
          request_id: String.t(),
          purchase_order_id: String.t()
        }

  defstruct name: "",
            parameters: [],
            request_id: "",
            purchase_order_id: ""

  field :name, 1, type: :string, deprecated: false
  field :parameters, 2, repeated: true, type: Google.Cloud.Channel.V1.Parameter, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :purchase_order_id, 5, type: :string, json_name: "purchaseOrderId", deprecated: false
end
defmodule Google.Cloud.Channel.V1.ChangeRenewalSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          renewal_settings: Google.Cloud.Channel.V1.RenewalSettings.t() | nil,
          request_id: String.t()
        }

  defstruct name: "",
            renewal_settings: nil,
            request_id: ""

  field :name, 1, type: :string, deprecated: false

  field :renewal_settings, 4,
    type: Google.Cloud.Channel.V1.RenewalSettings,
    json_name: "renewalSettings",
    deprecated: false

  field :request_id, 5, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Channel.V1.ChangeOfferRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          offer: String.t(),
          parameters: [Google.Cloud.Channel.V1.Parameter.t()],
          purchase_order_id: String.t(),
          request_id: String.t()
        }

  defstruct name: "",
            offer: "",
            parameters: [],
            purchase_order_id: "",
            request_id: ""

  field :name, 1, type: :string, deprecated: false
  field :offer, 2, type: :string, deprecated: false
  field :parameters, 3, repeated: true, type: Google.Cloud.Channel.V1.Parameter, deprecated: false
  field :purchase_order_id, 5, type: :string, json_name: "purchaseOrderId", deprecated: false
  field :request_id, 6, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Channel.V1.StartPaidServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct name: "",
            request_id: ""

  field :name, 1, type: :string, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Channel.V1.CancelEntitlementRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct name: "",
            request_id: ""

  field :name, 1, type: :string, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Channel.V1.SuspendEntitlementRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct name: "",
            request_id: ""

  field :name, 1, type: :string, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Channel.V1.ActivateEntitlementRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct name: "",
            request_id: ""

  field :name, 1, type: :string, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Channel.V1.LookupOfferRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entitlement: String.t()
        }

  defstruct entitlement: ""

  field :entitlement, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Channel.V1.ListProductsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          account: String.t(),
          page_size: integer,
          page_token: String.t(),
          language_code: String.t()
        }

  defstruct account: "",
            page_size: 0,
            page_token: "",
            language_code: ""

  field :account, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :language_code, 4, type: :string, json_name: "languageCode", deprecated: false
end
defmodule Google.Cloud.Channel.V1.ListProductsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          products: [Google.Cloud.Channel.V1.Product.t()],
          next_page_token: String.t()
        }

  defstruct products: [],
            next_page_token: ""

  field :products, 1, repeated: true, type: Google.Cloud.Channel.V1.Product
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Channel.V1.ListSkusRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          account: String.t(),
          page_size: integer,
          page_token: String.t(),
          language_code: String.t()
        }

  defstruct parent: "",
            account: "",
            page_size: 0,
            page_token: "",
            language_code: ""

  field :parent, 1, type: :string, deprecated: false
  field :account, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
  field :language_code, 5, type: :string, json_name: "languageCode", deprecated: false
end
defmodule Google.Cloud.Channel.V1.ListSkusResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          skus: [Google.Cloud.Channel.V1.Sku.t()],
          next_page_token: String.t()
        }

  defstruct skus: [],
            next_page_token: ""

  field :skus, 1, repeated: true, type: Google.Cloud.Channel.V1.Sku
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Channel.V1.ListOffersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          language_code: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            language_code: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :language_code, 5, type: :string, json_name: "languageCode", deprecated: false
end
defmodule Google.Cloud.Channel.V1.ListOffersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          offers: [Google.Cloud.Channel.V1.Offer.t()],
          next_page_token: String.t()
        }

  defstruct offers: [],
            next_page_token: ""

  field :offers, 1, repeated: true, type: Google.Cloud.Channel.V1.Offer
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Channel.V1.ListPurchasableSkusRequest.CreateEntitlementPurchase do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product: String.t()
        }

  defstruct product: ""

  field :product, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Channel.V1.ListPurchasableSkusRequest.ChangeOfferPurchase do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entitlement: String.t(),
          change_type:
            Google.Cloud.Channel.V1.ListPurchasableSkusRequest.ChangeOfferPurchase.ChangeType.t()
        }

  defstruct entitlement: "",
            change_type: :CHANGE_TYPE_UNSPECIFIED

  field :entitlement, 1, type: :string, deprecated: false

  field :change_type, 2,
    type: Google.Cloud.Channel.V1.ListPurchasableSkusRequest.ChangeOfferPurchase.ChangeType,
    json_name: "changeType",
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Channel.V1.ListPurchasableSkusRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          purchase_option:
            {:create_entitlement_purchase,
             Google.Cloud.Channel.V1.ListPurchasableSkusRequest.CreateEntitlementPurchase.t()
             | nil}
            | {:change_offer_purchase,
               Google.Cloud.Channel.V1.ListPurchasableSkusRequest.ChangeOfferPurchase.t() | nil},
          customer: String.t(),
          page_size: integer,
          page_token: String.t(),
          language_code: String.t()
        }

  defstruct purchase_option: nil,
            customer: "",
            page_size: 0,
            page_token: "",
            language_code: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          purchasable_skus: [Google.Cloud.Channel.V1.PurchasableSku.t()],
          next_page_token: String.t()
        }

  defstruct purchasable_skus: [],
            next_page_token: ""

  field :purchasable_skus, 1,
    repeated: true,
    type: Google.Cloud.Channel.V1.PurchasableSku,
    json_name: "purchasableSkus"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Channel.V1.PurchasableSku do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sku: Google.Cloud.Channel.V1.Sku.t() | nil
        }

  defstruct sku: nil

  field :sku, 1, type: Google.Cloud.Channel.V1.Sku
end
defmodule Google.Cloud.Channel.V1.ListPurchasableOffersRequest.CreateEntitlementPurchase do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sku: String.t()
        }

  defstruct sku: ""

  field :sku, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Channel.V1.ListPurchasableOffersRequest.ChangeOfferPurchase do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entitlement: String.t(),
          new_sku: String.t()
        }

  defstruct entitlement: "",
            new_sku: ""

  field :entitlement, 1, type: :string, deprecated: false
  field :new_sku, 2, type: :string, json_name: "newSku", deprecated: false
end
defmodule Google.Cloud.Channel.V1.ListPurchasableOffersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          purchase_option:
            {:create_entitlement_purchase,
             Google.Cloud.Channel.V1.ListPurchasableOffersRequest.CreateEntitlementPurchase.t()
             | nil}
            | {:change_offer_purchase,
               Google.Cloud.Channel.V1.ListPurchasableOffersRequest.ChangeOfferPurchase.t() | nil},
          customer: String.t(),
          page_size: integer,
          page_token: String.t(),
          language_code: String.t()
        }

  defstruct purchase_option: nil,
            customer: "",
            page_size: 0,
            page_token: "",
            language_code: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          purchasable_offers: [Google.Cloud.Channel.V1.PurchasableOffer.t()],
          next_page_token: String.t()
        }

  defstruct purchasable_offers: [],
            next_page_token: ""

  field :purchasable_offers, 1,
    repeated: true,
    type: Google.Cloud.Channel.V1.PurchasableOffer,
    json_name: "purchasableOffers"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Channel.V1.PurchasableOffer do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          offer: Google.Cloud.Channel.V1.Offer.t() | nil
        }

  defstruct offer: nil

  field :offer, 1, type: Google.Cloud.Channel.V1.Offer
end
defmodule Google.Cloud.Channel.V1.RegisterSubscriberRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          account: String.t(),
          service_account: String.t()
        }

  defstruct account: "",
            service_account: ""

  field :account, 1, type: :string, deprecated: false
  field :service_account, 2, type: :string, json_name: "serviceAccount", deprecated: false
end
defmodule Google.Cloud.Channel.V1.RegisterSubscriberResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t()
        }

  defstruct topic: ""

  field :topic, 1, type: :string
end
defmodule Google.Cloud.Channel.V1.UnregisterSubscriberRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          account: String.t(),
          service_account: String.t()
        }

  defstruct account: "",
            service_account: ""

  field :account, 1, type: :string, deprecated: false
  field :service_account, 2, type: :string, json_name: "serviceAccount", deprecated: false
end
defmodule Google.Cloud.Channel.V1.UnregisterSubscriberResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t()
        }

  defstruct topic: ""

  field :topic, 1, type: :string
end
defmodule Google.Cloud.Channel.V1.ListSubscribersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          account: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct account: "",
            page_size: 0,
            page_token: ""

  field :account, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end
defmodule Google.Cloud.Channel.V1.ListSubscribersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t(),
          service_accounts: [String.t()],
          next_page_token: String.t()
        }

  defstruct topic: "",
            service_accounts: [],
            next_page_token: ""

  field :topic, 1, type: :string
  field :service_accounts, 2, repeated: true, type: :string, json_name: "serviceAccounts"
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Channel.V1.CloudChannelService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.channel.v1.CloudChannelService"

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

  rpc :RegisterSubscriber,
      Google.Cloud.Channel.V1.RegisterSubscriberRequest,
      Google.Cloud.Channel.V1.RegisterSubscriberResponse

  rpc :UnregisterSubscriber,
      Google.Cloud.Channel.V1.UnregisterSubscriberRequest,
      Google.Cloud.Channel.V1.UnregisterSubscriberResponse

  rpc :ListSubscribers,
      Google.Cloud.Channel.V1.ListSubscribersRequest,
      Google.Cloud.Channel.V1.ListSubscribersResponse
end

defmodule Google.Cloud.Channel.V1.CloudChannelService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Channel.V1.CloudChannelService.Service
end
