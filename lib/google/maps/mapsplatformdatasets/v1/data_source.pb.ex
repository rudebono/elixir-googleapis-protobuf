defmodule Google.Maps.Mapsplatformdatasets.V1.FileFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :FILE_FORMAT_UNSPECIFIED, 0
  field :FILE_FORMAT_GEOJSON, 1
  field :FILE_FORMAT_KML, 2
  field :FILE_FORMAT_CSV, 3
end

defmodule Google.Maps.Mapsplatformdatasets.V1.LocalFileSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :filename, 1, type: :string

  field :file_format, 2,
    type: Google.Maps.Mapsplatformdatasets.V1.FileFormat,
    json_name: "fileFormat",
    enum: true
end

defmodule Google.Maps.Mapsplatformdatasets.V1.GcsSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :input_uri, 1, type: :string, json_name: "inputUri"

  field :file_format, 2,
    type: Google.Maps.Mapsplatformdatasets.V1.FileFormat,
    json_name: "fileFormat",
    enum: true
end
