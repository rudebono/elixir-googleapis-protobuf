defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Page do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 19, type: :string

  field :entry_fulfillment, 7,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment,
    json_name: "entryFulfillment"

  field :form, 4, type: Google.Cloud.Dialogflow.Cx.V3beta1.Form

  field :transition_route_groups, 11,
    repeated: true,
    type: :string,
    json_name: "transitionRouteGroups",
    deprecated: false

  field :transition_routes, 9,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRoute,
    json_name: "transitionRoutes"

  field :event_handlers, 10,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.EventHandler,
    json_name: "eventHandlers"

  field :advanced_settings, 13,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.AdvancedSettings,
    json_name: "advancedSettings"

  field :knowledge_connector_settings, 18,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.KnowledgeConnectorSettings,
    json_name: "knowledgeConnectorSettings",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Form.Parameter.FillBehavior do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :initial_prompt_fulfillment, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment,
    json_name: "initialPromptFulfillment",
    deprecated: false

  field :reprompt_event_handlers, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.EventHandler,
    json_name: "repromptEventHandlers"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Form.Parameter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false
  field :required, 2, type: :bool
  field :entity_type, 3, type: :string, json_name: "entityType", deprecated: false
  field :is_list, 4, type: :bool, json_name: "isList"

  field :fill_behavior, 7,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Form.Parameter.FillBehavior,
    json_name: "fillBehavior",
    deprecated: false

  field :default_value, 9, type: Google.Protobuf.Value, json_name: "defaultValue"
  field :redact, 11, type: :bool

  field :advanced_settings, 12,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.AdvancedSettings,
    json_name: "advancedSettings"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Form do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parameters, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.Form.Parameter
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.EventHandler do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :target, 0

  field :name, 6, type: :string, deprecated: false
  field :event, 4, type: :string, deprecated: false

  field :trigger_fulfillment, 5,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment,
    json_name: "triggerFulfillment"

  field :target_page, 2, type: :string, json_name: "targetPage", oneof: 0, deprecated: false
  field :target_flow, 3, type: :string, json_name: "targetFlow", oneof: 0, deprecated: false

  field :target_playbook, 7,
    type: :string,
    json_name: "targetPlaybook",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRoute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :target, 0

  field :name, 6, type: :string, deprecated: false
  field :description, 8, type: :string, deprecated: false
  field :intent, 1, type: :string, deprecated: false
  field :condition, 2, type: :string

  field :trigger_fulfillment, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment,
    json_name: "triggerFulfillment"

  field :target_page, 4, type: :string, json_name: "targetPage", oneof: 0, deprecated: false
  field :target_flow, 5, type: :string, json_name: "targetFlow", oneof: 0, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListPagesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListPagesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :pages, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.Page
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetPageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CreatePageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.Page, deprecated: false
  field :language_code, 3, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.UpdatePageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :page, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.Page, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode"
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeletePageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.KnowledgeConnectorSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :target, 0

  field :enabled, 1, type: :bool

  field :trigger_fulfillment, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment,
    json_name: "triggerFulfillment"

  field :target_page, 4, type: :string, json_name: "targetPage", oneof: 0, deprecated: false
  field :target_flow, 5, type: :string, json_name: "targetFlow", oneof: 0, deprecated: false

  field :data_store_connections, 6,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.DataStoreConnection,
    json_name: "dataStoreConnections",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Pages.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.cx.v3beta1.Pages",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListPages,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListPagesRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListPagesResponse

  rpc :GetPage,
      Google.Cloud.Dialogflow.Cx.V3beta1.GetPageRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Page

  rpc :CreatePage,
      Google.Cloud.Dialogflow.Cx.V3beta1.CreatePageRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Page

  rpc :UpdatePage,
      Google.Cloud.Dialogflow.Cx.V3beta1.UpdatePageRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Page

  rpc :DeletePage, Google.Cloud.Dialogflow.Cx.V3beta1.DeletePageRequest, Google.Protobuf.Empty
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Pages.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3beta1.Pages.Service
end
