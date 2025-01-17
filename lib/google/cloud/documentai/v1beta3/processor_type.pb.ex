defmodule Google.Cloud.Documentai.V1beta3.ProcessorType.LocationInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :location_id, 1, type: :string, json_name: "locationId"
end

defmodule Google.Cloud.Documentai.V1beta3.ProcessorType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: :string
  field :category, 3, type: :string

  field :available_locations, 4,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.ProcessorType.LocationInfo,
    json_name: "availableLocations"

  field :allow_creation, 6, type: :bool, json_name: "allowCreation"
  field :launch_stage, 8, type: Google.Api.LaunchStage, json_name: "launchStage", enum: true
  field :sample_document_uris, 9, repeated: true, type: :string, json_name: "sampleDocumentUris"
end
