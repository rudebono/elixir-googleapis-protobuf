defmodule Google.Cloud.Talent.V4.HistogramQuery do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          histogram_query: String.t()
        }

  defstruct [:histogram_query]

  field :histogram_query, 1, type: :string, json_name: "histogramQuery"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Talent.V4.HistogramQueryResult.HistogramEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: integer
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :int64

  def transform_module(), do: nil
end

defmodule Google.Cloud.Talent.V4.HistogramQueryResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          histogram_query: String.t(),
          histogram: %{String.t() => integer}
        }

  defstruct [:histogram_query, :histogram]

  field :histogram_query, 1, type: :string, json_name: "histogramQuery"

  field :histogram, 2,
    repeated: true,
    type: Google.Cloud.Talent.V4.HistogramQueryResult.HistogramEntry,
    map: true

  def transform_module(), do: nil
end
