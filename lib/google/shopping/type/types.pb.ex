defmodule Google.Shopping.Type.Weight.WeightUnit do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :WEIGHT_UNIT_UNSPECIFIED, 0
  field :POUND, 1
  field :KILOGRAM, 2
end

defmodule Google.Shopping.Type.Destination.DestinationEnum do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DESTINATION_ENUM_UNSPECIFIED, 0
  field :SHOPPING_ADS, 1
  field :DISPLAY_ADS, 2
  field :LOCAL_INVENTORY_ADS, 3
  field :FREE_LISTINGS, 4
  field :FREE_LOCAL_LISTINGS, 5
  field :YOUTUBE_SHOPPING, 6
end

defmodule Google.Shopping.Type.ReportingContext.ReportingContextEnum do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :REPORTING_CONTEXT_ENUM_UNSPECIFIED, 0
  field :SHOPPING_ADS, 1
  field :DISCOVERY_ADS, 2
  field :DEMAND_GEN_ADS, 13
  field :DEMAND_GEN_ADS_DISCOVER_SURFACE, 14
  field :VIDEO_ADS, 3
  field :DISPLAY_ADS, 4
  field :LOCAL_INVENTORY_ADS, 5
  field :VEHICLE_INVENTORY_ADS, 6
  field :FREE_LISTINGS, 7
  field :FREE_LOCAL_LISTINGS, 8
  field :FREE_LOCAL_VEHICLE_LISTINGS, 9
  field :YOUTUBE_SHOPPING, 10
  field :CLOUD_RETAIL, 11
  field :LOCAL_CLOUD_RETAIL, 12
end

defmodule Google.Shopping.Type.Channel.ChannelEnum do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CHANNEL_ENUM_UNSPECIFIED, 0
  field :ONLINE, 1
  field :LOCAL, 2
end

defmodule Google.Shopping.Type.Weight do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :amount_micros, 1, proto3_optional: true, type: :int64, json_name: "amountMicros"
  field :unit, 2, type: Google.Shopping.Type.Weight.WeightUnit, enum: true
end

defmodule Google.Shopping.Type.Price do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :amount_micros, 1, proto3_optional: true, type: :int64, json_name: "amountMicros"
  field :currency_code, 2, proto3_optional: true, type: :string, json_name: "currencyCode"
end

defmodule Google.Shopping.Type.CustomAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, proto3_optional: true, type: :string
  field :value, 2, proto3_optional: true, type: :string

  field :group_values, 3,
    repeated: true,
    type: Google.Shopping.Type.CustomAttribute,
    json_name: "groupValues"
end

defmodule Google.Shopping.Type.Destination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Shopping.Type.ReportingContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Shopping.Type.Channel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end