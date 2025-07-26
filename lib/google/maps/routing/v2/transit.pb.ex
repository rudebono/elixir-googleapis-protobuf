defmodule Google.Maps.Routing.V2.TransitVehicle.TransitVehicleType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TRANSIT_VEHICLE_TYPE_UNSPECIFIED, 0
  field :BUS, 1
  field :CABLE_CAR, 2
  field :COMMUTER_TRAIN, 3
  field :FERRY, 4
  field :FUNICULAR, 5
  field :GONDOLA_LIFT, 6
  field :HEAVY_RAIL, 7
  field :HIGH_SPEED_TRAIN, 8
  field :INTERCITY_BUS, 9
  field :LONG_DISTANCE_TRAIN, 10
  field :METRO_RAIL, 11
  field :MONORAIL, 12
  field :OTHER, 13
  field :RAIL, 14
  field :SHARE_TAXI, 15
  field :SUBWAY, 16
  field :TRAM, 17
  field :TROLLEYBUS, 18
end

defmodule Google.Maps.Routing.V2.TransitAgency do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :phone_number, 2, type: :string, json_name: "phoneNumber"
  field :uri, 3, type: :string
end

defmodule Google.Maps.Routing.V2.TransitLine do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :agencies, 1, repeated: true, type: Google.Maps.Routing.V2.TransitAgency
  field :name, 2, type: :string
  field :uri, 3, type: :string
  field :color, 4, type: :string
  field :icon_uri, 5, type: :string, json_name: "iconUri"
  field :name_short, 6, type: :string, json_name: "nameShort"
  field :text_color, 7, type: :string, json_name: "textColor"
  field :vehicle, 8, type: Google.Maps.Routing.V2.TransitVehicle
end

defmodule Google.Maps.Routing.V2.TransitStop do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :location, 2, type: Google.Maps.Routing.V2.Location
end

defmodule Google.Maps.Routing.V2.TransitVehicle do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: Google.Type.LocalizedText
  field :type, 2, type: Google.Maps.Routing.V2.TransitVehicle.TransitVehicleType, enum: true
  field :icon_uri, 3, type: :string, json_name: "iconUri"
  field :local_icon_uri, 4, type: :string, json_name: "localIconUri"
end
