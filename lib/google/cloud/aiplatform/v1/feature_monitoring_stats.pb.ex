defmodule Google.Cloud.Aiplatform.V1.FeatureStatsAnomaly do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          score: float | :infinity | :negative_infinity | :nan,
          stats_uri: String.t(),
          anomaly_uri: String.t(),
          distribution_deviation: float | :infinity | :negative_infinity | :nan,
          anomaly_detection_threshold: float | :infinity | :negative_infinity | :nan,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [
    :score,
    :stats_uri,
    :anomaly_uri,
    :distribution_deviation,
    :anomaly_detection_threshold,
    :start_time,
    :end_time
  ]

  field :score, 1, type: :double
  field :stats_uri, 3, type: :string, json_name: "statsUri"
  field :anomaly_uri, 4, type: :string, json_name: "anomalyUri"
  field :distribution_deviation, 5, type: :double, json_name: "distributionDeviation"
  field :anomaly_detection_threshold, 9, type: :double, json_name: "anomalyDetectionThreshold"
  field :start_time, 7, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 8, type: Google.Protobuf.Timestamp, json_name: "endTime"

  def transform_module(), do: nil
end
