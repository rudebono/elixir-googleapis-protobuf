defmodule Google.Cloud.Contentwarehouse.V1.RawDocumentFileType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :RAW_DOCUMENT_FILE_TYPE_UNSPECIFIED, 0
  field :RAW_DOCUMENT_FILE_TYPE_PDF, 1
  field :RAW_DOCUMENT_FILE_TYPE_DOCX, 2
  field :RAW_DOCUMENT_FILE_TYPE_XLSX, 3
  field :RAW_DOCUMENT_FILE_TYPE_PPTX, 4
  field :RAW_DOCUMENT_FILE_TYPE_TEXT, 5
end

defmodule Google.Cloud.Contentwarehouse.V1.Document do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :structured_content, 0

  oneof :raw_document, 1

  field :name, 1, type: :string
  field :reference_id, 11, type: :string, json_name: "referenceId"
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :title, 18, type: :string
  field :display_uri, 17, type: :string, json_name: "displayUri"

  field :document_schema_name, 3,
    type: :string,
    json_name: "documentSchemaName",
    deprecated: false

  field :plain_text, 15, type: :string, json_name: "plainText", oneof: 0

  field :cloud_ai_document, 4,
    type: Google.Cloud.Documentai.V1.Document,
    json_name: "cloudAiDocument",
    oneof: 0

  field :structured_content_uri, 16, type: :string, json_name: "structuredContentUri"
  field :raw_document_path, 5, type: :string, json_name: "rawDocumentPath", oneof: 1
  field :inline_raw_document, 6, type: :bytes, json_name: "inlineRawDocument", oneof: 1
  field :properties, 7, repeated: true, type: Google.Cloud.Contentwarehouse.V1.Property

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :create_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :raw_document_file_type, 10,
    type: Google.Cloud.Contentwarehouse.V1.RawDocumentFileType,
    json_name: "rawDocumentFileType",
    enum: true

  field :async_enabled, 12, type: :bool, json_name: "asyncEnabled"
  field :text_extraction_disabled, 19, type: :bool, json_name: "textExtractionDisabled"
  field :creator, 13, type: :string
  field :updater, 14, type: :string
end

defmodule Google.Cloud.Contentwarehouse.V1.DocumentReference do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :document_name, 1, type: :string, json_name: "documentName", deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :snippet, 3, type: :string
  field :document_is_folder, 4, type: :bool, json_name: "documentIsFolder"

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :delete_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false
end

defmodule Google.Cloud.Contentwarehouse.V1.Property do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :values, 0

  field :name, 1, type: :string, deprecated: false

  field :integer_values, 2,
    type: Google.Cloud.Contentwarehouse.V1.IntegerArray,
    json_name: "integerValues",
    oneof: 0

  field :float_values, 3,
    type: Google.Cloud.Contentwarehouse.V1.FloatArray,
    json_name: "floatValues",
    oneof: 0

  field :text_values, 4,
    type: Google.Cloud.Contentwarehouse.V1.TextArray,
    json_name: "textValues",
    oneof: 0

  field :enum_values, 5,
    type: Google.Cloud.Contentwarehouse.V1.EnumArray,
    json_name: "enumValues",
    oneof: 0

  field :property_values, 6,
    type: Google.Cloud.Contentwarehouse.V1.PropertyArray,
    json_name: "propertyValues",
    oneof: 0

  field :date_time_values, 7,
    type: Google.Cloud.Contentwarehouse.V1.DateTimeArray,
    json_name: "dateTimeValues",
    oneof: 0

  field :map_property, 8,
    type: Google.Cloud.Contentwarehouse.V1.MapProperty,
    json_name: "mapProperty",
    oneof: 0

  field :timestamp_values, 9,
    type: Google.Cloud.Contentwarehouse.V1.TimestampArray,
    json_name: "timestampValues",
    oneof: 0

  field :boolean_values, 10,
    type: Google.Cloud.Contentwarehouse.V1.BooleanArray,
    json_name: "booleanValues",
    oneof: 0
end

defmodule Google.Cloud.Contentwarehouse.V1.IntegerArray do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :values, 1, repeated: true, type: :int32
end

defmodule Google.Cloud.Contentwarehouse.V1.FloatArray do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :values, 1, repeated: true, type: :float
end

defmodule Google.Cloud.Contentwarehouse.V1.TextArray do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :values, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Contentwarehouse.V1.EnumArray do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :values, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Contentwarehouse.V1.DateTimeArray do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :values, 1, repeated: true, type: Google.Type.DateTime
end

defmodule Google.Cloud.Contentwarehouse.V1.TimestampArray do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :values, 1, repeated: true, type: Google.Cloud.Contentwarehouse.V1.TimestampValue
end

defmodule Google.Cloud.Contentwarehouse.V1.BooleanArray do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :values, 1, repeated: true, type: :bool
end

defmodule Google.Cloud.Contentwarehouse.V1.TimestampValue do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :value, 0

  field :timestamp_value, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "timestampValue",
    oneof: 0

  field :text_value, 2, type: :string, json_name: "textValue", oneof: 0
end

defmodule Google.Cloud.Contentwarehouse.V1.PropertyArray do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :properties, 1, repeated: true, type: Google.Cloud.Contentwarehouse.V1.Property
end

defmodule Google.Cloud.Contentwarehouse.V1.MapProperty.FieldsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Contentwarehouse.V1.Value
end

defmodule Google.Cloud.Contentwarehouse.V1.MapProperty do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :fields, 1,
    repeated: true,
    type: Google.Cloud.Contentwarehouse.V1.MapProperty.FieldsEntry,
    map: true
end

defmodule Google.Cloud.Contentwarehouse.V1.Value do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :kind, 0

  field :float_value, 1, type: :float, json_name: "floatValue", oneof: 0
  field :int_value, 2, type: :int32, json_name: "intValue", oneof: 0
  field :string_value, 3, type: :string, json_name: "stringValue", oneof: 0

  field :enum_value, 4,
    type: Google.Cloud.Contentwarehouse.V1.EnumValue,
    json_name: "enumValue",
    oneof: 0

  field :datetime_value, 5, type: Google.Type.DateTime, json_name: "datetimeValue", oneof: 0

  field :timestamp_value, 6,
    type: Google.Cloud.Contentwarehouse.V1.TimestampValue,
    json_name: "timestampValue",
    oneof: 0

  field :boolean_value, 7, type: :bool, json_name: "booleanValue", oneof: 0
end

defmodule Google.Cloud.Contentwarehouse.V1.EnumValue do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :value, 1, type: :string
end