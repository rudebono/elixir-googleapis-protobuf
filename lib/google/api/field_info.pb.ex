defmodule Google.Api.FieldInfo.Format do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FORMAT_UNSPECIFIED, 0
  field :UUID4, 1
  field :IPV4, 2
  field :IPV6, 3
  field :IPV4_OR_IPV6, 4
end

defmodule Google.Api.FieldInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :format, 1, type: Google.Api.FieldInfo.Format, enum: true

  field :referenced_types, 2,
    repeated: true,
    type: Google.Api.TypeReference,
    json_name: "referencedTypes"
end

defmodule Google.Api.TypeReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type_name, 1, type: :string, json_name: "typeName"
end
