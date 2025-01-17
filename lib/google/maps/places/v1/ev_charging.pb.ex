defmodule Google.Maps.Places.V1.EVConnectorType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :EV_CONNECTOR_TYPE_UNSPECIFIED, 0
  field :EV_CONNECTOR_TYPE_OTHER, 1
  field :EV_CONNECTOR_TYPE_J1772, 2
  field :EV_CONNECTOR_TYPE_TYPE_2, 3
  field :EV_CONNECTOR_TYPE_CHADEMO, 4
  field :EV_CONNECTOR_TYPE_CCS_COMBO_1, 5
  field :EV_CONNECTOR_TYPE_CCS_COMBO_2, 6
  field :EV_CONNECTOR_TYPE_TESLA, 7
  field :EV_CONNECTOR_TYPE_UNSPECIFIED_GB_T, 8
  field :EV_CONNECTOR_TYPE_UNSPECIFIED_WALL_OUTLET, 9
end

defmodule Google.Maps.Places.V1.EVChargeOptions.ConnectorAggregation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :type, 1, type: Google.Maps.Places.V1.EVConnectorType, enum: true
  field :max_charge_rate_kw, 2, type: :double, json_name: "maxChargeRateKw"
  field :count, 3, type: :int32
  field :available_count, 4, proto3_optional: true, type: :int32, json_name: "availableCount"

  field :out_of_service_count, 5,
    proto3_optional: true,
    type: :int32,
    json_name: "outOfServiceCount"

  field :availability_last_update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "availabilityLastUpdateTime"
end

defmodule Google.Maps.Places.V1.EVChargeOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :connector_count, 1, type: :int32, json_name: "connectorCount"

  field :connector_aggregation, 2,
    repeated: true,
    type: Google.Maps.Places.V1.EVChargeOptions.ConnectorAggregation,
    json_name: "connectorAggregation"
end
