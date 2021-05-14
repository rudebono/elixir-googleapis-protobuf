defmodule Google.Ads.Googleads.V5.Common.OfflineUserAddressInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hashed_first_name: Google.Protobuf.StringValue.t() | nil,
          hashed_last_name: Google.Protobuf.StringValue.t() | nil,
          city: Google.Protobuf.StringValue.t() | nil,
          state: Google.Protobuf.StringValue.t() | nil,
          country_code: Google.Protobuf.StringValue.t() | nil,
          postal_code: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:hashed_first_name, :hashed_last_name, :city, :state, :country_code, :postal_code]

  field :hashed_first_name, 1, type: Google.Protobuf.StringValue
  field :hashed_last_name, 2, type: Google.Protobuf.StringValue
  field :city, 3, type: Google.Protobuf.StringValue
  field :state, 4, type: Google.Protobuf.StringValue
  field :country_code, 5, type: Google.Protobuf.StringValue
  field :postal_code, 6, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V5.Common.UserIdentifier do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          identifier: {atom, any}
        }

  defstruct [:identifier]

  oneof :identifier, 0
  field :hashed_email, 1, type: Google.Protobuf.StringValue, oneof: 0
  field :hashed_phone_number, 2, type: Google.Protobuf.StringValue, oneof: 0
  field :mobile_id, 3, type: Google.Protobuf.StringValue, oneof: 0
  field :third_party_user_id, 4, type: Google.Protobuf.StringValue, oneof: 0
  field :address_info, 5, type: Google.Ads.Googleads.V5.Common.OfflineUserAddressInfo, oneof: 0
end

defmodule Google.Ads.Googleads.V5.Common.TransactionAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transaction_date_time: Google.Protobuf.StringValue.t() | nil,
          transaction_amount_micros: Google.Protobuf.DoubleValue.t() | nil,
          currency_code: Google.Protobuf.StringValue.t() | nil,
          conversion_action: Google.Protobuf.StringValue.t() | nil,
          order_id: Google.Protobuf.StringValue.t() | nil,
          store_attribute: Google.Ads.Googleads.V5.Common.StoreAttribute.t() | nil,
          custom_value: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [
    :transaction_date_time,
    :transaction_amount_micros,
    :currency_code,
    :conversion_action,
    :order_id,
    :store_attribute,
    :custom_value
  ]

  field :transaction_date_time, 1, type: Google.Protobuf.StringValue
  field :transaction_amount_micros, 2, type: Google.Protobuf.DoubleValue
  field :currency_code, 3, type: Google.Protobuf.StringValue
  field :conversion_action, 4, type: Google.Protobuf.StringValue
  field :order_id, 5, type: Google.Protobuf.StringValue
  field :store_attribute, 6, type: Google.Ads.Googleads.V5.Common.StoreAttribute
  field :custom_value, 7, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V5.Common.StoreAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          store_code: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:store_code]

  field :store_code, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V5.Common.UserData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_identifiers: [Google.Ads.Googleads.V5.Common.UserIdentifier.t()],
          transaction_attribute: Google.Ads.Googleads.V5.Common.TransactionAttribute.t() | nil
        }

  defstruct [:user_identifiers, :transaction_attribute]

  field :user_identifiers, 1, repeated: true, type: Google.Ads.Googleads.V5.Common.UserIdentifier
  field :transaction_attribute, 2, type: Google.Ads.Googleads.V5.Common.TransactionAttribute
end

defmodule Google.Ads.Googleads.V5.Common.CustomerMatchUserListMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_list: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:user_list]

  field :user_list, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V5.Common.StoreSalesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          loyalty_fraction: Google.Protobuf.DoubleValue.t() | nil,
          transaction_upload_fraction: Google.Protobuf.DoubleValue.t() | nil,
          custom_key: Google.Protobuf.StringValue.t() | nil,
          third_party_metadata:
            Google.Ads.Googleads.V5.Common.StoreSalesThirdPartyMetadata.t() | nil
        }

  defstruct [:loyalty_fraction, :transaction_upload_fraction, :custom_key, :third_party_metadata]

  field :loyalty_fraction, 1, type: Google.Protobuf.DoubleValue
  field :transaction_upload_fraction, 2, type: Google.Protobuf.DoubleValue
  field :custom_key, 4, type: Google.Protobuf.StringValue

  field :third_party_metadata, 3,
    type: Google.Ads.Googleads.V5.Common.StoreSalesThirdPartyMetadata
end

defmodule Google.Ads.Googleads.V5.Common.StoreSalesThirdPartyMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          advertiser_upload_date_time: Google.Protobuf.StringValue.t() | nil,
          valid_transaction_fraction: Google.Protobuf.DoubleValue.t() | nil,
          partner_match_fraction: Google.Protobuf.DoubleValue.t() | nil,
          partner_upload_fraction: Google.Protobuf.DoubleValue.t() | nil,
          bridge_map_version_id: Google.Protobuf.StringValue.t() | nil,
          partner_id: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [
    :advertiser_upload_date_time,
    :valid_transaction_fraction,
    :partner_match_fraction,
    :partner_upload_fraction,
    :bridge_map_version_id,
    :partner_id
  ]

  field :advertiser_upload_date_time, 1, type: Google.Protobuf.StringValue
  field :valid_transaction_fraction, 2, type: Google.Protobuf.DoubleValue
  field :partner_match_fraction, 3, type: Google.Protobuf.DoubleValue
  field :partner_upload_fraction, 4, type: Google.Protobuf.DoubleValue
  field :bridge_map_version_id, 5, type: Google.Protobuf.StringValue
  field :partner_id, 6, type: Google.Protobuf.Int64Value
end
