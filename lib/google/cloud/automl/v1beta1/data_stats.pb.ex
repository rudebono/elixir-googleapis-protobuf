defmodule Google.Cloud.Automl.V1beta1.DataStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          stats: {atom, any},
          distinct_value_count: integer,
          null_value_count: integer,
          valid_value_count: integer
        }

  defstruct [:stats, :distinct_value_count, :null_value_count, :valid_value_count]

  oneof :stats, 0
  field :float64_stats, 3, type: Google.Cloud.Automl.V1beta1.Float64Stats, oneof: 0
  field :string_stats, 4, type: Google.Cloud.Automl.V1beta1.StringStats, oneof: 0
  field :timestamp_stats, 5, type: Google.Cloud.Automl.V1beta1.TimestampStats, oneof: 0
  field :array_stats, 6, type: Google.Cloud.Automl.V1beta1.ArrayStats, oneof: 0
  field :struct_stats, 7, type: Google.Cloud.Automl.V1beta1.StructStats, oneof: 0
  field :category_stats, 8, type: Google.Cloud.Automl.V1beta1.CategoryStats, oneof: 0
  field :distinct_value_count, 1, type: :int64
  field :null_value_count, 2, type: :int64
  field :valid_value_count, 9, type: :int64
end

defmodule Google.Cloud.Automl.V1beta1.Float64Stats.HistogramBucket do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min: float | :infinity | :negative_infinity | :nan,
          max: float | :infinity | :negative_infinity | :nan,
          count: integer
        }

  defstruct [:min, :max, :count]

  field :min, 1, type: :double
  field :max, 2, type: :double
  field :count, 3, type: :int64
end

defmodule Google.Cloud.Automl.V1beta1.Float64Stats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mean: float | :infinity | :negative_infinity | :nan,
          standard_deviation: float | :infinity | :negative_infinity | :nan,
          quantiles: [float | :infinity | :negative_infinity | :nan],
          histogram_buckets: [Google.Cloud.Automl.V1beta1.Float64Stats.HistogramBucket.t()]
        }

  defstruct [:mean, :standard_deviation, :quantiles, :histogram_buckets]

  field :mean, 1, type: :double
  field :standard_deviation, 2, type: :double
  field :quantiles, 3, repeated: true, type: :double

  field :histogram_buckets, 4,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.Float64Stats.HistogramBucket
end

defmodule Google.Cloud.Automl.V1beta1.StringStats.UnigramStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: String.t(),
          count: integer
        }

  defstruct [:value, :count]

  field :value, 1, type: :string
  field :count, 2, type: :int64
end

defmodule Google.Cloud.Automl.V1beta1.StringStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          top_unigram_stats: [Google.Cloud.Automl.V1beta1.StringStats.UnigramStats.t()]
        }

  defstruct [:top_unigram_stats]

  field :top_unigram_stats, 1,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.StringStats.UnigramStats
end

defmodule Google.Cloud.Automl.V1beta1.TimestampStats.GranularStats.BucketsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: integer,
          value: integer
        }

  defstruct [:key, :value]

  field :key, 1, type: :int32
  field :value, 2, type: :int64
end

defmodule Google.Cloud.Automl.V1beta1.TimestampStats.GranularStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          buckets: %{integer => integer}
        }

  defstruct [:buckets]

  field :buckets, 1,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.TimestampStats.GranularStats.BucketsEntry,
    map: true
end

defmodule Google.Cloud.Automl.V1beta1.TimestampStats.GranularStatsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Automl.V1beta1.TimestampStats.GranularStats.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Automl.V1beta1.TimestampStats.GranularStats
end

defmodule Google.Cloud.Automl.V1beta1.TimestampStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          granular_stats: %{
            String.t() => Google.Cloud.Automl.V1beta1.TimestampStats.GranularStats.t() | nil
          }
        }

  defstruct [:granular_stats]

  field :granular_stats, 1,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.TimestampStats.GranularStatsEntry,
    map: true
end

defmodule Google.Cloud.Automl.V1beta1.ArrayStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          member_stats: Google.Cloud.Automl.V1beta1.DataStats.t() | nil
        }

  defstruct [:member_stats]

  field :member_stats, 2, type: Google.Cloud.Automl.V1beta1.DataStats
end

defmodule Google.Cloud.Automl.V1beta1.StructStats.FieldStatsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Automl.V1beta1.DataStats.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Automl.V1beta1.DataStats
end

defmodule Google.Cloud.Automl.V1beta1.StructStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          field_stats: %{String.t() => Google.Cloud.Automl.V1beta1.DataStats.t() | nil}
        }

  defstruct [:field_stats]

  field :field_stats, 1,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.StructStats.FieldStatsEntry,
    map: true
end

defmodule Google.Cloud.Automl.V1beta1.CategoryStats.SingleCategoryStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: String.t(),
          count: integer
        }

  defstruct [:value, :count]

  field :value, 1, type: :string
  field :count, 2, type: :int64
end

defmodule Google.Cloud.Automl.V1beta1.CategoryStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          top_category_stats: [Google.Cloud.Automl.V1beta1.CategoryStats.SingleCategoryStats.t()]
        }

  defstruct [:top_category_stats]

  field :top_category_stats, 1,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.CategoryStats.SingleCategoryStats
end

defmodule Google.Cloud.Automl.V1beta1.CorrelationStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cramers_v: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:cramers_v]

  field :cramers_v, 1, type: :double
end
