defmodule Google.Cloud.Contentwarehouse.V1.HistogramQueryPropertyNameFilter.HistogramYAxis do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :HISTOGRAM_YAXIS_DOCUMENT, 0
  field :HISTOGRAM_YAXIS_PROPERTY, 1
end

defmodule Google.Cloud.Contentwarehouse.V1.HistogramQuery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :histogram_query, 1, type: :string, json_name: "histogramQuery"
  field :require_precise_result_size, 2, type: :bool, json_name: "requirePreciseResultSize"

  field :filters, 3,
    type: Google.Cloud.Contentwarehouse.V1.HistogramQueryPropertyNameFilter,
    deprecated: false
end

defmodule Google.Cloud.Contentwarehouse.V1.HistogramQueryPropertyNameFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :document_schemas, 1,
    repeated: true,
    type: :string,
    json_name: "documentSchemas",
    deprecated: false

  field :property_names, 2, repeated: true, type: :string, json_name: "propertyNames"

  field :y_axis, 3,
    type: Google.Cloud.Contentwarehouse.V1.HistogramQueryPropertyNameFilter.HistogramYAxis,
    json_name: "yAxis",
    enum: true
end

defmodule Google.Cloud.Contentwarehouse.V1.HistogramQueryResult.HistogramEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :int64
end

defmodule Google.Cloud.Contentwarehouse.V1.HistogramQueryResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :histogram_query, 1, type: :string, json_name: "histogramQuery"

  field :histogram, 2,
    repeated: true,
    type: Google.Cloud.Contentwarehouse.V1.HistogramQueryResult.HistogramEntry,
    map: true
end
