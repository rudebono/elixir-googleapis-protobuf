defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.QueryExpansionSpec.Condition do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CONDITION_UNSPECIFIED, 0
  field :DISABLED, 1
  field :AUTO, 2
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.SpellCorrectionSpec.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :SUGGESTION_ONLY, 1
  field :AUTO, 2
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.QueryExpansionSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :condition, 1,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.QueryExpansionSpec.Condition,
    enum: true
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.SpellCorrectionSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :mode, 1,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.SpellCorrectionSpec.Mode,
    enum: true
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.ContentSearchSpec.SnippetSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :max_snippet_count, 1, type: :int32, json_name: "maxSnippetCount"
  field :reference_only, 2, type: :bool, json_name: "referenceOnly"
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.ContentSearchSpec.SummarySpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :summary_result_count, 1, type: :int32, json_name: "summaryResultCount"
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.ContentSearchSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :snippet_spec, 1,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.ContentSearchSpec.SnippetSpec,
    json_name: "snippetSpec"

  field :summary_spec, 2,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.ContentSearchSpec.SummarySpec,
    json_name: "summarySpec"
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.ParamsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.UserLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :serving_config, 1, type: :string, json_name: "servingConfig", deprecated: false
  field :branch, 2, type: :string, deprecated: false
  field :query, 3, type: :string
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 5, type: :string, json_name: "pageToken"
  field :offset, 6, type: :int32
  field :user_info, 21, type: Google.Cloud.Discoveryengine.V1.UserInfo, json_name: "userInfo"

  field :params, 11,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.ParamsEntry,
    map: true

  field :query_expansion_spec, 13,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.QueryExpansionSpec,
    json_name: "queryExpansionSpec"

  field :spell_correction_spec, 14,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.SpellCorrectionSpec,
    json_name: "spellCorrectionSpec"

  field :user_pseudo_id, 15, type: :string, json_name: "userPseudoId"

  field :content_search_spec, 24,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.ContentSearchSpec,
    json_name: "contentSearchSpec"

  field :safe_search, 20, type: :bool, json_name: "safeSearch"

  field :user_labels, 22,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.UserLabelsEntry,
    json_name: "userLabels",
    map: true
end

defmodule Google.Cloud.Discoveryengine.V1.SearchResponse.SearchResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :string
  field :document, 2, type: Google.Cloud.Discoveryengine.V1.Document
end

defmodule Google.Cloud.Discoveryengine.V1.SearchResponse.Summary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :summary_text, 1, type: :string, json_name: "summaryText"
end

defmodule Google.Cloud.Discoveryengine.V1.SearchResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.SearchResponse.SearchResult

  field :total_size, 3, type: :int32, json_name: "totalSize"
  field :attribution_token, 4, type: :string, json_name: "attributionToken"
  field :next_page_token, 5, type: :string, json_name: "nextPageToken"
  field :corrected_query, 7, type: :string, json_name: "correctedQuery"
  field :summary, 9, type: Google.Cloud.Discoveryengine.V1.SearchResponse.Summary
end

defmodule Google.Cloud.Discoveryengine.V1.SearchService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1.SearchService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :Search,
      Google.Cloud.Discoveryengine.V1.SearchRequest,
      Google.Cloud.Discoveryengine.V1.SearchResponse
end

defmodule Google.Cloud.Discoveryengine.V1.SearchService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1.SearchService.Service
end