defmodule Google.Ads.Googleads.V13.Common.CustomizerValue do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 1,
    type: Google.Ads.Googleads.V13.Enums.CustomizerAttributeTypeEnum.CustomizerAttributeType,
    enum: true,
    deprecated: false

  field :string_value, 2, type: :string, json_name: "stringValue", deprecated: false
end