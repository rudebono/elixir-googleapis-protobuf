defmodule Google.Ads.Googleads.V22.Resources.DistanceView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :distance_bucket, 2,
    type: Google.Ads.Googleads.V22.Enums.DistanceBucketEnum.DistanceBucket,
    json_name: "distanceBucket",
    enum: true,
    deprecated: false

  field :metric_system, 4,
    proto3_optional: true,
    type: :bool,
    json_name: "metricSystem",
    deprecated: false
end
