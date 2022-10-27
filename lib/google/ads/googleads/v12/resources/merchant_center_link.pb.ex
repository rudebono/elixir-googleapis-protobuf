defmodule Google.Ads.Googleads.V12.Resources.MerchantCenterLink do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 6, proto3_optional: true, type: :int64, deprecated: false

  field :merchant_center_account_name, 7,
    proto3_optional: true,
    type: :string,
    json_name: "merchantCenterAccountName",
    deprecated: false

  field :status, 5,
    type: Google.Ads.Googleads.V12.Enums.MerchantCenterLinkStatusEnum.MerchantCenterLinkStatus,
    enum: true
end