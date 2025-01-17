defmodule Google.Identity.Accesscontextmanager.V1.GcpUserAccessBinding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :group_key, 2, type: :string, json_name: "groupKey", deprecated: false

  field :access_levels, 3,
    repeated: true,
    type: :string,
    json_name: "accessLevels",
    deprecated: false
end
