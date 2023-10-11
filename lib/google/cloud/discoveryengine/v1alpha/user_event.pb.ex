defmodule Google.Cloud.Discoveryengine.V1alpha.UserEvent.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Discoveryengine.V1alpha.CustomAttribute
end

defmodule Google.Cloud.Discoveryengine.V1alpha.UserEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :event_type, 1, type: :string, json_name: "eventType", deprecated: false
  field :user_pseudo_id, 2, type: :string, json_name: "userPseudoId", deprecated: false
  field :event_time, 3, type: Google.Protobuf.Timestamp, json_name: "eventTime"
  field :user_info, 4, type: Google.Cloud.Discoveryengine.V1alpha.UserInfo, json_name: "userInfo"
  field :direct_user_request, 5, type: :bool, json_name: "directUserRequest"
  field :session_id, 6, type: :string, json_name: "sessionId"
  field :page_info, 7, type: Google.Cloud.Discoveryengine.V1alpha.PageInfo, json_name: "pageInfo"
  field :attribution_token, 8, type: :string, json_name: "attributionToken"
  field :filter, 9, type: :string
  field :documents, 10, repeated: true, type: Google.Cloud.Discoveryengine.V1alpha.DocumentInfo
  field :panel, 11, type: Google.Cloud.Discoveryengine.V1alpha.PanelInfo

  field :search_info, 12,
    type: Google.Cloud.Discoveryengine.V1alpha.SearchInfo,
    json_name: "searchInfo"

  field :completion_info, 13,
    type: Google.Cloud.Discoveryengine.V1alpha.CompletionInfo,
    json_name: "completionInfo"

  field :transaction_info, 14,
    type: Google.Cloud.Discoveryengine.V1alpha.TransactionInfo,
    json_name: "transactionInfo"

  field :tag_ids, 15, repeated: true, type: :string, json_name: "tagIds"
  field :promotion_ids, 16, repeated: true, type: :string, json_name: "promotionIds"

  field :attributes, 17,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.UserEvent.AttributesEntry,
    map: true

  field :media_info, 18,
    type: Google.Cloud.Discoveryengine.V1alpha.MediaInfo,
    json_name: "mediaInfo"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.PageInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :pageview_id, 1, type: :string, json_name: "pageviewId"
  field :page_category, 2, type: :string, json_name: "pageCategory"
  field :uri, 3, type: :string
  field :referrer_uri, 4, type: :string, json_name: "referrerUri"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.SearchInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :search_query, 1, type: :string, json_name: "searchQuery"
  field :order_by, 2, type: :string, json_name: "orderBy"
  field :offset, 3, proto3_optional: true, type: :int32
end

defmodule Google.Cloud.Discoveryengine.V1alpha.CompletionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :selected_suggestion, 1, type: :string, json_name: "selectedSuggestion"
  field :selected_position, 2, type: :int32, json_name: "selectedPosition"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.TransactionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :value, 1, proto3_optional: true, type: :float, deprecated: false
  field :currency, 2, type: :string, deprecated: false
  field :transaction_id, 3, type: :string, json_name: "transactionId"
  field :tax, 4, proto3_optional: true, type: :float
  field :cost, 5, proto3_optional: true, type: :float
  field :discount_value, 6, proto3_optional: true, type: :float, json_name: "discountValue"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.DocumentInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :document_descriptor, 0

  field :id, 1, type: :string, oneof: 0
  field :name, 2, type: :string, oneof: 0, deprecated: false
  field :uri, 6, type: :string, oneof: 0
  field :quantity, 3, proto3_optional: true, type: :int32
  field :promotion_ids, 4, repeated: true, type: :string, json_name: "promotionIds"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.PanelInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :panel_id, 2, type: :string, json_name: "panelId", deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName"
  field :panel_position, 4, proto3_optional: true, type: :int32, json_name: "panelPosition"
  field :total_panels, 5, proto3_optional: true, type: :int32, json_name: "totalPanels"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.MediaInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :media_progress_duration, 1,
    type: Google.Protobuf.Duration,
    json_name: "mediaProgressDuration"

  field :media_progress_percentage, 2,
    proto3_optional: true,
    type: :float,
    json_name: "mediaProgressPercentage"
end