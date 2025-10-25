defmodule Google.Ads.Admanager.V1.MobileCarrier do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :display_name, 2,
    proto3_optional: true,
    type: :string,
    json_name: "displayName",
    deprecated: false

  field :region_code, 4,
    proto3_optional: true,
    type: :string,
    json_name: "regionCode",
    deprecated: false
end
