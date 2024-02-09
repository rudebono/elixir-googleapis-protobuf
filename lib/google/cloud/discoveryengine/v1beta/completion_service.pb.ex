defmodule Google.Cloud.Discoveryengine.V1beta.CompleteQueryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :data_store, 1, type: :string, json_name: "dataStore", deprecated: false
  field :query, 2, type: :string, deprecated: false
  field :query_model, 3, type: :string, json_name: "queryModel"
  field :user_pseudo_id, 4, type: :string, json_name: "userPseudoId"
  field :include_tail_suggestions, 5, type: :bool, json_name: "includeTailSuggestions"
end

defmodule Google.Cloud.Discoveryengine.V1beta.CompleteQueryResponse.QuerySuggestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :suggestion, 1, type: :string

  field :completable_field_paths, 2,
    repeated: true,
    type: :string,
    json_name: "completableFieldPaths"
end

defmodule Google.Cloud.Discoveryengine.V1beta.CompleteQueryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :query_suggestions, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.CompleteQueryResponse.QuerySuggestion,
    json_name: "querySuggestions"

  field :tail_match_triggered, 2, type: :bool, json_name: "tailMatchTriggered"
end

defmodule Google.Cloud.Discoveryengine.V1beta.CompletionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1beta.CompletionService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CompleteQuery,
      Google.Cloud.Discoveryengine.V1beta.CompleteQueryRequest,
      Google.Cloud.Discoveryengine.V1beta.CompleteQueryResponse

  rpc :ImportSuggestionDenyListEntries,
      Google.Cloud.Discoveryengine.V1beta.ImportSuggestionDenyListEntriesRequest,
      Google.Longrunning.Operation

  rpc :PurgeSuggestionDenyListEntries,
      Google.Cloud.Discoveryengine.V1beta.PurgeSuggestionDenyListEntriesRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Discoveryengine.V1beta.CompletionService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1beta.CompletionService.Service
end