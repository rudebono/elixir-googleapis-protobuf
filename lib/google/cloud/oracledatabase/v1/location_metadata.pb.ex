defmodule Google.Cloud.Oracledatabase.V1.LocationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :gcp_oracle_zones, 2,
    repeated: true,
    type: :string,
    json_name: "gcpOracleZones",
    deprecated: false
end