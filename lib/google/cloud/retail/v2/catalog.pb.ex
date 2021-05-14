defmodule Google.Cloud.Retail.V2.ProductLevelConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ingestion_product_type: String.t(),
          merchant_center_product_id_field: String.t()
        }

  defstruct [:ingestion_product_type, :merchant_center_product_id_field]

  field :ingestion_product_type, 1, type: :string
  field :merchant_center_product_id_field, 2, type: :string
end

defmodule Google.Cloud.Retail.V2.Catalog do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          product_level_config: Google.Cloud.Retail.V2.ProductLevelConfig.t() | nil
        }

  defstruct [:name, :display_name, :product_level_config]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :product_level_config, 4, type: Google.Cloud.Retail.V2.ProductLevelConfig
end
