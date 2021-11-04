defmodule Google.Cloud.Retail.V2beta.ProductLevelConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ingestion_product_type: String.t(),
          merchant_center_product_id_field: String.t()
        }

  defstruct [:ingestion_product_type, :merchant_center_product_id_field]

  field :ingestion_product_type, 1, type: :string, json_name: "ingestionProductType"

  field :merchant_center_product_id_field, 2,
    type: :string,
    json_name: "merchantCenterProductIdField"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2beta.Catalog do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          product_level_config: Google.Cloud.Retail.V2beta.ProductLevelConfig.t() | nil
        }

  defstruct [:name, :display_name, :product_level_config]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"

  field :product_level_config, 4,
    type: Google.Cloud.Retail.V2beta.ProductLevelConfig,
    json_name: "productLevelConfig"

  def transform_module(), do: nil
end
