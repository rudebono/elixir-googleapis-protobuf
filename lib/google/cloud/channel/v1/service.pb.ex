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

  defstruct [:parent, :domain]

  field :parent, 1, type: :string
  field :domain, 2, type: :string
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

  defstruct [:existing, :owned, :customer_name, :customer_cloud_identity_id]

  field :existing, 1, type: :bool
  field :owned, 2, type: :bool
  field :customer_name, 3, type: :string
  field :customer_cloud_identity_id, 4, type: :string
end

defmodule Google.Cloud.Channel.V1.CheckCloudIdentityAccountsExistResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cloud_identity_accounts: [Google.Cloud.Channel.V1.CloudIdentityCustomerAccount.t()]
        }

  defstruct [:cloud_identity_accounts]

  field :cloud_identity_accounts, 1,
    repeated: true,
    type: Google.Cloud.Channel.V1.CloudIdentityCustomerAccount
end

defmodule Google.Cloud.Channel.V1.ListCustomersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Channel.V1.ListCustomersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customers: [Google.Cloud.Channel.V1.Customer.t()],
          next_page_token: String.t()
        }

  defstruct [:customers, :next_page_token]

  field :customers, 1, repeated: true, type: Google.Cloud.Channel.V1.Customer
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Channel.V1.GetCustomerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Channel.V1.CreateCustomerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          customer: Google.Cloud.Channel.V1.Customer.t() | nil
        }

  defstruct [:parent, :customer]

  field :parent, 1, type: :string
  field :customer, 2, type: Google.Cloud.Channel.V1.Customer
end

defmodule Google.Cloud.Channel.V1.UpdateCustomerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer: Google.Cloud.Channel.V1.Customer.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:customer, :update_mask]

  field :customer, 2, type: Google.Cloud.Channel.V1.Customer
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Channel.V1.DeleteCustomerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
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

  defstruct [:customer, :cloud_identity_info, :user, :validate_only]

  field :customer, 1, type: :string
  field :cloud_identity_info, 2, type: Google.Cloud.Channel.V1.CloudIdentityInfo
  field :user, 3, type: Google.Cloud.Channel.V1.AdminUser
  field :validate_only, 4, type: :bool
end

defmodule Google.Cloud.Channel.V1.ListEntitlementsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Channel.V1.ListEntitlementsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entitlements: [Google.Cloud.Channel.V1.Entitlement.t()],
          next_page_token: String.t()
        }

  defstruct [:entitlements, :next_page_token]

  field :entitlements, 1, repeated: true, type: Google.Cloud.Channel.V1.Entitlement
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Channel.V1.ListTransferableSkusRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transferred_customer_identity: {atom, any},
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          auth_token: String.t(),
          language_code: String.t()
        }

  defstruct [
    :transferred_customer_identity,
    :parent,
    :page_size,
    :page_token,
    :auth_token,
    :language_code
  ]

  oneof :transferred_customer_identity, 0
  field :cloud_identity_id, 4, type: :string, oneof: 0
  field :customer_name, 7, type: :string, oneof: 0
  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :auth_token, 5, type: :string
  field :language_code, 6, type: :string
end

defmodule Google.Cloud.Channel.V1.ListTransferableSkusResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transferable_skus: [Google.Cloud.Channel.V1.TransferableSku.t()],
          next_page_token: String.t()
        }

  defstruct [:transferable_skus, :next_page_token]

  field :transferable_skus, 1, repeated: true, type: Google.Cloud.Channel.V1.TransferableSku
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Channel.V1.ListTransferableOffersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transferred_customer_identity: {atom, any},
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          sku: String.t(),
          language_code: String.t()
        }

  defstruct [
    :transferred_customer_identity,
    :parent,
    :page_size,
    :page_token,
    :sku,
    :language_code
  ]

  oneof :transferred_customer_identity, 0
  field :cloud_identity_id, 4, type: :string, oneof: 0
  field :customer_name, 5, type: :string, oneof: 0
  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :sku, 6, type: :string
  field :language_code, 7, type: :string
end

defmodule Google.Cloud.Channel.V1.ListTransferableOffersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transferable_offers: [Google.Cloud.Channel.V1.TransferableOffer.t()],
          next_page_token: String.t()
        }

  defstruct [:transferable_offers, :next_page_token]

  field :transferable_offers, 1, repeated: true, type: Google.Cloud.Channel.V1.TransferableOffer
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Channel.V1.TransferableOffer do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          offer: Google.Cloud.Channel.V1.Offer.t() | nil
        }

  defstruct [:offer]

  field :offer, 1, type: Google.Cloud.Channel.V1.Offer
end

defmodule Google.Cloud.Channel.V1.GetEntitlementRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
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

  defstruct [:parent, :page_size, :page_token, :view]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :view, 4, type: Google.Cloud.Channel.V1.ChannelPartnerLinkView, enum: true
end

defmodule Google.Cloud.Channel.V1.ListChannelPartnerLinksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_partner_links: [Google.Cloud.Channel.V1.ChannelPartnerLink.t()],
          next_page_token: String.t()
        }

  defstruct [:channel_partner_links, :next_page_token]

  field :channel_partner_links, 1,
    repeated: true,
    type: Google.Cloud.Channel.V1.ChannelPartnerLink

  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Channel.V1.GetChannelPartnerLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          view: Google.Cloud.Channel.V1.ChannelPartnerLinkView.t()
        }

  defstruct [:name, :view]

  field :name, 1, type: :string
  field :view, 2, type: Google.Cloud.Channel.V1.ChannelPartnerLinkView, enum: true
end

defmodule Google.Cloud.Channel.V1.CreateChannelPartnerLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          channel_partner_link: Google.Cloud.Channel.V1.ChannelPartnerLink.t() | nil
        }

  defstruct [:parent, :channel_partner_link]

  field :parent, 1, type: :string
  field :channel_partner_link, 2, type: Google.Cloud.Channel.V1.ChannelPartnerLink
end

defmodule Google.Cloud.Channel.V1.UpdateChannelPartnerLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          channel_partner_link: Google.Cloud.Channel.V1.ChannelPartnerLink.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :channel_partner_link, :update_mask]

  field :name, 1, type: :string
  field :channel_partner_link, 2, type: Google.Cloud.Channel.V1.ChannelPartnerLink
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Channel.V1.CreateEntitlementRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          entitlement: Google.Cloud.Channel.V1.Entitlement.t() | nil,
          request_id: String.t()
        }

  defstruct [:parent, :entitlement, :request_id]

  field :parent, 1, type: :string
  field :entitlement, 2, type: Google.Cloud.Channel.V1.Entitlement
  field :request_id, 5, type: :string
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

  defstruct [:parent, :entitlements, :auth_token, :request_id]

  field :parent, 1, type: :string
  field :entitlements, 2, repeated: true, type: Google.Cloud.Channel.V1.Entitlement
  field :auth_token, 4, type: :string
  field :request_id, 6, type: :string
end

defmodule Google.Cloud.Channel.V1.TransferEntitlementsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entitlements: [Google.Cloud.Channel.V1.Entitlement.t()]
        }

  defstruct [:entitlements]

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

  defstruct [:parent, :entitlements, :request_id]

  field :parent, 1, type: :string
  field :entitlements, 2, repeated: true, type: Google.Cloud.Channel.V1.Entitlement
  field :request_id, 3, type: :string
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

  defstruct [:name, :parameters, :request_id, :purchase_order_id]

  field :name, 1, type: :string
  field :parameters, 2, repeated: true, type: Google.Cloud.Channel.V1.Parameter
  field :request_id, 4, type: :string
  field :purchase_order_id, 5, type: :string
end

defmodule Google.Cloud.Channel.V1.ChangeRenewalSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          renewal_settings: Google.Cloud.Channel.V1.RenewalSettings.t() | nil,
          request_id: String.t()
        }

  defstruct [:name, :renewal_settings, :request_id]

  field :name, 1, type: :string
  field :renewal_settings, 4, type: Google.Cloud.Channel.V1.RenewalSettings
  field :request_id, 5, type: :string
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

  defstruct [:name, :offer, :parameters, :purchase_order_id, :request_id]

  field :name, 1, type: :string
  field :offer, 2, type: :string
  field :parameters, 3, repeated: true, type: Google.Cloud.Channel.V1.Parameter
  field :purchase_order_id, 5, type: :string
  field :request_id, 6, type: :string
end

defmodule Google.Cloud.Channel.V1.StartPaidServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct [:name, :request_id]

  field :name, 1, type: :string
  field :request_id, 3, type: :string
end

defmodule Google.Cloud.Channel.V1.CancelEntitlementRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct [:name, :request_id]

  field :name, 1, type: :string
  field :request_id, 3, type: :string
end

defmodule Google.Cloud.Channel.V1.SuspendEntitlementRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct [:name, :request_id]

  field :name, 1, type: :string
  field :request_id, 3, type: :string
end

defmodule Google.Cloud.Channel.V1.ActivateEntitlementRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct [:name, :request_id]

  field :name, 1, type: :string
  field :request_id, 3, type: :string
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

  defstruct [:account, :page_size, :page_token, :language_code]

  field :account, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :language_code, 4, type: :string
end

defmodule Google.Cloud.Channel.V1.ListProductsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          products: [Google.Cloud.Channel.V1.Product.t()],
          next_page_token: String.t()
        }

  defstruct [:products, :next_page_token]

  field :products, 1, repeated: true, type: Google.Cloud.Channel.V1.Product
  field :next_page_token, 2, type: :string
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

  defstruct [:parent, :account, :page_size, :page_token, :language_code]

  field :parent, 1, type: :string
  field :account, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
  field :language_code, 5, type: :string
end

defmodule Google.Cloud.Channel.V1.ListSkusResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          skus: [Google.Cloud.Channel.V1.Sku.t()],
          next_page_token: String.t()
        }

  defstruct [:skus, :next_page_token]

  field :skus, 1, repeated: true, type: Google.Cloud.Channel.V1.Sku
  field :next_page_token, 2, type: :string
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

  defstruct [:parent, :page_size, :page_token, :filter, :language_code]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
  field :language_code, 5, type: :string
end

defmodule Google.Cloud.Channel.V1.ListOffersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          offers: [Google.Cloud.Channel.V1.Offer.t()],
          next_page_token: String.t()
        }

  defstruct [:offers, :next_page_token]

  field :offers, 1, repeated: true, type: Google.Cloud.Channel.V1.Offer
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Channel.V1.ListPurchasableSkusRequest.CreateEntitlementPurchase do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product: String.t()
        }

  defstruct [:product]

  field :product, 1, type: :string
end

defmodule Google.Cloud.Channel.V1.ListPurchasableSkusRequest.ChangeOfferPurchase do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entitlement: String.t(),
          change_type:
            Google.Cloud.Channel.V1.ListPurchasableSkusRequest.ChangeOfferPurchase.ChangeType.t()
        }

  defstruct [:entitlement, :change_type]

  field :entitlement, 1, type: :string

  field :change_type, 2,
    type: Google.Cloud.Channel.V1.ListPurchasableSkusRequest.ChangeOfferPurchase.ChangeType,
    enum: true
end

defmodule Google.Cloud.Channel.V1.ListPurchasableSkusRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          purchase_option: {atom, any},
          customer: String.t(),
          page_size: integer,
          page_token: String.t(),
          language_code: String.t()
        }

  defstruct [:purchase_option, :customer, :page_size, :page_token, :language_code]

  oneof :purchase_option, 0

  field :create_entitlement_purchase, 2,
    type: Google.Cloud.Channel.V1.ListPurchasableSkusRequest.CreateEntitlementPurchase,
    oneof: 0

  field :change_offer_purchase, 3,
    type: Google.Cloud.Channel.V1.ListPurchasableSkusRequest.ChangeOfferPurchase,
    oneof: 0

  field :customer, 1, type: :string
  field :page_size, 4, type: :int32
  field :page_token, 5, type: :string
  field :language_code, 6, type: :string
end

defmodule Google.Cloud.Channel.V1.ListPurchasableSkusResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          purchasable_skus: [Google.Cloud.Channel.V1.PurchasableSku.t()],
          next_page_token: String.t()
        }

  defstruct [:purchasable_skus, :next_page_token]

  field :purchasable_skus, 1, repeated: true, type: Google.Cloud.Channel.V1.PurchasableSku
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Channel.V1.PurchasableSku do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sku: Google.Cloud.Channel.V1.Sku.t() | nil
        }

  defstruct [:sku]

  field :sku, 1, type: Google.Cloud.Channel.V1.Sku
end

defmodule Google.Cloud.Channel.V1.ListPurchasableOffersRequest.CreateEntitlementPurchase do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sku: String.t()
        }

  defstruct [:sku]

  field :sku, 1, type: :string
end

defmodule Google.Cloud.Channel.V1.ListPurchasableOffersRequest.ChangeOfferPurchase do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entitlement: String.t(),
          new_sku: String.t()
        }

  defstruct [:entitlement, :new_sku]

  field :entitlement, 1, type: :string
  field :new_sku, 2, type: :string
end

defmodule Google.Cloud.Channel.V1.ListPurchasableOffersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          purchase_option: {atom, any},
          customer: String.t(),
          page_size: integer,
          page_token: String.t(),
          language_code: String.t()
        }

  defstruct [:purchase_option, :customer, :page_size, :page_token, :language_code]

  oneof :purchase_option, 0

  field :create_entitlement_purchase, 2,
    type: Google.Cloud.Channel.V1.ListPurchasableOffersRequest.CreateEntitlementPurchase,
    oneof: 0

  field :change_offer_purchase, 3,
    type: Google.Cloud.Channel.V1.ListPurchasableOffersRequest.ChangeOfferPurchase,
    oneof: 0

  field :customer, 1, type: :string
  field :page_size, 4, type: :int32
  field :page_token, 5, type: :string
  field :language_code, 6, type: :string
end

defmodule Google.Cloud.Channel.V1.ListPurchasableOffersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          purchasable_offers: [Google.Cloud.Channel.V1.PurchasableOffer.t()],
          next_page_token: String.t()
        }

  defstruct [:purchasable_offers, :next_page_token]

  field :purchasable_offers, 1, repeated: true, type: Google.Cloud.Channel.V1.PurchasableOffer
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Channel.V1.PurchasableOffer do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          offer: Google.Cloud.Channel.V1.Offer.t() | nil
        }

  defstruct [:offer]

  field :offer, 1, type: Google.Cloud.Channel.V1.Offer
end

defmodule Google.Cloud.Channel.V1.RegisterSubscriberRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          account: String.t(),
          service_account: String.t()
        }

  defstruct [:account, :service_account]

  field :account, 1, type: :string
  field :service_account, 2, type: :string
end

defmodule Google.Cloud.Channel.V1.RegisterSubscriberResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t()
        }

  defstruct [:topic]

  field :topic, 1, type: :string
end

defmodule Google.Cloud.Channel.V1.UnregisterSubscriberRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          account: String.t(),
          service_account: String.t()
        }

  defstruct [:account, :service_account]

  field :account, 1, type: :string
  field :service_account, 2, type: :string
end

defmodule Google.Cloud.Channel.V1.UnregisterSubscriberResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t()
        }

  defstruct [:topic]

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

  defstruct [:account, :page_size, :page_token]

  field :account, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Channel.V1.ListSubscribersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t(),
          service_accounts: [String.t()],
          next_page_token: String.t()
        }

  defstruct [:topic, :service_accounts, :next_page_token]

  field :topic, 1, type: :string
  field :service_accounts, 2, repeated: true, type: :string
  field :next_page_token, 3, type: :string
end
