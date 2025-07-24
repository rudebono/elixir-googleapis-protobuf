defmodule Google.Maps.Regionlookup.V1alpha.RegionSearchValue.PlaceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PLACE_TYPE_UNSPECIFIED, 0
  field :POSTAL_CODE, 1
  field :ADMINISTRATIVE_AREA_LEVEL_1, 2
  field :ADMINISTRATIVE_AREA_LEVEL_2, 3
  field :LOCALITY, 4
  field :NEIGHBORHOOD, 5
  field :COUNTRY, 6
  field :SUBLOCALITY, 7
  field :ADMINISTRATIVE_AREA_LEVEL_3, 8
  field :ADMINISTRATIVE_AREA_LEVEL_4, 9
  field :SCHOOL_DISTRICT, 10
end

defmodule Google.Maps.Regionlookup.V1alpha.RegionSearchValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :location, 0

  field :address, 1, type: :string, oneof: 0
  field :latlng, 2, type: Google.Type.LatLng, oneof: 0
  field :place_id, 3, type: :string, json_name: "placeId", oneof: 0

  field :place_type, 6,
    type: Google.Maps.Regionlookup.V1alpha.RegionSearchValue.PlaceType,
    json_name: "placeType",
    enum: true,
    deprecated: false

  field :language_code, 7, type: :string, json_name: "languageCode"
  field :region_code, 8, type: :string, json_name: "regionCode"
end
