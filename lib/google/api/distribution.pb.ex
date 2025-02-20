defmodule Google.Api.Distribution.Range do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :min, 1, type: :double
  field :max, 2, type: :double
end

defmodule Google.Api.Distribution.BucketOptions.Linear do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :num_finite_buckets, 1, type: :int32, json_name: "numFiniteBuckets"
  field :width, 2, type: :double
  field :offset, 3, type: :double
end

defmodule Google.Api.Distribution.BucketOptions.Exponential do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :num_finite_buckets, 1, type: :int32, json_name: "numFiniteBuckets"
  field :growth_factor, 2, type: :double, json_name: "growthFactor"
  field :scale, 3, type: :double
end

defmodule Google.Api.Distribution.BucketOptions.Explicit do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :bounds, 1, repeated: true, type: :double
end

defmodule Google.Api.Distribution.BucketOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :options, 0

  field :linear_buckets, 1,
    type: Google.Api.Distribution.BucketOptions.Linear,
    json_name: "linearBuckets",
    oneof: 0

  field :exponential_buckets, 2,
    type: Google.Api.Distribution.BucketOptions.Exponential,
    json_name: "exponentialBuckets",
    oneof: 0

  field :explicit_buckets, 3,
    type: Google.Api.Distribution.BucketOptions.Explicit,
    json_name: "explicitBuckets",
    oneof: 0
end

defmodule Google.Api.Distribution.Exemplar do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :value, 1, type: :double
  field :timestamp, 2, type: Google.Protobuf.Timestamp
  field :attachments, 3, repeated: true, type: Google.Protobuf.Any
end

defmodule Google.Api.Distribution do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :count, 1, type: :int64
  field :mean, 2, type: :double
  field :sum_of_squared_deviation, 3, type: :double, json_name: "sumOfSquaredDeviation"
  field :range, 4, type: Google.Api.Distribution.Range

  field :bucket_options, 6,
    type: Google.Api.Distribution.BucketOptions,
    json_name: "bucketOptions"

  field :bucket_counts, 7, repeated: true, type: :int64, json_name: "bucketCounts"
  field :exemplars, 10, repeated: true, type: Google.Api.Distribution.Exemplar
end
