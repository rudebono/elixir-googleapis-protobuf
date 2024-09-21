defmodule Google.Ads.Searchads360.V0.Resources.AdGroupLabel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :ad_group, 4,
    proto3_optional: true,
    type: :string,
    json_name: "adGroup",
    deprecated: false

  field :label, 5, proto3_optional: true, type: :string, deprecated: false

  field :owner_customer_id, 6,
    proto3_optional: true,
    type: :int64,
    json_name: "ownerCustomerId",
    deprecated: false
end