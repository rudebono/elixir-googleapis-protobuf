defmodule Google.Maps.Addressvalidation.V1.Geocode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :location, 1, type: Google.Type.LatLng
  field :plus_code, 2, type: Google.Maps.Addressvalidation.V1.PlusCode, json_name: "plusCode"
  field :bounds, 4, type: Google.Geo.Type.Viewport
  field :feature_size_meters, 5, type: :float, json_name: "featureSizeMeters"
  field :place_id, 6, type: :string, json_name: "placeId"
  field :place_types, 7, repeated: true, type: :string, json_name: "placeTypes"
end

defmodule Google.Maps.Addressvalidation.V1.PlusCode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :global_code, 1, type: :string, json_name: "globalCode"
  field :compound_code, 2, type: :string, json_name: "compoundCode"
end
