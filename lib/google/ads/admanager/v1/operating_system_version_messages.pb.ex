defmodule Google.Ads.Admanager.V1.OperatingSystemVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :major_version, 2,
    proto3_optional: true,
    type: :int32,
    json_name: "majorVersion",
    deprecated: false

  field :minor_version, 3,
    proto3_optional: true,
    type: :int32,
    json_name: "minorVersion",
    deprecated: false

  field :micro_version, 4,
    proto3_optional: true,
    type: :int32,
    json_name: "microVersion",
    deprecated: false
end
