defmodule Google.Api.PbExtension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0"

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
