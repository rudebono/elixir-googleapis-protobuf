defmodule Google.Cloud.Datacatalog.V1.ColumnSchema.IndexingType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :INDEXING_TYPE_UNSPECIFIED, 0
  field :INDEXING_TYPE_NONE, 1
  field :INDEXING_TYPE_NON_UNIQUE, 2
  field :INDEXING_TYPE_UNIQUE, 3
  field :INDEXING_TYPE_PRIMARY_KEY, 4
end

defmodule Google.Cloud.Datacatalog.V1.ColumnSchema.LookerColumnSpec.LookerColumnType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LOOKER_COLUMN_TYPE_UNSPECIFIED, 0
  field :DIMENSION, 1
  field :DIMENSION_GROUP, 2
  field :FILTER, 3
  field :MEASURE, 4
  field :PARAMETER, 5
end

defmodule Google.Cloud.Datacatalog.V1.Schema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :columns, 2, repeated: true, type: Google.Cloud.Datacatalog.V1.ColumnSchema
end

defmodule Google.Cloud.Datacatalog.V1.ColumnSchema.LookerColumnSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1,
    type: Google.Cloud.Datacatalog.V1.ColumnSchema.LookerColumnSpec.LookerColumnType,
    enum: true
end

defmodule Google.Cloud.Datacatalog.V1.ColumnSchema.FieldElementType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.ColumnSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :system_spec, 0

  field :column, 6, type: :string, deprecated: false
  field :type, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
  field :mode, 3, type: :string, deprecated: false
  field :default_value, 8, type: :string, json_name: "defaultValue", deprecated: false
  field :ordinal_position, 9, type: :int32, json_name: "ordinalPosition", deprecated: false

  field :highest_indexing_type, 10,
    type: Google.Cloud.Datacatalog.V1.ColumnSchema.IndexingType,
    json_name: "highestIndexingType",
    enum: true,
    deprecated: false

  field :subcolumns, 7,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1.ColumnSchema,
    deprecated: false

  field :looker_column_spec, 18,
    type: Google.Cloud.Datacatalog.V1.ColumnSchema.LookerColumnSpec,
    json_name: "lookerColumnSpec",
    oneof: 0

  field :range_element_type, 19,
    type: Google.Cloud.Datacatalog.V1.ColumnSchema.FieldElementType,
    json_name: "rangeElementType",
    deprecated: false

  field :gc_rule, 11, type: :string, json_name: "gcRule", deprecated: false
end
