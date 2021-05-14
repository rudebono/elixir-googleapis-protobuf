defmodule Google.Maps.Routes.V1.PolylineQuality do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :POLYLINE_QUALITY_UNSPECIFIED | :HIGH_QUALITY | :OVERVIEW

  field :POLYLINE_QUALITY_UNSPECIFIED, 0

  field :HIGH_QUALITY, 1

  field :OVERVIEW, 2
end

defmodule Google.Maps.Routes.V1.PolylineEncoding do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :POLYLINE_ENCODING_UNSPECIFIED | :ENCODED_POLYLINE | :GEO_JSON_LINESTRING

  field :POLYLINE_ENCODING_UNSPECIFIED, 0

  field :ENCODED_POLYLINE, 1

  field :GEO_JSON_LINESTRING, 2
end

defmodule Google.Maps.Routes.V1.Polyline do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          polyline_type: {atom, any}
        }

  defstruct [:polyline_type]

  oneof :polyline_type, 0
  field :encoded_polyline, 1, type: :string, oneof: 0
  field :geo_json_linestring, 2, type: Google.Protobuf.Struct, oneof: 0
end
