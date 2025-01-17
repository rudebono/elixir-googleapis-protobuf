defmodule Google.Cloud.Talent.V4beta1.HistogramQuery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :histogram_query, 1, type: :string, json_name: "histogramQuery"
end

defmodule Google.Cloud.Talent.V4beta1.HistogramQueryResult.HistogramEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :int64
end

defmodule Google.Cloud.Talent.V4beta1.HistogramQueryResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :histogram_query, 1, type: :string, json_name: "histogramQuery"

  field :histogram, 2,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.HistogramQueryResult.HistogramEntry,
    map: true
end
