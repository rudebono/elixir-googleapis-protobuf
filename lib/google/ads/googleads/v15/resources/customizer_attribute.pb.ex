defmodule Google.Ads.Googleads.V15.Resources.CustomizerAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 2, type: :int64, deprecated: false
  field :name, 3, type: :string, deprecated: false

  field :type, 4,
    type: Google.Ads.Googleads.V15.Enums.CustomizerAttributeTypeEnum.CustomizerAttributeType,
    enum: true,
    deprecated: false

  field :status, 5,
    type: Google.Ads.Googleads.V15.Enums.CustomizerAttributeStatusEnum.CustomizerAttributeStatus,
    enum: true,
    deprecated: false
end