defmodule Google.Api.Distribution.Range do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min: float | :infinity | :negative_infinity | :nan,
          max: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:min, :max]

  field :min, 1, type: :double
  field :max, 2, type: :double
end

defmodule Google.Api.Distribution.BucketOptions.Linear do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          num_finite_buckets: integer,
          width: float | :infinity | :negative_infinity | :nan,
          offset: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:num_finite_buckets, :width, :offset]

  field :num_finite_buckets, 1, type: :int32
  field :width, 2, type: :double
  field :offset, 3, type: :double
end

defmodule Google.Api.Distribution.BucketOptions.Exponential do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          num_finite_buckets: integer,
          growth_factor: float | :infinity | :negative_infinity | :nan,
          scale: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:num_finite_buckets, :growth_factor, :scale]

  field :num_finite_buckets, 1, type: :int32
  field :growth_factor, 2, type: :double
  field :scale, 3, type: :double
end

defmodule Google.Api.Distribution.BucketOptions.Explicit do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bounds: [float | :infinity | :negative_infinity | :nan]
        }

  defstruct [:bounds]

  field :bounds, 1, repeated: true, type: :double
end

defmodule Google.Api.Distribution.BucketOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          options: {atom, any}
        }

  defstruct [:options]

  oneof :options, 0
  field :linear_buckets, 1, type: Google.Api.Distribution.BucketOptions.Linear, oneof: 0
  field :exponential_buckets, 2, type: Google.Api.Distribution.BucketOptions.Exponential, oneof: 0
  field :explicit_buckets, 3, type: Google.Api.Distribution.BucketOptions.Explicit, oneof: 0
end

defmodule Google.Api.Distribution.Exemplar do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: float | :infinity | :negative_infinity | :nan,
          timestamp: Google.Protobuf.Timestamp.t() | nil,
          attachments: [Google.Protobuf.Any.t()]
        }

  defstruct [:value, :timestamp, :attachments]

  field :value, 1, type: :double
  field :timestamp, 2, type: Google.Protobuf.Timestamp
  field :attachments, 3, repeated: true, type: Google.Protobuf.Any
end

defmodule Google.Api.Distribution do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          count: integer,
          mean: float | :infinity | :negative_infinity | :nan,
          sum_of_squared_deviation: float | :infinity | :negative_infinity | :nan,
          range: Google.Api.Distribution.Range.t() | nil,
          bucket_options: Google.Api.Distribution.BucketOptions.t() | nil,
          bucket_counts: [integer],
          exemplars: [Google.Api.Distribution.Exemplar.t()]
        }

  defstruct [
    :count,
    :mean,
    :sum_of_squared_deviation,
    :range,
    :bucket_options,
    :bucket_counts,
    :exemplars
  ]

  field :count, 1, type: :int64
  field :mean, 2, type: :double
  field :sum_of_squared_deviation, 3, type: :double
  field :range, 4, type: Google.Api.Distribution.Range
  field :bucket_options, 6, type: Google.Api.Distribution.BucketOptions
  field :bucket_counts, 7, repeated: true, type: :int64
  field :exemplars, 10, repeated: true, type: Google.Api.Distribution.Exemplar
end
