defmodule Google.Api.ResourceDescriptor.History do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :HISTORY_UNSPECIFIED, 0
  field :ORIGINALLY_SINGLE_PATTERN, 1
  field :FUTURE_MULTI_PATTERN, 2
end
defmodule Google.Api.ResourceDescriptor.Style do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :STYLE_UNSPECIFIED, 0
  field :DECLARATIVE_FRIENDLY, 1
end
defmodule Google.Api.ResourceDescriptor do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :type, 1, type: :string
  field :pattern, 2, repeated: true, type: :string
  field :name_field, 3, type: :string, json_name: "nameField"
  field :history, 4, type: Google.Api.ResourceDescriptor.History, enum: true
  field :plural, 5, type: :string
  field :singular, 6, type: :string
  field :style, 10, repeated: true, type: Google.Api.ResourceDescriptor.Style, enum: true
end
defmodule Google.Api.ResourceReference do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :type, 1, type: :string
  field :child_type, 2, type: :string, json_name: "childType"
end
defmodule Google.Api.PbExtension do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  extend Google.Protobuf.FieldOptions, :resource_reference, 1055,
    optional: true,
    type: Google.Api.ResourceReference,
    json_name: "resourceReference"

  extend Google.Protobuf.FileOptions, :resource_definition, 1053,
    repeated: true,
    type: Google.Api.ResourceDescriptor,
    json_name: "resourceDefinition"

  extend Google.Protobuf.MessageOptions, :resource, 1053,
    optional: true,
    type: Google.Api.ResourceDescriptor
end
