defmodule Google.Maps.Places.V1.FuelOptions.FuelPrice.FuelType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :FUEL_TYPE_UNSPECIFIED, 0
  field :DIESEL, 1
  field :DIESEL_PLUS, 19
  field :REGULAR_UNLEADED, 2
  field :MIDGRADE, 3
  field :PREMIUM, 4
  field :SP91, 5
  field :SP91_E10, 6
  field :SP92, 7
  field :SP95, 8
  field :SP95_E10, 9
  field :SP98, 10
  field :SP99, 11
  field :SP100, 12
  field :LPG, 13
  field :E80, 14
  field :E85, 15
  field :E100, 20
  field :METHANE, 16
  field :BIO_DIESEL, 17
  field :TRUCK_DIESEL, 18
end

defmodule Google.Maps.Places.V1.FuelOptions.FuelPrice do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :type, 1, type: Google.Maps.Places.V1.FuelOptions.FuelPrice.FuelType, enum: true
  field :price, 2, type: Google.Type.Money
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Maps.Places.V1.FuelOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :fuel_prices, 1,
    repeated: true,
    type: Google.Maps.Places.V1.FuelOptions.FuelPrice,
    json_name: "fuelPrices"
end
