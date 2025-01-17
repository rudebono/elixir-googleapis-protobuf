defmodule Google.Cloud.Documentai.V1.DocumentSchema.EntityType.Property.OccurrenceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :OCCURRENCE_TYPE_UNSPECIFIED, 0
  field :OPTIONAL_ONCE, 1
  field :OPTIONAL_MULTIPLE, 2
  field :REQUIRED_ONCE, 3
  field :REQUIRED_MULTIPLE, 4
end

defmodule Google.Cloud.Documentai.V1.DocumentSchema.EntityType.EnumValues do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :values, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Documentai.V1.DocumentSchema.EntityType.Property do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 6, type: :string, json_name: "displayName"
  field :value_type, 2, type: :string, json_name: "valueType"

  field :occurrence_type, 3,
    type: Google.Cloud.Documentai.V1.DocumentSchema.EntityType.Property.OccurrenceType,
    json_name: "occurrenceType",
    enum: true
end

defmodule Google.Cloud.Documentai.V1.DocumentSchema.EntityType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :value_source, 0

  field :enum_values, 14,
    type: Google.Cloud.Documentai.V1.DocumentSchema.EntityType.EnumValues,
    json_name: "enumValues",
    oneof: 0

  field :display_name, 13, type: :string, json_name: "displayName"
  field :name, 1, type: :string
  field :base_types, 2, repeated: true, type: :string, json_name: "baseTypes"

  field :properties, 6,
    repeated: true,
    type: Google.Cloud.Documentai.V1.DocumentSchema.EntityType.Property
end

defmodule Google.Cloud.Documentai.V1.DocumentSchema.Metadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :document_splitter, 1, type: :bool, json_name: "documentSplitter"
  field :document_allow_multiple_labels, 2, type: :bool, json_name: "documentAllowMultipleLabels"
  field :prefixed_naming_on_properties, 6, type: :bool, json_name: "prefixedNamingOnProperties"
  field :skip_naming_validation, 7, type: :bool, json_name: "skipNamingValidation"
end

defmodule Google.Cloud.Documentai.V1.DocumentSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :description, 2, type: :string

  field :entity_types, 3,
    repeated: true,
    type: Google.Cloud.Documentai.V1.DocumentSchema.EntityType,
    json_name: "entityTypes"

  field :metadata, 4, type: Google.Cloud.Documentai.V1.DocumentSchema.Metadata
end
