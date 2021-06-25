defmodule Google.Api.Servicecontrol.V1.Distribution.LinearBuckets do
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

defmodule Google.Api.Servicecontrol.V1.Distribution.ExponentialBuckets do
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

defmodule Google.Api.Servicecontrol.V1.Distribution.ExplicitBuckets do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bounds: [float | :infinity | :negative_infinity | :nan]
        }

  defstruct [:bounds]

  field :bounds, 1, repeated: true, type: :double
end

defmodule Google.Api.Servicecontrol.V1.Distribution do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket_option: {atom, any},
          count: integer,
          mean: float | :infinity | :negative_infinity | :nan,
          minimum: float | :infinity | :negative_infinity | :nan,
          maximum: float | :infinity | :negative_infinity | :nan,
          sum_of_squared_deviation: float | :infinity | :negative_infinity | :nan,
          bucket_counts: [integer],
          exemplars: [Google.Api.Distribution.Exemplar.t()]
        }

  defstruct [
    :bucket_option,
    :count,
    :mean,
    :minimum,
    :maximum,
    :sum_of_squared_deviation,
    :bucket_counts,
    :exemplars
  ]

  oneof :bucket_option, 0
  field :count, 1, type: :int64
  field :mean, 2, type: :double
  field :minimum, 3, type: :double
  field :maximum, 4, type: :double
  field :sum_of_squared_deviation, 5, type: :double
  field :bucket_counts, 6, repeated: true, type: :int64

  field :linear_buckets, 7,
    type: Google.Api.Servicecontrol.V1.Distribution.LinearBuckets,
    oneof: 0

  field :exponential_buckets, 8,
    type: Google.Api.Servicecontrol.V1.Distribution.ExponentialBuckets,
    oneof: 0

  field :explicit_buckets, 9,
    type: Google.Api.Servicecontrol.V1.Distribution.ExplicitBuckets,
    oneof: 0

  field :exemplars, 10, repeated: true, type: Google.Api.Distribution.Exemplar
end
