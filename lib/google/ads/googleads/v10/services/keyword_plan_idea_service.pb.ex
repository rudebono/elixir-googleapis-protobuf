defmodule Google.Ads.Googleads.V10.Services.GenerateKeywordIdeasRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :seed, 0

  field :customer_id, 1, type: :string, json_name: "customerId"
  field :language, 14, proto3_optional: true, type: :string
  field :geo_target_constants, 15, repeated: true, type: :string, json_name: "geoTargetConstants"
  field :include_adult_keywords, 10, type: :bool, json_name: "includeAdultKeywords"
  field :page_token, 12, type: :string, json_name: "pageToken"
  field :page_size, 13, type: :int32, json_name: "pageSize"

  field :keyword_plan_network, 9,
    type: Google.Ads.Googleads.V10.Enums.KeywordPlanNetworkEnum.KeywordPlanNetwork,
    json_name: "keywordPlanNetwork",
    enum: true

  field :keyword_annotation, 17,
    repeated: true,
    type:
      Google.Ads.Googleads.V10.Enums.KeywordPlanKeywordAnnotationEnum.KeywordPlanKeywordAnnotation,
    json_name: "keywordAnnotation",
    enum: true

  field :aggregate_metrics, 16,
    type: Google.Ads.Googleads.V10.Common.KeywordPlanAggregateMetrics,
    json_name: "aggregateMetrics"

  field :historical_metrics_options, 18,
    type: Google.Ads.Googleads.V10.Common.HistoricalMetricsOptions,
    json_name: "historicalMetricsOptions"

  field :keyword_and_url_seed, 2,
    type: Google.Ads.Googleads.V10.Services.KeywordAndUrlSeed,
    json_name: "keywordAndUrlSeed",
    oneof: 0

  field :keyword_seed, 3,
    type: Google.Ads.Googleads.V10.Services.KeywordSeed,
    json_name: "keywordSeed",
    oneof: 0

  field :url_seed, 5,
    type: Google.Ads.Googleads.V10.Services.UrlSeed,
    json_name: "urlSeed",
    oneof: 0

  field :site_seed, 11,
    type: Google.Ads.Googleads.V10.Services.SiteSeed,
    json_name: "siteSeed",
    oneof: 0
end

defmodule Google.Ads.Googleads.V10.Services.KeywordAndUrlSeed do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :url, 3, proto3_optional: true, type: :string
  field :keywords, 4, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V10.Services.KeywordSeed do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :keywords, 2, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V10.Services.SiteSeed do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :site, 2, proto3_optional: true, type: :string
end

defmodule Google.Ads.Googleads.V10.Services.UrlSeed do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :url, 2, proto3_optional: true, type: :string
end

defmodule Google.Ads.Googleads.V10.Services.GenerateKeywordIdeaResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.GenerateKeywordIdeaResult

  field :aggregate_metric_results, 4,
    type: Google.Ads.Googleads.V10.Common.KeywordPlanAggregateMetricResults,
    json_name: "aggregateMetricResults"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int64, json_name: "totalSize"
end

defmodule Google.Ads.Googleads.V10.Services.GenerateKeywordIdeaResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :text, 5, proto3_optional: true, type: :string

  field :keyword_idea_metrics, 3,
    type: Google.Ads.Googleads.V10.Common.KeywordPlanHistoricalMetrics,
    json_name: "keywordIdeaMetrics"

  field :keyword_annotations, 6,
    type: Google.Ads.Googleads.V10.Common.KeywordAnnotations,
    json_name: "keywordAnnotations"

  field :close_variants, 7, repeated: true, type: :string, json_name: "closeVariants"
end

defmodule Google.Ads.Googleads.V10.Services.GenerateKeywordHistoricalMetricsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId"
  field :keywords, 2, repeated: true, type: :string

  field :historical_metrics_options, 3,
    type: Google.Ads.Googleads.V10.Common.HistoricalMetricsOptions,
    json_name: "historicalMetricsOptions"
end

defmodule Google.Ads.Googleads.V10.Services.GenerateKeywordHistoricalMetricsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.GenerateKeywordHistoricalMetricsResult
end

defmodule Google.Ads.Googleads.V10.Services.GenerateKeywordHistoricalMetricsResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :text, 1, proto3_optional: true, type: :string
  field :close_variants, 3, repeated: true, type: :string, json_name: "closeVariants"

  field :keyword_metrics, 2,
    type: Google.Ads.Googleads.V10.Common.KeywordPlanHistoricalMetrics,
    json_name: "keywordMetrics"
end

defmodule Google.Ads.Googleads.V10.Services.KeywordPlanIdeaService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v10.services.KeywordPlanIdeaService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :GenerateKeywordIdeas,
      Google.Ads.Googleads.V10.Services.GenerateKeywordIdeasRequest,
      Google.Ads.Googleads.V10.Services.GenerateKeywordIdeaResponse

  rpc :GenerateKeywordHistoricalMetrics,
      Google.Ads.Googleads.V10.Services.GenerateKeywordHistoricalMetricsRequest,
      Google.Ads.Googleads.V10.Services.GenerateKeywordHistoricalMetricsResponse
end

defmodule Google.Ads.Googleads.V10.Services.KeywordPlanIdeaService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V10.Services.KeywordPlanIdeaService.Service
end