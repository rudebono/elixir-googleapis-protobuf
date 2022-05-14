defmodule Google.Cloud.Retail.V2alpha.CatalogAttribute.AttributeType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :UNKNOWN, 0
  field :TEXTUAL, 1
  field :NUMERICAL, 2
end
defmodule Google.Cloud.Retail.V2alpha.CatalogAttribute.IndexableOption do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :INDEXABLE_OPTION_UNSPECIFIED, 0
  field :INDEXABLE_ENABLED, 1
  field :INDEXABLE_DISABLED, 2
end
defmodule Google.Cloud.Retail.V2alpha.CatalogAttribute.DynamicFacetableOption do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :DYNAMIC_FACETABLE_OPTION_UNSPECIFIED, 0
  field :DYNAMIC_FACETABLE_ENABLED, 1
  field :DYNAMIC_FACETABLE_DISABLED, 2
end
defmodule Google.Cloud.Retail.V2alpha.CatalogAttribute.SearchableOption do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :SEARCHABLE_OPTION_UNSPECIFIED, 0
  field :SEARCHABLE_ENABLED, 1
  field :SEARCHABLE_DISABLED, 2
end
defmodule Google.Cloud.Retail.V2alpha.ProductLevelConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :ingestion_product_type, 1, type: :string, json_name: "ingestionProductType"

  field :merchant_center_product_id_field, 2,
    type: :string,
    json_name: "merchantCenterProductIdField"
end
defmodule Google.Cloud.Retail.V2alpha.CatalogAttribute do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string, deprecated: false
  field :in_use, 9, type: :bool, json_name: "inUse", deprecated: false

  field :type, 10,
    type: Google.Cloud.Retail.V2alpha.CatalogAttribute.AttributeType,
    enum: true,
    deprecated: false

  field :indexable_option, 5,
    type: Google.Cloud.Retail.V2alpha.CatalogAttribute.IndexableOption,
    json_name: "indexableOption",
    enum: true

  field :dynamic_facetable_option, 6,
    type: Google.Cloud.Retail.V2alpha.CatalogAttribute.DynamicFacetableOption,
    json_name: "dynamicFacetableOption",
    enum: true

  field :searchable_option, 7,
    type: Google.Cloud.Retail.V2alpha.CatalogAttribute.SearchableOption,
    json_name: "searchableOption",
    enum: true
end
defmodule Google.Cloud.Retail.V2alpha.AttributesConfig.CatalogAttributesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Retail.V2alpha.CatalogAttribute
end
defmodule Google.Cloud.Retail.V2alpha.AttributesConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :catalog_attributes, 2,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.AttributesConfig.CatalogAttributesEntry,
    json_name: "catalogAttributes",
    map: true

  field :attribute_config_level, 3,
    type: Google.Cloud.Retail.V2alpha.AttributeConfigLevel,
    json_name: "attributeConfigLevel",
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Retail.V2alpha.CompletionConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :matching_order, 2, type: :string, json_name: "matchingOrder"
  field :max_suggestions, 3, type: :int32, json_name: "maxSuggestions"
  field :min_prefix_length, 4, type: :int32, json_name: "minPrefixLength"
  field :auto_learning, 11, type: :bool, json_name: "autoLearning"

  field :suggestions_input_config, 5,
    type: Google.Cloud.Retail.V2alpha.CompletionDataInputConfig,
    json_name: "suggestionsInputConfig",
    deprecated: false

  field :last_suggestions_import_operation, 6,
    type: :string,
    json_name: "lastSuggestionsImportOperation",
    deprecated: false

  field :denylist_input_config, 7,
    type: Google.Cloud.Retail.V2alpha.CompletionDataInputConfig,
    json_name: "denylistInputConfig",
    deprecated: false

  field :last_denylist_import_operation, 8,
    type: :string,
    json_name: "lastDenylistImportOperation",
    deprecated: false

  field :allowlist_input_config, 9,
    type: Google.Cloud.Retail.V2alpha.CompletionDataInputConfig,
    json_name: "allowlistInputConfig",
    deprecated: false

  field :last_allowlist_import_operation, 10,
    type: :string,
    json_name: "lastAllowlistImportOperation",
    deprecated: false
end
defmodule Google.Cloud.Retail.V2alpha.MerchantCenterLink do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :merchant_center_account_id, 1,
    type: :int64,
    json_name: "merchantCenterAccountId",
    deprecated: false

  field :branch_id, 2, type: :string, json_name: "branchId"
  field :destinations, 3, repeated: true, type: :string
  field :region_code, 4, type: :string, json_name: "regionCode"
  field :language_code, 5, type: :string, json_name: "languageCode"
end
defmodule Google.Cloud.Retail.V2alpha.MerchantCenterLinkingConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :links, 1, repeated: true, type: Google.Cloud.Retail.V2alpha.MerchantCenterLink
end
defmodule Google.Cloud.Retail.V2alpha.Catalog do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :product_level_config, 4,
    type: Google.Cloud.Retail.V2alpha.ProductLevelConfig,
    json_name: "productLevelConfig",
    deprecated: false

  field :merchant_center_linking_config, 6,
    type: Google.Cloud.Retail.V2alpha.MerchantCenterLinkingConfig,
    json_name: "merchantCenterLinkingConfig"
end
