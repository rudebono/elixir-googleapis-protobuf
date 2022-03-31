defmodule Google.Cloud.Retail.V2beta.CatalogAttribute.AttributeType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNKNOWN | :TEXTUAL | :NUMERICAL

  field :UNKNOWN, 0
  field :TEXTUAL, 1
  field :NUMERICAL, 2
end
defmodule Google.Cloud.Retail.V2beta.CatalogAttribute.IndexableOption do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :INDEXABLE_OPTION_UNSPECIFIED | :INDEXABLE_ENABLED | :INDEXABLE_DISABLED

  field :INDEXABLE_OPTION_UNSPECIFIED, 0
  field :INDEXABLE_ENABLED, 1
  field :INDEXABLE_DISABLED, 2
end
defmodule Google.Cloud.Retail.V2beta.CatalogAttribute.DynamicFacetableOption do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :DYNAMIC_FACETABLE_OPTION_UNSPECIFIED
          | :DYNAMIC_FACETABLE_ENABLED
          | :DYNAMIC_FACETABLE_DISABLED

  field :DYNAMIC_FACETABLE_OPTION_UNSPECIFIED, 0
  field :DYNAMIC_FACETABLE_ENABLED, 1
  field :DYNAMIC_FACETABLE_DISABLED, 2
end
defmodule Google.Cloud.Retail.V2beta.CatalogAttribute.SearchableOption do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SEARCHABLE_OPTION_UNSPECIFIED | :SEARCHABLE_ENABLED | :SEARCHABLE_DISABLED

  field :SEARCHABLE_OPTION_UNSPECIFIED, 0
  field :SEARCHABLE_ENABLED, 1
  field :SEARCHABLE_DISABLED, 2
end
defmodule Google.Cloud.Retail.V2beta.ProductLevelConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ingestion_product_type: String.t(),
          merchant_center_product_id_field: String.t()
        }

  defstruct ingestion_product_type: "",
            merchant_center_product_id_field: ""

  field :ingestion_product_type, 1, type: :string, json_name: "ingestionProductType"

  field :merchant_center_product_id_field, 2,
    type: :string,
    json_name: "merchantCenterProductIdField"
end
defmodule Google.Cloud.Retail.V2beta.CatalogAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          in_use: boolean,
          type: Google.Cloud.Retail.V2beta.CatalogAttribute.AttributeType.t(),
          indexable_option: Google.Cloud.Retail.V2beta.CatalogAttribute.IndexableOption.t(),
          dynamic_facetable_option:
            Google.Cloud.Retail.V2beta.CatalogAttribute.DynamicFacetableOption.t(),
          searchable_option: Google.Cloud.Retail.V2beta.CatalogAttribute.SearchableOption.t()
        }

  defstruct key: "",
            in_use: false,
            type: :UNKNOWN,
            indexable_option: :INDEXABLE_OPTION_UNSPECIFIED,
            dynamic_facetable_option: :DYNAMIC_FACETABLE_OPTION_UNSPECIFIED,
            searchable_option: :SEARCHABLE_OPTION_UNSPECIFIED

  field :key, 1, type: :string, deprecated: false
  field :in_use, 9, type: :bool, json_name: "inUse", deprecated: false

  field :type, 10,
    type: Google.Cloud.Retail.V2beta.CatalogAttribute.AttributeType,
    enum: true,
    deprecated: false

  field :indexable_option, 5,
    type: Google.Cloud.Retail.V2beta.CatalogAttribute.IndexableOption,
    json_name: "indexableOption",
    enum: true

  field :dynamic_facetable_option, 6,
    type: Google.Cloud.Retail.V2beta.CatalogAttribute.DynamicFacetableOption,
    json_name: "dynamicFacetableOption",
    enum: true

  field :searchable_option, 7,
    type: Google.Cloud.Retail.V2beta.CatalogAttribute.SearchableOption,
    json_name: "searchableOption",
    enum: true
end
defmodule Google.Cloud.Retail.V2beta.AttributesConfig.CatalogAttributesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Retail.V2beta.CatalogAttribute.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Retail.V2beta.CatalogAttribute
end
defmodule Google.Cloud.Retail.V2beta.AttributesConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          catalog_attributes: %{
            String.t() => Google.Cloud.Retail.V2beta.CatalogAttribute.t() | nil
          },
          attribute_config_level: Google.Cloud.Retail.V2beta.AttributeConfigLevel.t()
        }

  defstruct name: "",
            catalog_attributes: %{},
            attribute_config_level: :ATTRIBUTE_CONFIG_LEVEL_UNSPECIFIED

  field :name, 1, type: :string, deprecated: false

  field :catalog_attributes, 2,
    repeated: true,
    type: Google.Cloud.Retail.V2beta.AttributesConfig.CatalogAttributesEntry,
    json_name: "catalogAttributes",
    map: true

  field :attribute_config_level, 3,
    type: Google.Cloud.Retail.V2beta.AttributeConfigLevel,
    json_name: "attributeConfigLevel",
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Retail.V2beta.CompletionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          matching_order: String.t(),
          max_suggestions: integer,
          min_prefix_length: integer,
          auto_learning: boolean,
          suggestions_input_config:
            Google.Cloud.Retail.V2beta.CompletionDataInputConfig.t() | nil,
          last_suggestions_import_operation: String.t(),
          denylist_input_config: Google.Cloud.Retail.V2beta.CompletionDataInputConfig.t() | nil,
          last_denylist_import_operation: String.t(),
          allowlist_input_config: Google.Cloud.Retail.V2beta.CompletionDataInputConfig.t() | nil,
          last_allowlist_import_operation: String.t()
        }

  defstruct name: "",
            matching_order: "",
            max_suggestions: 0,
            min_prefix_length: 0,
            auto_learning: false,
            suggestions_input_config: nil,
            last_suggestions_import_operation: "",
            denylist_input_config: nil,
            last_denylist_import_operation: "",
            allowlist_input_config: nil,
            last_allowlist_import_operation: ""

  field :name, 1, type: :string, deprecated: false
  field :matching_order, 2, type: :string, json_name: "matchingOrder"
  field :max_suggestions, 3, type: :int32, json_name: "maxSuggestions"
  field :min_prefix_length, 4, type: :int32, json_name: "minPrefixLength"
  field :auto_learning, 11, type: :bool, json_name: "autoLearning"

  field :suggestions_input_config, 5,
    type: Google.Cloud.Retail.V2beta.CompletionDataInputConfig,
    json_name: "suggestionsInputConfig",
    deprecated: false

  field :last_suggestions_import_operation, 6,
    type: :string,
    json_name: "lastSuggestionsImportOperation",
    deprecated: false

  field :denylist_input_config, 7,
    type: Google.Cloud.Retail.V2beta.CompletionDataInputConfig,
    json_name: "denylistInputConfig",
    deprecated: false

  field :last_denylist_import_operation, 8,
    type: :string,
    json_name: "lastDenylistImportOperation",
    deprecated: false

  field :allowlist_input_config, 9,
    type: Google.Cloud.Retail.V2beta.CompletionDataInputConfig,
    json_name: "allowlistInputConfig",
    deprecated: false

  field :last_allowlist_import_operation, 10,
    type: :string,
    json_name: "lastAllowlistImportOperation",
    deprecated: false
end
defmodule Google.Cloud.Retail.V2beta.MerchantCenterLink do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          merchant_center_account_id: integer,
          branch_id: String.t(),
          destinations: [String.t()],
          region_code: String.t(),
          language_code: String.t()
        }

  defstruct merchant_center_account_id: 0,
            branch_id: "",
            destinations: [],
            region_code: "",
            language_code: ""

  field :merchant_center_account_id, 1,
    type: :int64,
    json_name: "merchantCenterAccountId",
    deprecated: false

  field :branch_id, 2, type: :string, json_name: "branchId"
  field :destinations, 3, repeated: true, type: :string
  field :region_code, 4, type: :string, json_name: "regionCode"
  field :language_code, 5, type: :string, json_name: "languageCode"
end
defmodule Google.Cloud.Retail.V2beta.MerchantCenterLinkingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          links: [Google.Cloud.Retail.V2beta.MerchantCenterLink.t()]
        }

  defstruct links: []

  field :links, 1, repeated: true, type: Google.Cloud.Retail.V2beta.MerchantCenterLink
end
defmodule Google.Cloud.Retail.V2beta.Catalog do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          product_level_config: Google.Cloud.Retail.V2beta.ProductLevelConfig.t() | nil,
          merchant_center_linking_config:
            Google.Cloud.Retail.V2beta.MerchantCenterLinkingConfig.t() | nil
        }

  defstruct name: "",
            display_name: "",
            product_level_config: nil,
            merchant_center_linking_config: nil

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :product_level_config, 4,
    type: Google.Cloud.Retail.V2beta.ProductLevelConfig,
    json_name: "productLevelConfig",
    deprecated: false

  field :merchant_center_linking_config, 6,
    type: Google.Cloud.Retail.V2beta.MerchantCenterLinkingConfig,
    json_name: "merchantCenterLinkingConfig"
end
