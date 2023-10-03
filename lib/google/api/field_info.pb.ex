defmodule Google.Api.FieldInfo.Format do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :FORMAT_UNSPECIFIED, 0
  field :UUID4, 1
  field :IPV4, 2
  field :IPV6, 3
  field :IPV4_OR_IPV6, 4
end

defmodule Google.Api.FieldInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :format, 1, type: Google.Api.FieldInfo.Format, enum: true
end