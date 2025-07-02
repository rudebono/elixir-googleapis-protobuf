defmodule Google.Cloud.Geminidataanalytics.V1beta.RetrieveBigQueryTableContextRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project, 5, type: :string, deprecated: true
  field :parent, 6, type: :string, deprecated: false
  field :query, 2, type: :string, deprecated: false

  field :direct_lookup, 3,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1beta.DirectLookup,
    json_name: "directLookup",
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.RetrieveBigQueryTableContextResponse.Candidate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :linked_resource, 1, type: :string, json_name: "linkedResource"
  field :content, 2, type: :string
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.RetrieveBigQueryTableContextResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :candidates, 1,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1beta.RetrieveBigQueryTableContextResponse.Candidate,
    deprecated: true

  field :table_candidates, 2,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1beta.TableCandidate,
    json_name: "tableCandidates"
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.RetrieveBigQueryTableContextsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :query, 2, type: :string, deprecated: false

  field :direct_lookups, 3,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1beta.DirectLookup,
    json_name: "directLookups",
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.RetrieveBigQueryTableContextsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :table_candidates, 1,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1beta.TableCandidate,
    json_name: "tableCandidates"
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.RetrieveBigQueryTableContextsFromRecentTablesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :query, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.RetrieveBigQueryTableContextsFromRecentTablesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :table_candidates, 1,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1beta.TableCandidate,
    json_name: "tableCandidates"
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.RetrieveBigQueryTableSuggestedDescriptionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :direct_lookup, 2,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1beta.DirectLookup,
    json_name: "directLookup",
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.RetrieveBigQueryTableSuggestedDescriptionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :table_candidates, 1,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1beta.TableCandidate,
    json_name: "tableCandidates"
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.RetrieveBigQueryTableSuggestedExamplesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :direct_lookup, 2,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1beta.DirectLookup,
    json_name: "directLookup",
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.RetrieveBigQueryTableSuggestedExamplesResponse.ExampleSuggestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :nl_query, 1, type: :string, json_name: "nlQuery"
  field :sql, 2, type: :string

  field :linked_bigquery_tables, 3,
    repeated: true,
    type: :string,
    json_name: "linkedBigqueryTables"
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.RetrieveBigQueryTableSuggestedExamplesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :example_suggestions, 2,
    repeated: true,
    type:
      Google.Cloud.Geminidataanalytics.V1beta.RetrieveBigQueryTableSuggestedExamplesResponse.ExampleSuggestion,
    json_name: "exampleSuggestions"
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.RetrieveBigQueryRecentRelevantTablesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :query, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.RetrieveBigQueryRecentRelevantTablesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :table_ids, 1, repeated: true, type: :string, json_name: "tableIds"
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.DirectLookup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :big_query_table_reference, 1,
    type: Google.Cloud.Geminidataanalytics.V1beta.BigQueryTableReference,
    json_name: "bigQueryTableReference",
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.TableCandidate.FieldSuggestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :field, 1, type: :string
  field :suggested_description, 2, type: :string, json_name: "suggestedDescription"

  field :nested, 3,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1beta.TableCandidate.FieldSuggestion
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.TableCandidate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :linked_resource, 1, type: :string, json_name: "linkedResource"
  field :icl_string, 2, type: :string, json_name: "iclString"

  field :field_suggestions, 3,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1beta.TableCandidate.FieldSuggestion,
    json_name: "fieldSuggestions"
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.ContextRetrievalService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.geminidataanalytics.v1beta.ContextRetrievalService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :RetrieveBigQueryTableContext,
      Google.Cloud.Geminidataanalytics.V1beta.RetrieveBigQueryTableContextRequest,
      Google.Cloud.Geminidataanalytics.V1beta.RetrieveBigQueryTableContextResponse

  rpc :RetrieveBigQueryTableContexts,
      Google.Cloud.Geminidataanalytics.V1beta.RetrieveBigQueryTableContextsRequest,
      Google.Cloud.Geminidataanalytics.V1beta.RetrieveBigQueryTableContextsResponse

  rpc :RetrieveBigQueryTableContextsFromRecentTables,
      Google.Cloud.Geminidataanalytics.V1beta.RetrieveBigQueryTableContextsFromRecentTablesRequest,
      Google.Cloud.Geminidataanalytics.V1beta.RetrieveBigQueryTableContextsFromRecentTablesResponse

  rpc :RetrieveBigQueryTableSuggestedDescriptions,
      Google.Cloud.Geminidataanalytics.V1beta.RetrieveBigQueryTableSuggestedDescriptionsRequest,
      Google.Cloud.Geminidataanalytics.V1beta.RetrieveBigQueryTableSuggestedDescriptionsResponse

  rpc :RetrieveBigQueryTableSuggestedExamples,
      Google.Cloud.Geminidataanalytics.V1beta.RetrieveBigQueryTableSuggestedExamplesRequest,
      Google.Cloud.Geminidataanalytics.V1beta.RetrieveBigQueryTableSuggestedExamplesResponse

  rpc :RetrieveBigQueryRecentRelevantTables,
      Google.Cloud.Geminidataanalytics.V1beta.RetrieveBigQueryRecentRelevantTablesRequest,
      Google.Cloud.Geminidataanalytics.V1beta.RetrieveBigQueryRecentRelevantTablesResponse
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.ContextRetrievalService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Geminidataanalytics.V1beta.ContextRetrievalService.Service
end
