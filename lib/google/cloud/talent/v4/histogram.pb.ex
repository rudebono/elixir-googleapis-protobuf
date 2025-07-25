defmodule Google.Cloud.Talent.V4.HistogramQuery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :histogram_query, 1, type: :string, json_name: "histogramQuery"
end

defmodule Google.Cloud.Talent.V4.HistogramQueryResult.HistogramEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :int64
end

defmodule Google.Cloud.Talent.V4.HistogramQueryResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :histogram_query, 1, type: :string, json_name: "histogramQuery"

  field :histogram, 2,
    repeated: true,
    type: Google.Cloud.Talent.V4.HistogramQueryResult.HistogramEntry,
    map: true
end
