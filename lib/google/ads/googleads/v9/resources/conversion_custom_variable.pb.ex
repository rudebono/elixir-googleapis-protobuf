defmodule Google.Ads.Googleads.V9.Resources.ConversionCustomVariable do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 2, type: :int64, deprecated: false
  field :name, 3, type: :string, deprecated: false
  field :tag, 4, type: :string, deprecated: false

  field :status, 5,
    type:
      Google.Ads.Googleads.V9.Enums.ConversionCustomVariableStatusEnum.ConversionCustomVariableStatus,
    enum: true

  field :owner_customer, 6, type: :string, json_name: "ownerCustomer", deprecated: false
end