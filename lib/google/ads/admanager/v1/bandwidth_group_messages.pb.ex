defmodule Google.Ads.Admanager.V1.BandwidthGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, proto3_optional: true, type: :string, deprecated: false

  field :display_name, 2,
    proto3_optional: true,
    type: :string,
    json_name: "displayName",
    deprecated: false
end
