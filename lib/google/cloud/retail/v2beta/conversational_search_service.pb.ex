defmodule Google.Cloud.Retail.V2beta.ConversationalSearchRequest.ConversationalFilteringSpec.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :DISABLED, 1
  field :ENABLED, 2
  field :CONVERSATIONAL_FILTER_ONLY, 3
end

defmodule Google.Cloud.Retail.V2beta.ConversationalSearchResponse.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STREAMING, 1
  field :SUCCEEDED, 2
end

defmodule Google.Cloud.Retail.V2beta.ConversationalSearchRequest.SearchParams do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :filter, 1, type: :string, deprecated: false
  field :canonical_filter, 2, type: :string, json_name: "canonicalFilter", deprecated: false
  field :sort_by, 3, type: :string, json_name: "sortBy", deprecated: false

  field :boost_spec, 4,
    type: Google.Cloud.Retail.V2beta.SearchRequest.BoostSpec,
    json_name: "boostSpec",
    deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.ConversationalSearchRequest.UserAnswer.SelectedAnswer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :product_attribute_value, 1,
    type: Google.Cloud.Retail.V2beta.ProductAttributeValue,
    json_name: "productAttributeValue",
    deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.ConversationalSearchRequest.UserAnswer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :type, 0

  field :text_answer, 1, type: :string, json_name: "textAnswer", oneof: 0

  field :selected_answer, 2,
    type: Google.Cloud.Retail.V2beta.ConversationalSearchRequest.UserAnswer.SelectedAnswer,
    json_name: "selectedAnswer",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.ConversationalSearchRequest.ConversationalFilteringSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enable_conversational_filtering, 1,
    type: :bool,
    json_name: "enableConversationalFiltering",
    deprecated: true

  field :user_answer, 2,
    type: Google.Cloud.Retail.V2beta.ConversationalSearchRequest.UserAnswer,
    json_name: "userAnswer",
    deprecated: false

  field :conversational_filtering_mode, 4,
    type: Google.Cloud.Retail.V2beta.ConversationalSearchRequest.ConversationalFilteringSpec.Mode,
    json_name: "conversationalFilteringMode",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.ConversationalSearchRequest.UserLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Retail.V2beta.ConversationalSearchRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :placement, 1, type: :string, deprecated: false
  field :branch, 2, type: :string, deprecated: false
  field :query, 3, type: :string, deprecated: false

  field :page_categories, 4,
    repeated: true,
    type: :string,
    json_name: "pageCategories",
    deprecated: false

  field :conversation_id, 5, type: :string, json_name: "conversationId", deprecated: false

  field :search_params, 6,
    type: Google.Cloud.Retail.V2beta.ConversationalSearchRequest.SearchParams,
    json_name: "searchParams",
    deprecated: false

  field :visitor_id, 9, type: :string, json_name: "visitorId", deprecated: false

  field :user_info, 7,
    type: Google.Cloud.Retail.V2beta.UserInfo,
    json_name: "userInfo",
    deprecated: false

  field :conversational_filtering_spec, 8,
    type: Google.Cloud.Retail.V2beta.ConversationalSearchRequest.ConversationalFilteringSpec,
    json_name: "conversationalFilteringSpec",
    deprecated: false

  field :user_labels, 12,
    repeated: true,
    type: Google.Cloud.Retail.V2beta.ConversationalSearchRequest.UserLabelsEntry,
    json_name: "userLabels",
    map: true,
    deprecated: false

  field :safety_settings, 14,
    repeated: true,
    type: Google.Cloud.Retail.V2beta.SafetySetting,
    json_name: "safetySettings",
    deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.ConversationalSearchResponse.FollowupQuestion.SuggestedAnswer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :product_attribute_value, 1,
    type: Google.Cloud.Retail.V2beta.ProductAttributeValue,
    json_name: "productAttributeValue"
end

defmodule Google.Cloud.Retail.V2beta.ConversationalSearchResponse.FollowupQuestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :followup_question, 1, type: :string, json_name: "followupQuestion"

  field :suggested_answers, 2,
    repeated: true,
    type:
      Google.Cloud.Retail.V2beta.ConversationalSearchResponse.FollowupQuestion.SuggestedAnswer,
    json_name: "suggestedAnswers"
end

defmodule Google.Cloud.Retail.V2beta.ConversationalSearchResponse.RefinedSearch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :query, 1, type: :string
end

defmodule Google.Cloud.Retail.V2beta.ConversationalSearchResponse.ConversationalFilteringResult.AdditionalFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :product_attribute_value, 1,
    type: Google.Cloud.Retail.V2beta.ProductAttributeValue,
    json_name: "productAttributeValue"
end

defmodule Google.Cloud.Retail.V2beta.ConversationalSearchResponse.ConversationalFilteringResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :followup_question, 1,
    type: Google.Cloud.Retail.V2beta.ConversationalSearchResponse.FollowupQuestion,
    json_name: "followupQuestion"

  field :additional_filter, 2,
    type:
      Google.Cloud.Retail.V2beta.ConversationalSearchResponse.ConversationalFilteringResult.AdditionalFilter,
    json_name: "additionalFilter"
end

defmodule Google.Cloud.Retail.V2beta.ConversationalSearchResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :user_query_types, 10, repeated: true, type: :string, json_name: "userQueryTypes"
  field :conversational_text_response, 2, type: :string, json_name: "conversationalTextResponse"

  field :followup_question, 3,
    type: Google.Cloud.Retail.V2beta.ConversationalSearchResponse.FollowupQuestion,
    json_name: "followupQuestion"

  field :conversation_id, 4, type: :string, json_name: "conversationId"

  field :refined_search, 6,
    repeated: true,
    type: Google.Cloud.Retail.V2beta.ConversationalSearchResponse.RefinedSearch,
    json_name: "refinedSearch"

  field :conversational_filtering_result, 7,
    type: Google.Cloud.Retail.V2beta.ConversationalSearchResponse.ConversationalFilteringResult,
    json_name: "conversationalFilteringResult"

  field :state, 9,
    type: Google.Cloud.Retail.V2beta.ConversationalSearchResponse.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.ConversationalSearchService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.retail.v2beta.ConversationalSearchService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ConversationalSearch,
      Google.Cloud.Retail.V2beta.ConversationalSearchRequest,
      stream(Google.Cloud.Retail.V2beta.ConversationalSearchResponse)
end

defmodule Google.Cloud.Retail.V2beta.ConversationalSearchService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Retail.V2beta.ConversationalSearchService.Service
end
