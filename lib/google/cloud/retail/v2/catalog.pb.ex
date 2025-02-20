defmodule Google.Cloud.Retail.V2.CatalogAttribute.AttributeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNKNOWN, 0
  field :TEXTUAL, 1
  field :NUMERICAL, 2
end

defmodule Google.Cloud.Retail.V2.CatalogAttribute.IndexableOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :INDEXABLE_OPTION_UNSPECIFIED, 0
  field :INDEXABLE_ENABLED, 1
  field :INDEXABLE_DISABLED, 2
end

defmodule Google.Cloud.Retail.V2.CatalogAttribute.DynamicFacetableOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DYNAMIC_FACETABLE_OPTION_UNSPECIFIED, 0
  field :DYNAMIC_FACETABLE_ENABLED, 1
  field :DYNAMIC_FACETABLE_DISABLED, 2
end

defmodule Google.Cloud.Retail.V2.CatalogAttribute.SearchableOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SEARCHABLE_OPTION_UNSPECIFIED, 0
  field :SEARCHABLE_ENABLED, 1
  field :SEARCHABLE_DISABLED, 2
end

defmodule Google.Cloud.Retail.V2.CatalogAttribute.ExactSearchableOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :EXACT_SEARCHABLE_OPTION_UNSPECIFIED, 0
  field :EXACT_SEARCHABLE_ENABLED, 1
  field :EXACT_SEARCHABLE_DISABLED, 2
end

defmodule Google.Cloud.Retail.V2.CatalogAttribute.RetrievableOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RETRIEVABLE_OPTION_UNSPECIFIED, 0
  field :RETRIEVABLE_ENABLED, 1
  field :RETRIEVABLE_DISABLED, 2
end

defmodule Google.Cloud.Retail.V2.ProductLevelConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ingestion_product_type, 1, type: :string, json_name: "ingestionProductType"

  field :merchant_center_product_id_field, 2,
    type: :string,
    json_name: "merchantCenterProductIdField"
end

defmodule Google.Cloud.Retail.V2.CatalogAttribute.FacetConfig.IgnoredFacetValues do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :values, 1, repeated: true, type: :string
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Retail.V2.CatalogAttribute.FacetConfig.MergedFacetValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :values, 1, repeated: true, type: :string
  field :merged_value, 2, type: :string, json_name: "mergedValue"
end

defmodule Google.Cloud.Retail.V2.CatalogAttribute.FacetConfig.MergedFacet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :merged_facet_key, 1, type: :string, json_name: "mergedFacetKey"
end

defmodule Google.Cloud.Retail.V2.CatalogAttribute.FacetConfig.RerankConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :rerank_facet, 1, type: :bool, json_name: "rerankFacet"
  field :facet_values, 2, repeated: true, type: :string, json_name: "facetValues"
end

defmodule Google.Cloud.Retail.V2.CatalogAttribute.FacetConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :facet_intervals, 1,
    repeated: true,
    type: Google.Cloud.Retail.V2.Interval,
    json_name: "facetIntervals"

  field :ignored_facet_values, 2,
    repeated: true,
    type: Google.Cloud.Retail.V2.CatalogAttribute.FacetConfig.IgnoredFacetValues,
    json_name: "ignoredFacetValues"

  field :merged_facet_values, 3,
    repeated: true,
    type: Google.Cloud.Retail.V2.CatalogAttribute.FacetConfig.MergedFacetValue,
    json_name: "mergedFacetValues"

  field :merged_facet, 4,
    type: Google.Cloud.Retail.V2.CatalogAttribute.FacetConfig.MergedFacet,
    json_name: "mergedFacet"

  field :rerank_config, 5,
    type: Google.Cloud.Retail.V2.CatalogAttribute.FacetConfig.RerankConfig,
    json_name: "rerankConfig"
end

defmodule Google.Cloud.Retail.V2.CatalogAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string, deprecated: false
  field :in_use, 9, type: :bool, json_name: "inUse", deprecated: false

  field :type, 10,
    type: Google.Cloud.Retail.V2.CatalogAttribute.AttributeType,
    enum: true,
    deprecated: false

  field :indexable_option, 5,
    type: Google.Cloud.Retail.V2.CatalogAttribute.IndexableOption,
    json_name: "indexableOption",
    enum: true

  field :dynamic_facetable_option, 6,
    type: Google.Cloud.Retail.V2.CatalogAttribute.DynamicFacetableOption,
    json_name: "dynamicFacetableOption",
    enum: true

  field :searchable_option, 7,
    type: Google.Cloud.Retail.V2.CatalogAttribute.SearchableOption,
    json_name: "searchableOption",
    enum: true

  field :exact_searchable_option, 11,
    type: Google.Cloud.Retail.V2.CatalogAttribute.ExactSearchableOption,
    json_name: "exactSearchableOption",
    enum: true

  field :retrievable_option, 12,
    type: Google.Cloud.Retail.V2.CatalogAttribute.RetrievableOption,
    json_name: "retrievableOption",
    enum: true

  field :facet_config, 13,
    type: Google.Cloud.Retail.V2.CatalogAttribute.FacetConfig,
    json_name: "facetConfig"
end

defmodule Google.Cloud.Retail.V2.AttributesConfig.CatalogAttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Retail.V2.CatalogAttribute
end

defmodule Google.Cloud.Retail.V2.AttributesConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :catalog_attributes, 2,
    repeated: true,
    type: Google.Cloud.Retail.V2.AttributesConfig.CatalogAttributesEntry,
    json_name: "catalogAttributes",
    map: true

  field :attribute_config_level, 3,
    type: Google.Cloud.Retail.V2.AttributeConfigLevel,
    json_name: "attributeConfigLevel",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Retail.V2.CompletionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :matching_order, 2, type: :string, json_name: "matchingOrder"
  field :max_suggestions, 3, type: :int32, json_name: "maxSuggestions"
  field :min_prefix_length, 4, type: :int32, json_name: "minPrefixLength"
  field :auto_learning, 11, type: :bool, json_name: "autoLearning"

  field :suggestions_input_config, 5,
    type: Google.Cloud.Retail.V2.CompletionDataInputConfig,
    json_name: "suggestionsInputConfig",
    deprecated: false

  field :last_suggestions_import_operation, 6,
    type: :string,
    json_name: "lastSuggestionsImportOperation",
    deprecated: false

  field :denylist_input_config, 7,
    type: Google.Cloud.Retail.V2.CompletionDataInputConfig,
    json_name: "denylistInputConfig",
    deprecated: false

  field :last_denylist_import_operation, 8,
    type: :string,
    json_name: "lastDenylistImportOperation",
    deprecated: false

  field :allowlist_input_config, 9,
    type: Google.Cloud.Retail.V2.CompletionDataInputConfig,
    json_name: "allowlistInputConfig",
    deprecated: false

  field :last_allowlist_import_operation, 10,
    type: :string,
    json_name: "lastAllowlistImportOperation",
    deprecated: false
end

defmodule Google.Cloud.Retail.V2.Catalog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :product_level_config, 4,
    type: Google.Cloud.Retail.V2.ProductLevelConfig,
    json_name: "productLevelConfig",
    deprecated: false
end
