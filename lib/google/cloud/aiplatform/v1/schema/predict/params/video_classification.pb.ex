defmodule Google.Cloud.Aiplatform.V1.Schema.Predict.Params.VideoClassificationPredictionParams do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          confidence_threshold: float | :infinity | :negative_infinity | :nan,
          max_predictions: integer,
          segment_classification: boolean,
          shot_classification: boolean,
          one_sec_interval_classification: boolean
        }

  defstruct [
    :confidence_threshold,
    :max_predictions,
    :segment_classification,
    :shot_classification,
    :one_sec_interval_classification
  ]

  field :confidence_threshold, 1, type: :float
  field :max_predictions, 2, type: :int32
  field :segment_classification, 3, type: :bool
  field :shot_classification, 4, type: :bool
  field :one_sec_interval_classification, 5, type: :bool
end
