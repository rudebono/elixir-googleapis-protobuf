defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DataType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DATA_TYPE_UNSPECIFIED, 0
  field :STRING, 1
  field :NUMBER, 2
  field :BOOLEAN, 3
  field :ARRAY, 6
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ParameterDefinition.ParameterType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PARAMETER_TYPE_UNSPECIFIED, 0
  field :STRING, 1
  field :NUMBER, 2
  field :BOOLEAN, 3
  field :NULL, 4
  field :OBJECT, 5
  field :LIST, 6
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ParameterDefinition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :type, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ParameterDefinition.ParameterType,
    enum: true,
    deprecated: true

  field :type_schema, 4,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TypeSchema,
    json_name: "typeSchema",
    deprecated: false

  field :description, 3, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TypeSchema.SchemaReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :tool, 1, type: :string
  field :schema, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TypeSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :schema, 0

  field :inline_schema, 1,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.InlineSchema,
    json_name: "inlineSchema",
    oneof: 0

  field :schema_reference, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TypeSchema.SchemaReference,
    json_name: "schemaReference",
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.InlineSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.DataType, enum: true
  field :items, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.TypeSchema
end
