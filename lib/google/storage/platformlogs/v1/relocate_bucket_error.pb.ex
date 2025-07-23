defmodule Google.Storage.Platformlogs.V1.RelocateBucketError.CustomPlacementConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_locations, 1, repeated: true, type: :string, json_name: "dataLocations"
end

defmodule Google.Storage.Platformlogs.V1.RelocateBucketError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource, 1, type: :string
  field :object_id, 2, type: :string, json_name: "objectId"
  field :source_location, 3, type: :string, json_name: "sourceLocation"
  field :destination_location, 4, type: :string, json_name: "destinationLocation"

  field :source_custom_placement_config, 5,
    proto3_optional: true,
    type: Google.Storage.Platformlogs.V1.RelocateBucketError.CustomPlacementConfig,
    json_name: "sourceCustomPlacementConfig"

  field :destination_custom_placement_config, 6,
    proto3_optional: true,
    type: Google.Storage.Platformlogs.V1.RelocateBucketError.CustomPlacementConfig,
    json_name: "destinationCustomPlacementConfig"

  field :relocation_errors, 7,
    repeated: true,
    type: Google.Rpc.Status,
    json_name: "relocationErrors"

  field :validate_only, 8, type: :bool, json_name: "validateOnly"
end
