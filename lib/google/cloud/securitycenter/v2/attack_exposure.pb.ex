defmodule Google.Cloud.Securitycenter.V2.AttackExposure.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CALCULATED, 1
  field :NOT_CALCULATED, 2
end

defmodule Google.Cloud.Securitycenter.V2.AttackExposure do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :score, 1, type: :double

  field :latest_calculation_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "latestCalculationTime"

  field :attack_exposure_result, 3, type: :string, json_name: "attackExposureResult"

  field :state, 4,
    type: Google.Cloud.Securitycenter.V2.AttackExposure.State,
    enum: true,
    deprecated: false

  field :exposed_high_value_resources_count, 5,
    type: :int32,
    json_name: "exposedHighValueResourcesCount"

  field :exposed_medium_value_resources_count, 6,
    type: :int32,
    json_name: "exposedMediumValueResourcesCount"

  field :exposed_low_value_resources_count, 7,
    type: :int32,
    json_name: "exposedLowValueResourcesCount"
end