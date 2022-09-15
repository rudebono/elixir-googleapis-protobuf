defmodule Google.Cloud.Contentwarehouse.V1.TimeFilter.TimeField do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :TIME_FIELD_UNSPECIFIED, 0
  field :CREATE_TIME, 1
  field :UPDATE_TIME, 2
end

defmodule Google.Cloud.Contentwarehouse.V1.FileTypeFilter.FileType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :FILE_TYPE_UNSPECIFIED, 0
  field :ALL, 1
  field :FOLDER, 2
  field :DOCUMENT, 3
end

defmodule Google.Cloud.Contentwarehouse.V1.DocumentQuery do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :query, 1, type: :string
  field :is_nl_query, 12, type: :bool, json_name: "isNlQuery"

  field :custom_property_filter, 4,
    type: :string,
    json_name: "customPropertyFilter",
    deprecated: true

  field :time_filters, 5,
    repeated: true,
    type: Google.Cloud.Contentwarehouse.V1.TimeFilter,
    json_name: "timeFilters"

  field :document_schema_names, 6, repeated: true, type: :string, json_name: "documentSchemaNames"

  field :property_filter, 7,
    repeated: true,
    type: Google.Cloud.Contentwarehouse.V1.PropertyFilter,
    json_name: "propertyFilter"

  field :file_type_filter, 8,
    type: Google.Cloud.Contentwarehouse.V1.FileTypeFilter,
    json_name: "fileTypeFilter"

  field :folder_name_filter, 9, type: :string, json_name: "folderNameFilter"
  field :query_context, 10, repeated: true, type: :string, json_name: "queryContext"

  field :document_creator_filter, 11,
    repeated: true,
    type: :string,
    json_name: "documentCreatorFilter"
end

defmodule Google.Cloud.Contentwarehouse.V1.TimeFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :time_range, 1, type: Google.Type.Interval, json_name: "timeRange"

  field :time_field, 2,
    type: Google.Cloud.Contentwarehouse.V1.TimeFilter.TimeField,
    json_name: "timeField",
    enum: true
end

defmodule Google.Cloud.Contentwarehouse.V1.PropertyFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :document_schema_name, 1,
    type: :string,
    json_name: "documentSchemaName",
    deprecated: false

  field :condition, 2, type: :string
end

defmodule Google.Cloud.Contentwarehouse.V1.FileTypeFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :file_type, 1,
    type: Google.Cloud.Contentwarehouse.V1.FileTypeFilter.FileType,
    json_name: "fileType",
    enum: true
end