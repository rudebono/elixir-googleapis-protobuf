defmodule Google.Ads.Admanager.V1.Browser do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :display_name, 2,
    proto3_optional: true,
    type: :string,
    json_name: "displayName",
    deprecated: false

  field :major_version, 4,
    proto3_optional: true,
    type: :string,
    json_name: "majorVersion",
    deprecated: false

  field :minor_version, 5,
    proto3_optional: true,
    type: :string,
    json_name: "minorVersion",
    deprecated: false
end
