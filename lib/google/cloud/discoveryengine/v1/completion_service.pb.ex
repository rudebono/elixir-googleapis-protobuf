defmodule Google.Cloud.Discoveryengine.V1.CompleteQueryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :data_store, 1, type: :string, json_name: "dataStore", deprecated: false
  field :query, 2, type: :string, deprecated: false
  field :query_model, 3, type: :string, json_name: "queryModel"
  field :user_pseudo_id, 4, type: :string, json_name: "userPseudoId"
  field :include_tail_suggestions, 5, type: :bool, json_name: "includeTailSuggestions"
end

defmodule Google.Cloud.Discoveryengine.V1.CompleteQueryResponse.QuerySuggestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :suggestion, 1, type: :string

  field :completable_field_paths, 2,
    repeated: true,
    type: :string,
    json_name: "completableFieldPaths"
end

defmodule Google.Cloud.Discoveryengine.V1.CompleteQueryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :query_suggestions, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.CompleteQueryResponse.QuerySuggestion,
    json_name: "querySuggestions"

  field :tail_match_triggered, 2, type: :bool, json_name: "tailMatchTriggered"
end

defmodule Google.Cloud.Discoveryengine.V1.CompletionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1.CompletionService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CompleteQuery,
      Google.Cloud.Discoveryengine.V1.CompleteQueryRequest,
      Google.Cloud.Discoveryengine.V1.CompleteQueryResponse

  rpc :ImportSuggestionDenyListEntries,
      Google.Cloud.Discoveryengine.V1.ImportSuggestionDenyListEntriesRequest,
      Google.Longrunning.Operation

  rpc :PurgeSuggestionDenyListEntries,
      Google.Cloud.Discoveryengine.V1.PurgeSuggestionDenyListEntriesRequest,
      Google.Longrunning.Operation

  rpc :ImportCompletionSuggestions,
      Google.Cloud.Discoveryengine.V1.ImportCompletionSuggestionsRequest,
      Google.Longrunning.Operation

  rpc :PurgeCompletionSuggestions,
      Google.Cloud.Discoveryengine.V1.PurgeCompletionSuggestionsRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Discoveryengine.V1.CompletionService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1.CompletionService.Service
end