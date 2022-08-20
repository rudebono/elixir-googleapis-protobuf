defmodule Google.Cloud.Aiplatform.V1.FeatureStatsAnomaly do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :score, 1, type: :double
  field :stats_uri, 3, type: :string, json_name: "statsUri"
  field :anomaly_uri, 4, type: :string, json_name: "anomalyUri"
  field :distribution_deviation, 5, type: :double, json_name: "distributionDeviation"
  field :anomaly_detection_threshold, 9, type: :double, json_name: "anomalyDetectionThreshold"
  field :start_time, 7, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 8, type: Google.Protobuf.Timestamp, json_name: "endTime"
end