defmodule Google.Cloud.Dialogflow.Cx.V3.Page do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          entry_fulfillment: Google.Cloud.Dialogflow.Cx.V3.Fulfillment.t() | nil,
          form: Google.Cloud.Dialogflow.Cx.V3.Form.t() | nil,
          transition_route_groups: [String.t()],
          transition_routes: [Google.Cloud.Dialogflow.Cx.V3.TransitionRoute.t()],
          event_handlers: [Google.Cloud.Dialogflow.Cx.V3.EventHandler.t()]
        }

  defstruct name: "",
            display_name: "",
            entry_fulfillment: nil,
            form: nil,
            transition_route_groups: [],
            transition_routes: [],
            event_handlers: []

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :entry_fulfillment, 7,
    type: Google.Cloud.Dialogflow.Cx.V3.Fulfillment,
    json_name: "entryFulfillment"

  field :form, 4, type: Google.Cloud.Dialogflow.Cx.V3.Form

  field :transition_route_groups, 11,
    repeated: true,
    type: :string,
    json_name: "transitionRouteGroups",
    deprecated: false

  field :transition_routes, 9,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.TransitionRoute,
    json_name: "transitionRoutes"

  field :event_handlers, 10,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.EventHandler,
    json_name: "eventHandlers"
end
defmodule Google.Cloud.Dialogflow.Cx.V3.Form.Parameter.FillBehavior do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          initial_prompt_fulfillment: Google.Cloud.Dialogflow.Cx.V3.Fulfillment.t() | nil,
          reprompt_event_handlers: [Google.Cloud.Dialogflow.Cx.V3.EventHandler.t()]
        }

  defstruct initial_prompt_fulfillment: nil,
            reprompt_event_handlers: []

  field :initial_prompt_fulfillment, 3,
    type: Google.Cloud.Dialogflow.Cx.V3.Fulfillment,
    json_name: "initialPromptFulfillment",
    deprecated: false

  field :reprompt_event_handlers, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.EventHandler,
    json_name: "repromptEventHandlers"
end
defmodule Google.Cloud.Dialogflow.Cx.V3.Form.Parameter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          required: boolean,
          entity_type: String.t(),
          is_list: boolean,
          fill_behavior: Google.Cloud.Dialogflow.Cx.V3.Form.Parameter.FillBehavior.t() | nil,
          default_value: Google.Protobuf.Value.t() | nil,
          redact: boolean
        }

  defstruct display_name: "",
            required: false,
            entity_type: "",
            is_list: false,
            fill_behavior: nil,
            default_value: nil,
            redact: false

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false
  field :required, 2, type: :bool
  field :entity_type, 3, type: :string, json_name: "entityType", deprecated: false
  field :is_list, 4, type: :bool, json_name: "isList"

  field :fill_behavior, 7,
    type: Google.Cloud.Dialogflow.Cx.V3.Form.Parameter.FillBehavior,
    json_name: "fillBehavior",
    deprecated: false

  field :default_value, 9, type: Google.Protobuf.Value, json_name: "defaultValue"
  field :redact, 11, type: :bool
end
defmodule Google.Cloud.Dialogflow.Cx.V3.Form do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parameters: [Google.Cloud.Dialogflow.Cx.V3.Form.Parameter.t()]
        }

  defstruct parameters: []

  field :parameters, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.Form.Parameter
end
defmodule Google.Cloud.Dialogflow.Cx.V3.EventHandler do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target: {:target_page, String.t()} | {:target_flow, String.t()},
          name: String.t(),
          event: String.t(),
          trigger_fulfillment: Google.Cloud.Dialogflow.Cx.V3.Fulfillment.t() | nil
        }

  defstruct target: nil,
            name: "",
            event: "",
            trigger_fulfillment: nil

  oneof :target, 0

  field :name, 6, type: :string, deprecated: false
  field :event, 4, type: :string, deprecated: false

  field :trigger_fulfillment, 5,
    type: Google.Cloud.Dialogflow.Cx.V3.Fulfillment,
    json_name: "triggerFulfillment"

  field :target_page, 2, type: :string, json_name: "targetPage", oneof: 0, deprecated: false
  field :target_flow, 3, type: :string, json_name: "targetFlow", oneof: 0, deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3.TransitionRoute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target: {:target_page, String.t()} | {:target_flow, String.t()},
          name: String.t(),
          intent: String.t(),
          condition: String.t(),
          trigger_fulfillment: Google.Cloud.Dialogflow.Cx.V3.Fulfillment.t() | nil
        }

  defstruct target: nil,
            name: "",
            intent: "",
            condition: "",
            trigger_fulfillment: nil

  oneof :target, 0

  field :name, 6, type: :string, deprecated: false
  field :intent, 1, type: :string, deprecated: false
  field :condition, 2, type: :string

  field :trigger_fulfillment, 3,
    type: Google.Cloud.Dialogflow.Cx.V3.Fulfillment,
    json_name: "triggerFulfillment"

  field :target_page, 4, type: :string, json_name: "targetPage", oneof: 0, deprecated: false
  field :target_flow, 5, type: :string, json_name: "targetFlow", oneof: 0, deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3.ListPagesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          language_code: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            language_code: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Dialogflow.Cx.V3.ListPagesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pages: [Google.Cloud.Dialogflow.Cx.V3.Page.t()],
          next_page_token: String.t()
        }

  defstruct pages: [],
            next_page_token: ""

  field :pages, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.Page
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dialogflow.Cx.V3.GetPageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          language_code: String.t()
        }

  defstruct name: "",
            language_code: ""

  field :name, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode"
end
defmodule Google.Cloud.Dialogflow.Cx.V3.CreatePageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page: Google.Cloud.Dialogflow.Cx.V3.Page.t() | nil,
          language_code: String.t()
        }

  defstruct parent: "",
            page: nil,
            language_code: ""

  field :parent, 1, type: :string, deprecated: false
  field :page, 2, type: Google.Cloud.Dialogflow.Cx.V3.Page, deprecated: false
  field :language_code, 3, type: :string, json_name: "languageCode"
end
defmodule Google.Cloud.Dialogflow.Cx.V3.UpdatePageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          page: Google.Cloud.Dialogflow.Cx.V3.Page.t() | nil,
          language_code: String.t(),
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct page: nil,
            language_code: "",
            update_mask: nil

  field :page, 1, type: Google.Cloud.Dialogflow.Cx.V3.Page, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode"
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Dialogflow.Cx.V3.DeletePageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean
        }

  defstruct name: "",
            force: false

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool
end
defmodule Google.Cloud.Dialogflow.Cx.V3.Pages.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.cx.v3.Pages"

  rpc :ListPages,
      Google.Cloud.Dialogflow.Cx.V3.ListPagesRequest,
      Google.Cloud.Dialogflow.Cx.V3.ListPagesResponse

  rpc :GetPage, Google.Cloud.Dialogflow.Cx.V3.GetPageRequest, Google.Cloud.Dialogflow.Cx.V3.Page

  rpc :CreatePage,
      Google.Cloud.Dialogflow.Cx.V3.CreatePageRequest,
      Google.Cloud.Dialogflow.Cx.V3.Page

  rpc :UpdatePage,
      Google.Cloud.Dialogflow.Cx.V3.UpdatePageRequest,
      Google.Cloud.Dialogflow.Cx.V3.Page

  rpc :DeletePage, Google.Cloud.Dialogflow.Cx.V3.DeletePageRequest, Google.Protobuf.Empty
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Pages.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3.Pages.Service
end
