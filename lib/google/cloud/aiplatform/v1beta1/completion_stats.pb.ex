defmodule Google.Cloud.Aiplatform.V1beta1.CompletionStats do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :successful_count, 1, type: :int64, json_name: "successfulCount", deprecated: false
  field :failed_count, 2, type: :int64, json_name: "failedCount", deprecated: false
  field :incomplete_count, 3, type: :int64, json_name: "incompleteCount", deprecated: false

  field :successful_forecast_point_count, 5,
    type: :int64,
    json_name: "successfulForecastPointCount",
    deprecated: false
end