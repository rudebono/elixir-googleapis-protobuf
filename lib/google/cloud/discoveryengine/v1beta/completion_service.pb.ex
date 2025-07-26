defmodule Google.Cloud.Discoveryengine.V1beta.AdvancedCompleteQueryRequest.SuggestionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SUGGESTION_TYPE_UNSPECIFIED, 0
  field :QUERY, 1
  field :PEOPLE, 2
  field :CONTENT, 3
  field :RECENT_SEARCH, 4
  field :GOOGLE_WORKSPACE, 5
end

defmodule Google.Cloud.Discoveryengine.V1beta.AdvancedCompleteQueryResponse.PersonSuggestion.PersonType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PERSON_TYPE_UNSPECIFIED, 0
  field :CLOUD_IDENTITY, 1
  field :THIRD_PARTY_IDENTITY, 2
end

defmodule Google.Cloud.Discoveryengine.V1beta.AdvancedCompleteQueryResponse.ContentSuggestion.ContentType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CONTENT_TYPE_UNSPECIFIED, 0
  field :GOOGLE_WORKSPACE, 1
  field :THIRD_PARTY, 2
end

defmodule Google.Cloud.Discoveryengine.V1beta.CompleteQueryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_store, 1, type: :string, json_name: "dataStore", deprecated: false
  field :query, 2, type: :string, deprecated: false
  field :query_model, 3, type: :string, json_name: "queryModel"
  field :user_pseudo_id, 4, type: :string, json_name: "userPseudoId"
  field :include_tail_suggestions, 5, type: :bool, json_name: "includeTailSuggestions"
end

defmodule Google.Cloud.Discoveryengine.V1beta.CompleteQueryResponse.QuerySuggestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :suggestion, 1, type: :string

  field :completable_field_paths, 2,
    repeated: true,
    type: :string,
    json_name: "completableFieldPaths"
end

defmodule Google.Cloud.Discoveryengine.V1beta.CompleteQueryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :query_suggestions, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.CompleteQueryResponse.QuerySuggestion,
    json_name: "querySuggestions"

  field :tail_match_triggered, 2, type: :bool, json_name: "tailMatchTriggered"
end

defmodule Google.Cloud.Discoveryengine.V1beta.AdvancedCompleteQueryRequest.BoostSpec.ConditionBoostSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :condition, 1, type: :string
  field :boost, 2, type: :float
end

defmodule Google.Cloud.Discoveryengine.V1beta.AdvancedCompleteQueryRequest.BoostSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :condition_boost_specs, 1,
    repeated: true,
    type:
      Google.Cloud.Discoveryengine.V1beta.AdvancedCompleteQueryRequest.BoostSpec.ConditionBoostSpec,
    json_name: "conditionBoostSpecs"
end

defmodule Google.Cloud.Discoveryengine.V1beta.AdvancedCompleteQueryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :completion_config, 1, type: :string, json_name: "completionConfig", deprecated: false
  field :query, 2, type: :string, deprecated: false
  field :query_model, 3, type: :string, json_name: "queryModel"
  field :user_pseudo_id, 4, type: :string, json_name: "userPseudoId"

  field :user_info, 9,
    type: Google.Cloud.Discoveryengine.V1beta.UserInfo,
    json_name: "userInfo",
    deprecated: false

  field :include_tail_suggestions, 5, type: :bool, json_name: "includeTailSuggestions"

  field :boost_spec, 6,
    type: Google.Cloud.Discoveryengine.V1beta.AdvancedCompleteQueryRequest.BoostSpec,
    json_name: "boostSpec",
    deprecated: false

  field :suggestion_types, 7,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.AdvancedCompleteQueryRequest.SuggestionType,
    json_name: "suggestionTypes",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.AdvancedCompleteQueryResponse.QuerySuggestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :suggestion, 1, type: :string

  field :completable_field_paths, 2,
    repeated: true,
    type: :string,
    json_name: "completableFieldPaths"

  field :data_store, 3, repeated: true, type: :string, json_name: "dataStore"
end

defmodule Google.Cloud.Discoveryengine.V1beta.AdvancedCompleteQueryResponse.PersonSuggestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :suggestion, 1, type: :string

  field :person_type, 2,
    type:
      Google.Cloud.Discoveryengine.V1beta.AdvancedCompleteQueryResponse.PersonSuggestion.PersonType,
    json_name: "personType",
    enum: true

  field :document, 4, type: Google.Cloud.Discoveryengine.V1beta.Document
  field :data_store, 5, type: :string, json_name: "dataStore", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.AdvancedCompleteQueryResponse.ContentSuggestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :suggestion, 1, type: :string

  field :content_type, 2,
    type:
      Google.Cloud.Discoveryengine.V1beta.AdvancedCompleteQueryResponse.ContentSuggestion.ContentType,
    json_name: "contentType",
    enum: true

  field :document, 4, type: Google.Cloud.Discoveryengine.V1beta.Document
  field :data_store, 5, type: :string, json_name: "dataStore", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.AdvancedCompleteQueryResponse.RecentSearchSuggestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :suggestion, 1, type: :string
  field :recent_search_time, 2, type: Google.Protobuf.Timestamp, json_name: "recentSearchTime"
end

defmodule Google.Cloud.Discoveryengine.V1beta.AdvancedCompleteQueryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :query_suggestions, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.AdvancedCompleteQueryResponse.QuerySuggestion,
    json_name: "querySuggestions"

  field :tail_match_triggered, 2, type: :bool, json_name: "tailMatchTriggered"

  field :people_suggestions, 3,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.AdvancedCompleteQueryResponse.PersonSuggestion,
    json_name: "peopleSuggestions"

  field :content_suggestions, 4,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.AdvancedCompleteQueryResponse.ContentSuggestion,
    json_name: "contentSuggestions"

  field :recent_search_suggestions, 5,
    repeated: true,
    type:
      Google.Cloud.Discoveryengine.V1beta.AdvancedCompleteQueryResponse.RecentSearchSuggestion,
    json_name: "recentSearchSuggestions"
end

defmodule Google.Cloud.Discoveryengine.V1beta.CompletionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1beta.CompletionService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CompleteQuery,
      Google.Cloud.Discoveryengine.V1beta.CompleteQueryRequest,
      Google.Cloud.Discoveryengine.V1beta.CompleteQueryResponse

  rpc :AdvancedCompleteQuery,
      Google.Cloud.Discoveryengine.V1beta.AdvancedCompleteQueryRequest,
      Google.Cloud.Discoveryengine.V1beta.AdvancedCompleteQueryResponse

  rpc :ImportSuggestionDenyListEntries,
      Google.Cloud.Discoveryengine.V1beta.ImportSuggestionDenyListEntriesRequest,
      Google.Longrunning.Operation

  rpc :PurgeSuggestionDenyListEntries,
      Google.Cloud.Discoveryengine.V1beta.PurgeSuggestionDenyListEntriesRequest,
      Google.Longrunning.Operation

  rpc :ImportCompletionSuggestions,
      Google.Cloud.Discoveryengine.V1beta.ImportCompletionSuggestionsRequest,
      Google.Longrunning.Operation

  rpc :PurgeCompletionSuggestions,
      Google.Cloud.Discoveryengine.V1beta.PurgeCompletionSuggestionsRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Discoveryengine.V1beta.CompletionService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1beta.CompletionService.Service
end
