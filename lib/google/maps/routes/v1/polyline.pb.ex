defmodule Google.Maps.Routes.V1.PolylineQuality do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :POLYLINE_QUALITY_UNSPECIFIED, 0
  field :HIGH_QUALITY, 1
  field :OVERVIEW, 2
end

defmodule Google.Maps.Routes.V1.PolylineEncoding do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :POLYLINE_ENCODING_UNSPECIFIED, 0
  field :ENCODED_POLYLINE, 1
  field :GEO_JSON_LINESTRING, 2
end

defmodule Google.Maps.Routes.V1.Polyline do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :polyline_type, 0

  field :encoded_polyline, 1, type: :string, json_name: "encodedPolyline", oneof: 0

  field :geo_json_linestring, 2,
    type: Google.Protobuf.Struct,
    json_name: "geoJsonLinestring",
    oneof: 0
end
