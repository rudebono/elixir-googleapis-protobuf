defmodule Google.Cloud.Capacityplanner.V1beta.LocationLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LOCATION_LEVEL_UNSPECIFIED, 0
  field :REGION, 1
  field :ZONE, 2
  field :GLOBAL, 3
  field :METRO, 4
  field :DUAL_REGION, 5
  field :MULTI_REGION, 6
end

defmodule Google.Cloud.Capacityplanner.V1beta.LocationIdentifier.LinkedLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :location_level, 1,
    type: Google.Cloud.Capacityplanner.V1beta.LocationLevel,
    json_name: "locationLevel",
    enum: true

  field :location, 2, type: :string, deprecated: false
  field :label, 3, type: :string
end

defmodule Google.Cloud.Capacityplanner.V1beta.LocationIdentifier do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :location_level, 1,
    type: Google.Cloud.Capacityplanner.V1beta.LocationLevel,
    json_name: "locationLevel",
    enum: true

  field :source, 2, type: :string, deprecated: false

  field :linked_locations, 3,
    repeated: true,
    type: Google.Cloud.Capacityplanner.V1beta.LocationIdentifier.LinkedLocation,
    json_name: "linkedLocations",
    deprecated: false
end
