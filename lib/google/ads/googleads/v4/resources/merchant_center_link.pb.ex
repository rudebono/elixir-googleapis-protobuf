defmodule Google.Ads.Googleads.V4.Resources.MerchantCenterLink do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          merchant_center_account_name: Google.Protobuf.StringValue.t() | nil,
          status:
            Google.Ads.Googleads.V4.Enums.MerchantCenterLinkStatusEnum.MerchantCenterLinkStatus.t()
        }

  defstruct [:resource_name, :id, :merchant_center_account_name, :status]

  field :resource_name, 1, type: :string
  field :id, 3, type: Google.Protobuf.Int64Value
  field :merchant_center_account_name, 4, type: Google.Protobuf.StringValue

  field :status, 5,
    type: Google.Ads.Googleads.V4.Enums.MerchantCenterLinkStatusEnum.MerchantCenterLinkStatus,
    enum: true
end
