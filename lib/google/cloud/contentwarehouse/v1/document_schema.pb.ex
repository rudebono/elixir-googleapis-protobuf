defmodule Google.Cloud.Contentwarehouse.V1.PropertyDefinition.RetrievalImportance do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :RETRIEVAL_IMPORTANCE_UNSPECIFIED, 0
  field :HIGHEST, 1
  field :HIGHER, 2
  field :HIGH, 3
  field :MEDIUM, 4
  field :LOW, 5
  field :LOWEST, 6
end

defmodule Google.Cloud.Contentwarehouse.V1.DocumentSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :property_definitions, 3,
    repeated: true,
    type: Google.Cloud.Contentwarehouse.V1.PropertyDefinition,
    json_name: "propertyDefinitions"

  field :document_is_folder, 4, type: :bool, json_name: "documentIsFolder"

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :description, 7, type: :string
end

defmodule Google.Cloud.Contentwarehouse.V1.PropertyDefinition.SchemaSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :processor_type, 2, type: :string, json_name: "processorType"
end

defmodule Google.Cloud.Contentwarehouse.V1.PropertyDefinition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :value_type_options, 0

  field :name, 1, type: :string, deprecated: false
  field :display_name, 12, type: :string, json_name: "displayName"
  field :is_repeatable, 2, type: :bool, json_name: "isRepeatable"
  field :is_filterable, 3, type: :bool, json_name: "isFilterable"
  field :is_searchable, 4, type: :bool, json_name: "isSearchable"
  field :is_metadata, 5, type: :bool, json_name: "isMetadata"
  field :is_required, 14, type: :bool, json_name: "isRequired"

  field :retrieval_importance, 18,
    type: Google.Cloud.Contentwarehouse.V1.PropertyDefinition.RetrievalImportance,
    json_name: "retrievalImportance",
    enum: true

  field :integer_type_options, 7,
    type: Google.Cloud.Contentwarehouse.V1.IntegerTypeOptions,
    json_name: "integerTypeOptions",
    oneof: 0

  field :float_type_options, 8,
    type: Google.Cloud.Contentwarehouse.V1.FloatTypeOptions,
    json_name: "floatTypeOptions",
    oneof: 0

  field :text_type_options, 9,
    type: Google.Cloud.Contentwarehouse.V1.TextTypeOptions,
    json_name: "textTypeOptions",
    oneof: 0

  field :property_type_options, 10,
    type: Google.Cloud.Contentwarehouse.V1.PropertyTypeOptions,
    json_name: "propertyTypeOptions",
    oneof: 0

  field :enum_type_options, 11,
    type: Google.Cloud.Contentwarehouse.V1.EnumTypeOptions,
    json_name: "enumTypeOptions",
    oneof: 0

  field :date_time_type_options, 13,
    type: Google.Cloud.Contentwarehouse.V1.DateTimeTypeOptions,
    json_name: "dateTimeTypeOptions",
    oneof: 0

  field :map_type_options, 15,
    type: Google.Cloud.Contentwarehouse.V1.MapTypeOptions,
    json_name: "mapTypeOptions",
    oneof: 0

  field :timestamp_type_options, 16,
    type: Google.Cloud.Contentwarehouse.V1.TimestampTypeOptions,
    json_name: "timestampTypeOptions",
    oneof: 0

  field :schema_sources, 19,
    repeated: true,
    type: Google.Cloud.Contentwarehouse.V1.PropertyDefinition.SchemaSource,
    json_name: "schemaSources"
end

defmodule Google.Cloud.Contentwarehouse.V1.IntegerTypeOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Contentwarehouse.V1.FloatTypeOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Contentwarehouse.V1.TextTypeOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Contentwarehouse.V1.DateTimeTypeOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Contentwarehouse.V1.MapTypeOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Contentwarehouse.V1.TimestampTypeOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Contentwarehouse.V1.PropertyTypeOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :property_definitions, 1,
    repeated: true,
    type: Google.Cloud.Contentwarehouse.V1.PropertyDefinition,
    json_name: "propertyDefinitions",
    deprecated: false
end

defmodule Google.Cloud.Contentwarehouse.V1.EnumTypeOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :possible_values, 1,
    repeated: true,
    type: :string,
    json_name: "possibleValues",
    deprecated: false

  field :validation_check_disabled, 2, type: :bool, json_name: "validationCheckDisabled"
end
