defmodule Google.Cloud.Documentai.V1beta3.SummaryOptions.Length do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :LENGTH_UNSPECIFIED, 0
  field :BRIEF, 1
  field :MODERATE, 2
  field :COMPREHENSIVE, 3
end

defmodule Google.Cloud.Documentai.V1beta3.SummaryOptions.Format do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :FORMAT_UNSPECIFIED, 0
  field :PARAGRAPH, 1
  field :BULLETS, 2
end

defmodule Google.Cloud.Documentai.V1beta3.DocumentSchema.EntityType.Property.OccurrenceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :OCCURRENCE_TYPE_UNSPECIFIED, 0
  field :OPTIONAL_ONCE, 1
  field :OPTIONAL_MULTIPLE, 2
  field :REQUIRED_ONCE, 3
  field :REQUIRED_MULTIPLE, 4
end

defmodule Google.Cloud.Documentai.V1beta3.SummaryOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :length, 1, type: Google.Cloud.Documentai.V1beta3.SummaryOptions.Length, enum: true
  field :format, 2, type: Google.Cloud.Documentai.V1beta3.SummaryOptions.Format, enum: true
end

defmodule Google.Cloud.Documentai.V1beta3.FieldExtractionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :summary_options, 2,
    type: Google.Cloud.Documentai.V1beta3.SummaryOptions,
    json_name: "summaryOptions"
end

defmodule Google.Cloud.Documentai.V1beta3.PropertyMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :inactive, 3, type: :bool

  field :field_extraction_metadata, 9,
    type: Google.Cloud.Documentai.V1beta3.FieldExtractionMetadata,
    json_name: "fieldExtractionMetadata"
end

defmodule Google.Cloud.Documentai.V1beta3.EntityTypeMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :inactive, 5, type: :bool
end

defmodule Google.Cloud.Documentai.V1beta3.DocumentSchema.EntityType.EnumValues do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :values, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Documentai.V1beta3.DocumentSchema.EntityType.Property do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :description, 7, type: :string
  field :display_name, 6, type: :string, json_name: "displayName"
  field :value_type, 2, type: :string, json_name: "valueType"

  field :occurrence_type, 3,
    type: Google.Cloud.Documentai.V1beta3.DocumentSchema.EntityType.Property.OccurrenceType,
    json_name: "occurrenceType",
    enum: true

  field :property_metadata, 5,
    type: Google.Cloud.Documentai.V1beta3.PropertyMetadata,
    json_name: "propertyMetadata"
end

defmodule Google.Cloud.Documentai.V1beta3.DocumentSchema.EntityType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :value_source, 0

  field :enum_values, 14,
    type: Google.Cloud.Documentai.V1beta3.DocumentSchema.EntityType.EnumValues,
    json_name: "enumValues",
    oneof: 0

  field :display_name, 13, type: :string, json_name: "displayName"
  field :name, 1, type: :string
  field :description, 15, type: :string
  field :base_types, 2, repeated: true, type: :string, json_name: "baseTypes"

  field :properties, 6,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.DocumentSchema.EntityType.Property

  field :entity_type_metadata, 11,
    type: Google.Cloud.Documentai.V1beta3.EntityTypeMetadata,
    json_name: "entityTypeMetadata"
end

defmodule Google.Cloud.Documentai.V1beta3.DocumentSchema.Metadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :document_splitter, 1, type: :bool, json_name: "documentSplitter"
  field :document_allow_multiple_labels, 2, type: :bool, json_name: "documentAllowMultipleLabels"
  field :prefixed_naming_on_properties, 6, type: :bool, json_name: "prefixedNamingOnProperties"
  field :skip_naming_validation, 7, type: :bool, json_name: "skipNamingValidation"
end

defmodule Google.Cloud.Documentai.V1beta3.DocumentSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :description, 2, type: :string

  field :entity_types, 3,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.DocumentSchema.EntityType,
    json_name: "entityTypes"

  field :metadata, 4, type: Google.Cloud.Documentai.V1beta3.DocumentSchema.Metadata
end
