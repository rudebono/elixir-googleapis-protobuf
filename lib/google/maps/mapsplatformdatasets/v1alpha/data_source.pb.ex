defmodule Google.Maps.Mapsplatformdatasets.V1alpha.FileFormat do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :FILE_FORMAT_UNSPECIFIED, 0
  field :FILE_FORMAT_GEOJSON, 1
  field :FILE_FORMAT_KML, 2
  field :FILE_FORMAT_CSV, 3
  field :FILE_FORMAT_PROTO, 4
  field :FILE_FORMAT_KMZ, 5
end

defmodule Google.Maps.Mapsplatformdatasets.V1alpha.LocalFileSource do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filename, 1, type: :string

  field :file_format, 2,
    type: Google.Maps.Mapsplatformdatasets.V1alpha.FileFormat,
    json_name: "fileFormat",
    enum: true
end

defmodule Google.Maps.Mapsplatformdatasets.V1alpha.GcsSource do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :input_uri, 1, type: :string, json_name: "inputUri"

  field :file_format, 2,
    type: Google.Maps.Mapsplatformdatasets.V1alpha.FileFormat,
    json_name: "fileFormat",
    enum: true
end