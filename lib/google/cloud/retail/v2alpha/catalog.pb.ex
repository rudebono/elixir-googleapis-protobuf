defmodule Google.Cloud.Retail.V2alpha.ProductLevelConfig do
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

defmodule Google.Cloud.Retail.V2alpha.MerchantCenterLink do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          merchant_center_account_id: integer,
          branch_id: String.t(),
          destinations: [String.t()]
        }

  defstruct [:merchant_center_account_id, :branch_id, :destinations]

  field :merchant_center_account_id, 1, type: :int64
  field :branch_id, 2, type: :string
  field :destinations, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Retail.V2alpha.MerchantCenterLinkingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          links: [Google.Cloud.Retail.V2alpha.MerchantCenterLink.t()]
        }

  defstruct [:links]

  field :links, 1, repeated: true, type: Google.Cloud.Retail.V2alpha.MerchantCenterLink
end

defmodule Google.Cloud.Retail.V2alpha.Catalog do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          product_level_config: Google.Cloud.Retail.V2alpha.ProductLevelConfig.t() | nil,
          merchant_center_linking_config:
            Google.Cloud.Retail.V2alpha.MerchantCenterLinkingConfig.t() | nil
        }

  defstruct [:name, :display_name, :product_level_config, :merchant_center_linking_config]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :product_level_config, 4, type: Google.Cloud.Retail.V2alpha.ProductLevelConfig

  field :merchant_center_linking_config, 6,
    type: Google.Cloud.Retail.V2alpha.MerchantCenterLinkingConfig
end
