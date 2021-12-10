defmodule Google.Cloud.Dataqna.V1alpha.SuggestionType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SUGGESTION_TYPE_UNSPECIFIED | :ENTITY | :TEMPLATE

  field :SUGGESTION_TYPE_UNSPECIFIED, 0
  field :ENTITY, 1
  field :TEMPLATE, 2
end
defmodule Google.Cloud.Dataqna.V1alpha.SuggestQueriesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          scopes: [String.t()],
          query: String.t(),
          suggestion_types: [Google.Cloud.Dataqna.V1alpha.SuggestionType.t()]
        }

  defstruct parent: "",
            scopes: [],
            query: "",
            suggestion_types: []

  field :parent, 1, type: :string, deprecated: false
  field :scopes, 2, repeated: true, type: :string
  field :query, 3, type: :string

  field :suggestion_types, 4,
    repeated: true,
    type: Google.Cloud.Dataqna.V1alpha.SuggestionType,
    json_name: "suggestionTypes",
    enum: true
end
defmodule Google.Cloud.Dataqna.V1alpha.Suggestion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          suggestion_info: Google.Cloud.Dataqna.V1alpha.SuggestionInfo.t() | nil,
          ranking_score: float | :infinity | :negative_infinity | :nan,
          suggestion_type: Google.Cloud.Dataqna.V1alpha.SuggestionType.t()
        }

  defstruct suggestion_info: nil,
            ranking_score: 0.0,
            suggestion_type: :SUGGESTION_TYPE_UNSPECIFIED

  field :suggestion_info, 1,
    type: Google.Cloud.Dataqna.V1alpha.SuggestionInfo,
    json_name: "suggestionInfo"

  field :ranking_score, 2, type: :double, json_name: "rankingScore"

  field :suggestion_type, 3,
    type: Google.Cloud.Dataqna.V1alpha.SuggestionType,
    json_name: "suggestionType",
    enum: true
end
defmodule Google.Cloud.Dataqna.V1alpha.SuggestionInfo.MatchInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_char_index: integer,
          length: integer
        }

  defstruct start_char_index: 0,
            length: 0

  field :start_char_index, 1, type: :int32, json_name: "startCharIndex"
  field :length, 2, type: :int32
end
defmodule Google.Cloud.Dataqna.V1alpha.SuggestionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotated_suggestion: Google.Cloud.Dataqna.V1alpha.AnnotatedString.t() | nil,
          query_matches: [Google.Cloud.Dataqna.V1alpha.SuggestionInfo.MatchInfo.t()]
        }

  defstruct annotated_suggestion: nil,
            query_matches: []

  field :annotated_suggestion, 1,
    type: Google.Cloud.Dataqna.V1alpha.AnnotatedString,
    json_name: "annotatedSuggestion"

  field :query_matches, 2,
    repeated: true,
    type: Google.Cloud.Dataqna.V1alpha.SuggestionInfo.MatchInfo,
    json_name: "queryMatches"
end
defmodule Google.Cloud.Dataqna.V1alpha.SuggestQueriesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          suggestions: [Google.Cloud.Dataqna.V1alpha.Suggestion.t()]
        }

  defstruct suggestions: []

  field :suggestions, 1, repeated: true, type: Google.Cloud.Dataqna.V1alpha.Suggestion
end
defmodule Google.Cloud.Dataqna.V1alpha.AutoSuggestionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dataqna.v1alpha.AutoSuggestionService"

  rpc :SuggestQueries,
      Google.Cloud.Dataqna.V1alpha.SuggestQueriesRequest,
      Google.Cloud.Dataqna.V1alpha.SuggestQueriesResponse
end

defmodule Google.Cloud.Dataqna.V1alpha.AutoSuggestionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dataqna.V1alpha.AutoSuggestionService.Service
end
