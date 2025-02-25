defmodule Google.Api.Servicecontrol.V1.Distribution.LinearBuckets do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :num_finite_buckets, 1, type: :int32, json_name: "numFiniteBuckets"
  field :width, 2, type: :double
  field :offset, 3, type: :double
end

defmodule Google.Api.Servicecontrol.V1.Distribution.ExponentialBuckets do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :num_finite_buckets, 1, type: :int32, json_name: "numFiniteBuckets"
  field :growth_factor, 2, type: :double, json_name: "growthFactor"
  field :scale, 3, type: :double
end

defmodule Google.Api.Servicecontrol.V1.Distribution.ExplicitBuckets do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :bounds, 1, repeated: true, type: :double
end

defmodule Google.Api.Servicecontrol.V1.Distribution do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :bucket_option, 0

  field :count, 1, type: :int64
  field :mean, 2, type: :double
  field :minimum, 3, type: :double
  field :maximum, 4, type: :double
  field :sum_of_squared_deviation, 5, type: :double, json_name: "sumOfSquaredDeviation"
  field :bucket_counts, 6, repeated: true, type: :int64, json_name: "bucketCounts"

  field :linear_buckets, 7,
    type: Google.Api.Servicecontrol.V1.Distribution.LinearBuckets,
    json_name: "linearBuckets",
    oneof: 0

  field :exponential_buckets, 8,
    type: Google.Api.Servicecontrol.V1.Distribution.ExponentialBuckets,
    json_name: "exponentialBuckets",
    oneof: 0

  field :explicit_buckets, 9,
    type: Google.Api.Servicecontrol.V1.Distribution.ExplicitBuckets,
    json_name: "explicitBuckets",
    oneof: 0

  field :exemplars, 10, repeated: true, type: Google.Api.Distribution.Exemplar
end
