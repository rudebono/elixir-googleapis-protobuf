defmodule Google.Cloud.Retail.V2alpha.CompleteQueryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :catalog, 1, type: :string, deprecated: false
  field :query, 2, type: :string, deprecated: false
  field :visitor_id, 7, type: :string, json_name: "visitorId"
  field :language_codes, 3, repeated: true, type: :string, json_name: "languageCodes"
  field :device_type, 4, type: :string, json_name: "deviceType"
  field :dataset, 6, type: :string
  field :max_suggestions, 5, type: :int32, json_name: "maxSuggestions"
  field :enable_attribute_suggestions, 9, type: :bool, json_name: "enableAttributeSuggestions"
  field :entity, 10, type: :string
end

defmodule Google.Cloud.Retail.V2alpha.CompleteQueryResponse.CompletionResult.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Retail.V2alpha.CustomAttribute
end

defmodule Google.Cloud.Retail.V2alpha.CompleteQueryResponse.CompletionResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :suggestion, 1, type: :string

  field :attributes, 2,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.CompleteQueryResponse.CompletionResult.AttributesEntry,
    map: true

  field :facets, 3, repeated: true, type: Google.Cloud.Retail.V2alpha.SearchResponse.Facet
  field :total_product_count, 4, type: :int32, json_name: "totalProductCount"
end

defmodule Google.Cloud.Retail.V2alpha.CompleteQueryResponse.RecentSearchResult do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :recent_search, 1, type: :string, json_name: "recentSearch"
end

defmodule Google.Cloud.Retail.V2alpha.CompleteQueryResponse.AttributeResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :suggestions, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Retail.V2alpha.CompleteQueryResponse.AttributeResultsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Retail.V2alpha.CompleteQueryResponse.AttributeResult
end

defmodule Google.Cloud.Retail.V2alpha.CompleteQueryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :completion_results, 1,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.CompleteQueryResponse.CompletionResult,
    json_name: "completionResults"

  field :attribution_token, 2, type: :string, json_name: "attributionToken"

  field :recent_search_results, 3,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.CompleteQueryResponse.RecentSearchResult,
    json_name: "recentSearchResults",
    deprecated: true

  field :attribute_results, 4,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.CompleteQueryResponse.AttributeResultsEntry,
    json_name: "attributeResults",
    map: true
end

defmodule Google.Cloud.Retail.V2alpha.CompletionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.retail.v2alpha.CompletionService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CompleteQuery,
      Google.Cloud.Retail.V2alpha.CompleteQueryRequest,
      Google.Cloud.Retail.V2alpha.CompleteQueryResponse

  rpc :ImportCompletionData,
      Google.Cloud.Retail.V2alpha.ImportCompletionDataRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Retail.V2alpha.CompletionService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Retail.V2alpha.CompletionService.Service
end
