defmodule Google.Analytics.Admin.V1alpha.ExpandedDataSetFilter.StringFilter.MatchType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :MATCH_TYPE_UNSPECIFIED, 0
  field :EXACT, 1
  field :CONTAINS, 2
end

defmodule Google.Analytics.Admin.V1alpha.ExpandedDataSetFilter.StringFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :match_type, 1,
    type: Google.Analytics.Admin.V1alpha.ExpandedDataSetFilter.StringFilter.MatchType,
    json_name: "matchType",
    enum: true,
    deprecated: false

  field :value, 2, type: :string, deprecated: false
  field :case_sensitive, 3, type: :bool, json_name: "caseSensitive", deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.ExpandedDataSetFilter.InListFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :values, 1, repeated: true, type: :string, deprecated: false
  field :case_sensitive, 2, type: :bool, json_name: "caseSensitive", deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.ExpandedDataSetFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :one_filter, 0

  field :string_filter, 2,
    type: Google.Analytics.Admin.V1alpha.ExpandedDataSetFilter.StringFilter,
    json_name: "stringFilter",
    oneof: 0

  field :in_list_filter, 3,
    type: Google.Analytics.Admin.V1alpha.ExpandedDataSetFilter.InListFilter,
    json_name: "inListFilter",
    oneof: 0

  field :field_name, 1, type: :string, json_name: "fieldName", deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.ExpandedDataSetFilterExpression do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :expr, 0

  field :and_group, 1,
    type: Google.Analytics.Admin.V1alpha.ExpandedDataSetFilterExpressionList,
    json_name: "andGroup",
    oneof: 0

  field :not_expression, 2,
    type: Google.Analytics.Admin.V1alpha.ExpandedDataSetFilterExpression,
    json_name: "notExpression",
    oneof: 0

  field :filter, 3, type: Google.Analytics.Admin.V1alpha.ExpandedDataSetFilter, oneof: 0
end

defmodule Google.Analytics.Admin.V1alpha.ExpandedDataSetFilterExpressionList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter_expressions, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.ExpandedDataSetFilterExpression,
    json_name: "filterExpressions"
end

defmodule Google.Analytics.Admin.V1alpha.ExpandedDataSet do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false

  field :dimension_names, 4,
    repeated: true,
    type: :string,
    json_name: "dimensionNames",
    deprecated: false

  field :metric_names, 5,
    repeated: true,
    type: :string,
    json_name: "metricNames",
    deprecated: false

  field :dimension_filter_expression, 6,
    type: Google.Analytics.Admin.V1alpha.ExpandedDataSetFilterExpression,
    json_name: "dimensionFilterExpression",
    deprecated: false

  field :data_collection_start_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "dataCollectionStartTime",
    deprecated: false
end