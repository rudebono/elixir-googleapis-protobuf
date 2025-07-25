defmodule Google.Ads.Admanager.V1.GeoTarget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :display_name, 2,
    proto3_optional: true,
    type: :string,
    json_name: "displayName",
    deprecated: false

  field :canonical_parent, 3,
    proto3_optional: true,
    type: :string,
    json_name: "canonicalParent",
    deprecated: false

  field :parent_names, 4,
    repeated: true,
    type: :string,
    json_name: "parentNames",
    deprecated: false

  field :region_code, 5,
    proto3_optional: true,
    type: :string,
    json_name: "regionCode",
    deprecated: false

  field :type, 6, proto3_optional: true, type: :string, deprecated: false
  field :targetable, 7, proto3_optional: true, type: :bool, deprecated: false
end
