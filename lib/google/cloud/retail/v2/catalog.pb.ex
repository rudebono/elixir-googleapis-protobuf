defmodule Google.Cloud.Retail.V2.ProductLevelConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :ingestion_product_type, 1, type: :string, json_name: "ingestionProductType"

  field :merchant_center_product_id_field, 2,
    type: :string,
    json_name: "merchantCenterProductIdField"
end
defmodule Google.Cloud.Retail.V2.Catalog do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :product_level_config, 4,
    type: Google.Cloud.Retail.V2.ProductLevelConfig,
    json_name: "productLevelConfig",
    deprecated: false
end
