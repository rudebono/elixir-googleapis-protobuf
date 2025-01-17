defmodule Google.Cloud.Retail.V2alpha.BranchView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :BRANCH_VIEW_UNSPECIFIED, 0
  field :BRANCH_VIEW_BASIC, 1
  field :BRANCH_VIEW_FULL, 2
end

defmodule Google.Cloud.Retail.V2alpha.Branch.ProductCountStatistic.ProductCountScope do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :PRODUCT_COUNT_SCOPE_UNSPECIFIED, 0
  field :ALL_PRODUCTS, 1
  field :LAST_24_HOUR_UPDATE, 2
end

defmodule Google.Cloud.Retail.V2alpha.Branch.ProductCountStatistic.CountsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :int64
end

defmodule Google.Cloud.Retail.V2alpha.Branch.ProductCountStatistic do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :scope, 1,
    type: Google.Cloud.Retail.V2alpha.Branch.ProductCountStatistic.ProductCountScope,
    enum: true

  field :counts, 2,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.Branch.ProductCountStatistic.CountsEntry,
    map: true
end

defmodule Google.Cloud.Retail.V2alpha.Branch.QualityMetric do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :requirement_key, 1, type: :string, json_name: "requirementKey"
  field :qualified_product_count, 2, type: :int32, json_name: "qualifiedProductCount"
  field :unqualified_product_count, 3, type: :int32, json_name: "unqualifiedProductCount"

  field :suggested_quality_percent_threshold, 4,
    type: :double,
    json_name: "suggestedQualityPercentThreshold"

  field :unqualified_sample_products, 5,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.Product,
    json_name: "unqualifiedSampleProducts"
end

defmodule Google.Cloud.Retail.V2alpha.Branch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :is_default, 3, type: :bool, json_name: "isDefault", deprecated: false

  field :last_product_import_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "lastProductImportTime",
    deprecated: false

  field :product_count_stats, 7,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.Branch.ProductCountStatistic,
    json_name: "productCountStats",
    deprecated: false

  field :quality_metrics, 6,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.Branch.QualityMetric,
    json_name: "qualityMetrics",
    deprecated: false
end
