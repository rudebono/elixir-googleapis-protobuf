defmodule Google.Cloud.Datacatalog.V1.FieldType.PrimitiveType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PRIMITIVE_TYPE_UNSPECIFIED, 0
  field :DOUBLE, 1
  field :STRING, 2
  field :BOOL, 3
  field :TIMESTAMP, 4
  field :RICHTEXT, 5
end

defmodule Google.Cloud.Datacatalog.V1.Tag.FieldsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Datacatalog.V1.TagField
end

defmodule Google.Cloud.Datacatalog.V1.Tag do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :scope, 0

  field :name, 1, type: :string
  field :template, 2, type: :string, deprecated: false

  field :template_display_name, 5,
    type: :string,
    json_name: "templateDisplayName",
    deprecated: false

  field :column, 4, type: :string, oneof: 0

  field :fields, 3,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1.Tag.FieldsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.TagField.EnumValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Datacatalog.V1.TagField do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :kind, 0

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false
  field :double_value, 2, type: :double, json_name: "doubleValue", oneof: 0
  field :string_value, 3, type: :string, json_name: "stringValue", oneof: 0
  field :bool_value, 4, type: :bool, json_name: "boolValue", oneof: 0

  field :timestamp_value, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "timestampValue",
    oneof: 0

  field :enum_value, 6,
    type: Google.Cloud.Datacatalog.V1.TagField.EnumValue,
    json_name: "enumValue",
    oneof: 0

  field :richtext_value, 8, type: :string, json_name: "richtextValue", oneof: 0
  field :order, 7, type: :int32, deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.TagTemplate.FieldsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Datacatalog.V1.TagTemplateField
end

defmodule Google.Cloud.Datacatalog.V1.TagTemplate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :is_publicly_readable, 5, type: :bool, json_name: "isPubliclyReadable"

  field :fields, 3,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1.TagTemplate.FieldsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.TagTemplateField do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 6, type: :string, deprecated: false
  field :display_name, 1, type: :string, json_name: "displayName"
  field :type, 2, type: Google.Cloud.Datacatalog.V1.FieldType, deprecated: false
  field :is_required, 3, type: :bool, json_name: "isRequired"
  field :description, 4, type: :string
  field :order, 5, type: :int32
end

defmodule Google.Cloud.Datacatalog.V1.FieldType.EnumType.EnumValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.FieldType.EnumType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :allowed_values, 1,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1.FieldType.EnumType.EnumValue,
    json_name: "allowedValues"
end

defmodule Google.Cloud.Datacatalog.V1.FieldType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :type_decl, 0

  field :primitive_type, 1,
    type: Google.Cloud.Datacatalog.V1.FieldType.PrimitiveType,
    json_name: "primitiveType",
    enum: true,
    oneof: 0

  field :enum_type, 2,
    type: Google.Cloud.Datacatalog.V1.FieldType.EnumType,
    json_name: "enumType",
    oneof: 0
end