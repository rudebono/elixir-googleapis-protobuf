defmodule Google.Maps.Places.V1.AddressDescriptor.Landmark.SpatialRelationship do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :NEAR, 0
  field :WITHIN, 1
  field :BESIDE, 2
  field :ACROSS_THE_ROAD, 3
  field :DOWN_THE_ROAD, 4
  field :AROUND_THE_CORNER, 5
  field :BEHIND, 6
end

defmodule Google.Maps.Places.V1.AddressDescriptor.Area.Containment do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CONTAINMENT_UNSPECIFIED, 0
  field :WITHIN, 1
  field :OUTSKIRTS, 2
  field :NEAR, 3
end

defmodule Google.Maps.Places.V1.AddressDescriptor.Landmark do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :place_id, 2, type: :string, json_name: "placeId"
  field :display_name, 3, type: Google.Type.LocalizedText, json_name: "displayName"
  field :types, 4, repeated: true, type: :string

  field :spatial_relationship, 5,
    type: Google.Maps.Places.V1.AddressDescriptor.Landmark.SpatialRelationship,
    json_name: "spatialRelationship",
    enum: true

  field :straight_line_distance_meters, 6, type: :float, json_name: "straightLineDistanceMeters"

  field :travel_distance_meters, 7,
    proto3_optional: true,
    type: :float,
    json_name: "travelDistanceMeters"
end

defmodule Google.Maps.Places.V1.AddressDescriptor.Area do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :place_id, 2, type: :string, json_name: "placeId"
  field :display_name, 3, type: Google.Type.LocalizedText, json_name: "displayName"

  field :containment, 4,
    type: Google.Maps.Places.V1.AddressDescriptor.Area.Containment,
    enum: true
end

defmodule Google.Maps.Places.V1.AddressDescriptor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :landmarks, 1, repeated: true, type: Google.Maps.Places.V1.AddressDescriptor.Landmark
  field :areas, 2, repeated: true, type: Google.Maps.Places.V1.AddressDescriptor.Area
end
