defmodule Google.Cloud.Geminidataanalytics.V1alpha.RetrieveBigQueryTableContextRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project, 5, type: :string, deprecated: true
  field :parent, 6, type: :string, deprecated: false
  field :query, 2, type: :string, deprecated: false

  field :direct_lookup, 3,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1alpha.DirectLookup,
    json_name: "directLookup",
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.RetrieveBigQueryTableContextResponse.Candidate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :linked_resource, 1, type: :string, json_name: "linkedResource"
  field :content, 2, type: :string
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.RetrieveBigQueryTableContextResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :candidates, 1,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1alpha.RetrieveBigQueryTableContextResponse.Candidate,
    deprecated: true

  field :table_candidates, 2,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1alpha.TableCandidate,
    json_name: "tableCandidates"
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.RetrieveBigQueryTableContextsFromRecentTablesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :query, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.RetrieveBigQueryTableContextsFromRecentTablesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :table_candidates, 1,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1alpha.TableCandidate,
    json_name: "tableCandidates"
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.RetrieveBigQueryTableSuggestedDescriptionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :direct_lookup, 2,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1alpha.DirectLookup,
    json_name: "directLookup",
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.RetrieveBigQueryTableSuggestedDescriptionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :table_candidates, 1,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1alpha.TableCandidate,
    json_name: "tableCandidates"
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.RetrieveBigQueryRecentRelevantTablesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :query, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.RetrieveBigQueryRecentRelevantTablesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :table_ids, 1, repeated: true, type: :string, json_name: "tableIds"
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.DirectLookup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :big_query_table_reference, 1,
    type: Google.Cloud.Geminidataanalytics.V1alpha.BigQueryTableReference,
    json_name: "bigQueryTableReference",
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.TableCandidate.FieldSuggestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :field, 1, type: :string
  field :suggested_description, 2, type: :string, json_name: "suggestedDescription"

  field :nested, 3,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1alpha.TableCandidate.FieldSuggestion
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.TableCandidate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :linked_resource, 1, type: :string, json_name: "linkedResource"
  field :icl_string, 2, type: :string, json_name: "iclString"

  field :field_suggestions, 3,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1alpha.TableCandidate.FieldSuggestion,
    json_name: "fieldSuggestions"
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ContextRetrievalService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.geminidataanalytics.v1alpha.ContextRetrievalService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :RetrieveBigQueryTableContext,
      Google.Cloud.Geminidataanalytics.V1alpha.RetrieveBigQueryTableContextRequest,
      Google.Cloud.Geminidataanalytics.V1alpha.RetrieveBigQueryTableContextResponse

  rpc :RetrieveBigQueryTableContextsFromRecentTables,
      Google.Cloud.Geminidataanalytics.V1alpha.RetrieveBigQueryTableContextsFromRecentTablesRequest,
      Google.Cloud.Geminidataanalytics.V1alpha.RetrieveBigQueryTableContextsFromRecentTablesResponse

  rpc :RetrieveBigQueryTableSuggestedDescriptions,
      Google.Cloud.Geminidataanalytics.V1alpha.RetrieveBigQueryTableSuggestedDescriptionsRequest,
      Google.Cloud.Geminidataanalytics.V1alpha.RetrieveBigQueryTableSuggestedDescriptionsResponse

  rpc :RetrieveBigQueryRecentRelevantTables,
      Google.Cloud.Geminidataanalytics.V1alpha.RetrieveBigQueryRecentRelevantTablesRequest,
      Google.Cloud.Geminidataanalytics.V1alpha.RetrieveBigQueryRecentRelevantTablesResponse
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ContextRetrievalService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Geminidataanalytics.V1alpha.ContextRetrievalService.Service
end
