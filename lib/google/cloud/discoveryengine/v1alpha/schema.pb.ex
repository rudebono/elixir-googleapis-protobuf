defmodule Google.Cloud.Discoveryengine.V1alpha.FieldConfig.FieldType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :FIELD_TYPE_UNSPECIFIED, 0
  field :OBJECT, 1
  field :STRING, 2
  field :NUMBER, 3
  field :INTEGER, 4
  field :BOOLEAN, 5
  field :GEOLOCATION, 6
  field :DATETIME, 7
end

defmodule Google.Cloud.Discoveryengine.V1alpha.FieldConfig.IndexableOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :INDEXABLE_OPTION_UNSPECIFIED, 0
  field :INDEXABLE_ENABLED, 1
  field :INDEXABLE_DISABLED, 2
end

defmodule Google.Cloud.Discoveryengine.V1alpha.FieldConfig.DynamicFacetableOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DYNAMIC_FACETABLE_OPTION_UNSPECIFIED, 0
  field :DYNAMIC_FACETABLE_ENABLED, 1
  field :DYNAMIC_FACETABLE_DISABLED, 2
end

defmodule Google.Cloud.Discoveryengine.V1alpha.FieldConfig.SearchableOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SEARCHABLE_OPTION_UNSPECIFIED, 0
  field :SEARCHABLE_ENABLED, 1
  field :SEARCHABLE_DISABLED, 2
end

defmodule Google.Cloud.Discoveryengine.V1alpha.FieldConfig.RetrievableOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :RETRIEVABLE_OPTION_UNSPECIFIED, 0
  field :RETRIEVABLE_ENABLED, 1
  field :RETRIEVABLE_DISABLED, 2
end

defmodule Google.Cloud.Discoveryengine.V1alpha.FieldConfig.CompletableOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :COMPLETABLE_OPTION_UNSPECIFIED, 0
  field :COMPLETABLE_ENABLED, 1
  field :COMPLETABLE_DISABLED, 2
end

defmodule Google.Cloud.Discoveryengine.V1alpha.FieldConfig.FilterableOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :FILTERABLE_OPTION_UNSPECIFIED, 0
  field :FILTERABLE_ENABLED, 1
  field :FILTERABLE_DISABLED, 2
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Schema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :schema, 0

  field :struct_schema, 2, type: Google.Protobuf.Struct, json_name: "structSchema", oneof: 0
  field :json_schema, 3, type: :string, json_name: "jsonSchema", oneof: 0
  field :name, 1, type: :string, deprecated: false

  field :field_configs, 4,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.FieldConfig,
    json_name: "fieldConfigs",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.FieldConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :field_path, 1, type: :string, json_name: "fieldPath", deprecated: false

  field :field_type, 2,
    type: Google.Cloud.Discoveryengine.V1alpha.FieldConfig.FieldType,
    json_name: "fieldType",
    enum: true,
    deprecated: false

  field :indexable_option, 3,
    type: Google.Cloud.Discoveryengine.V1alpha.FieldConfig.IndexableOption,
    json_name: "indexableOption",
    enum: true

  field :dynamic_facetable_option, 4,
    type: Google.Cloud.Discoveryengine.V1alpha.FieldConfig.DynamicFacetableOption,
    json_name: "dynamicFacetableOption",
    enum: true

  field :searchable_option, 5,
    type: Google.Cloud.Discoveryengine.V1alpha.FieldConfig.SearchableOption,
    json_name: "searchableOption",
    enum: true

  field :retrievable_option, 6,
    type: Google.Cloud.Discoveryengine.V1alpha.FieldConfig.RetrievableOption,
    json_name: "retrievableOption",
    enum: true

  field :completable_option, 8,
    type: Google.Cloud.Discoveryengine.V1alpha.FieldConfig.CompletableOption,
    json_name: "completableOption",
    enum: true

  field :recs_filterable_option, 9,
    type: Google.Cloud.Discoveryengine.V1alpha.FieldConfig.FilterableOption,
    json_name: "recsFilterableOption",
    enum: true

  field :key_property_type, 7, type: :string, json_name: "keyPropertyType", deprecated: false
end