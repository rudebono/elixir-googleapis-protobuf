defmodule Google.Cloud.Retail.V2.CompleteQueryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          catalog: String.t(),
          query: String.t(),
          visitor_id: String.t(),
          language_codes: [String.t()],
          device_type: String.t(),
          dataset: String.t(),
          max_suggestions: integer
        }

  defstruct [
    :catalog,
    :query,
    :visitor_id,
    :language_codes,
    :device_type,
    :dataset,
    :max_suggestions
  ]

  field :catalog, 1, type: :string
  field :query, 2, type: :string
  field :visitor_id, 7, type: :string, json_name: "visitorId"
  field :language_codes, 3, repeated: true, type: :string, json_name: "languageCodes"
  field :device_type, 4, type: :string, json_name: "deviceType"
  field :dataset, 6, type: :string
  field :max_suggestions, 5, type: :int32, json_name: "maxSuggestions"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2.CompleteQueryResponse.CompletionResult.AttributesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Retail.V2.CustomAttribute.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Retail.V2.CustomAttribute

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2.CompleteQueryResponse.CompletionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          suggestion: String.t(),
          attributes: %{String.t() => Google.Cloud.Retail.V2.CustomAttribute.t() | nil}
        }

  defstruct [:suggestion, :attributes]

  field :suggestion, 1, type: :string

  field :attributes, 2,
    repeated: true,
    type: Google.Cloud.Retail.V2.CompleteQueryResponse.CompletionResult.AttributesEntry,
    map: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2.CompleteQueryResponse.RecentSearchResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          recent_search: String.t()
        }

  defstruct [:recent_search]

  field :recent_search, 1, type: :string, json_name: "recentSearch"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2.CompleteQueryResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          completion_results: [Google.Cloud.Retail.V2.CompleteQueryResponse.CompletionResult.t()],
          attribution_token: String.t(),
          recent_search_results: [
            Google.Cloud.Retail.V2.CompleteQueryResponse.RecentSearchResult.t()
          ]
        }

  defstruct [:completion_results, :attribution_token, :recent_search_results]

  field :completion_results, 1,
    repeated: true,
    type: Google.Cloud.Retail.V2.CompleteQueryResponse.CompletionResult,
    json_name: "completionResults"

  field :attribution_token, 2, type: :string, json_name: "attributionToken"

  field :recent_search_results, 3,
    repeated: true,
    type: Google.Cloud.Retail.V2.CompleteQueryResponse.RecentSearchResult,
    json_name: "recentSearchResults"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2.CompletionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.retail.v2.CompletionService"

  rpc :CompleteQuery,
      Google.Cloud.Retail.V2.CompleteQueryRequest,
      Google.Cloud.Retail.V2.CompleteQueryResponse

  rpc :ImportCompletionData,
      Google.Cloud.Retail.V2.ImportCompletionDataRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Retail.V2.CompletionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Retail.V2.CompletionService.Service
end
