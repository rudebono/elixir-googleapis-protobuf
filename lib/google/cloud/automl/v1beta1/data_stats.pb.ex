defmodule Google.Cloud.Automl.V1beta1.DataStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :stats, 0

  field :float64_stats, 3,
    type: Google.Cloud.Automl.V1beta1.Float64Stats,
    json_name: "float64Stats",
    oneof: 0

  field :string_stats, 4,
    type: Google.Cloud.Automl.V1beta1.StringStats,
    json_name: "stringStats",
    oneof: 0

  field :timestamp_stats, 5,
    type: Google.Cloud.Automl.V1beta1.TimestampStats,
    json_name: "timestampStats",
    oneof: 0

  field :array_stats, 6,
    type: Google.Cloud.Automl.V1beta1.ArrayStats,
    json_name: "arrayStats",
    oneof: 0

  field :struct_stats, 7,
    type: Google.Cloud.Automl.V1beta1.StructStats,
    json_name: "structStats",
    oneof: 0

  field :category_stats, 8,
    type: Google.Cloud.Automl.V1beta1.CategoryStats,
    json_name: "categoryStats",
    oneof: 0

  field :distinct_value_count, 1, type: :int64, json_name: "distinctValueCount"
  field :null_value_count, 2, type: :int64, json_name: "nullValueCount"
  field :valid_value_count, 9, type: :int64, json_name: "validValueCount"
end

defmodule Google.Cloud.Automl.V1beta1.Float64Stats.HistogramBucket do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :min, 1, type: :double
  field :max, 2, type: :double
  field :count, 3, type: :int64
end

defmodule Google.Cloud.Automl.V1beta1.Float64Stats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :mean, 1, type: :double
  field :standard_deviation, 2, type: :double, json_name: "standardDeviation"
  field :quantiles, 3, repeated: true, type: :double

  field :histogram_buckets, 4,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.Float64Stats.HistogramBucket,
    json_name: "histogramBuckets"
end

defmodule Google.Cloud.Automl.V1beta1.StringStats.UnigramStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :value, 1, type: :string
  field :count, 2, type: :int64
end

defmodule Google.Cloud.Automl.V1beta1.StringStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :top_unigram_stats, 1,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.StringStats.UnigramStats,
    json_name: "topUnigramStats"
end

defmodule Google.Cloud.Automl.V1beta1.TimestampStats.GranularStats.BucketsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :int32
  field :value, 2, type: :int64
end

defmodule Google.Cloud.Automl.V1beta1.TimestampStats.GranularStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :buckets, 1,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.TimestampStats.GranularStats.BucketsEntry,
    map: true
end

defmodule Google.Cloud.Automl.V1beta1.TimestampStats.GranularStatsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Automl.V1beta1.TimestampStats.GranularStats
end

defmodule Google.Cloud.Automl.V1beta1.TimestampStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :granular_stats, 1,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.TimestampStats.GranularStatsEntry,
    json_name: "granularStats",
    map: true
end

defmodule Google.Cloud.Automl.V1beta1.ArrayStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :member_stats, 2, type: Google.Cloud.Automl.V1beta1.DataStats, json_name: "memberStats"
end

defmodule Google.Cloud.Automl.V1beta1.StructStats.FieldStatsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Automl.V1beta1.DataStats
end

defmodule Google.Cloud.Automl.V1beta1.StructStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :field_stats, 1,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.StructStats.FieldStatsEntry,
    json_name: "fieldStats",
    map: true
end

defmodule Google.Cloud.Automl.V1beta1.CategoryStats.SingleCategoryStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :value, 1, type: :string
  field :count, 2, type: :int64
end

defmodule Google.Cloud.Automl.V1beta1.CategoryStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :top_category_stats, 1,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.CategoryStats.SingleCategoryStats,
    json_name: "topCategoryStats"
end

defmodule Google.Cloud.Automl.V1beta1.CorrelationStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :cramers_v, 1, type: :double, json_name: "cramersV"
end