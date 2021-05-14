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

  defstruct [
    :name,
    :display_name,
    :entry_fulfillment,
    :form,
    :transition_route_groups,
    :transition_routes,
    :event_handlers
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :entry_fulfillment, 7, type: Google.Cloud.Dialogflow.Cx.V3.Fulfillment
  field :form, 4, type: Google.Cloud.Dialogflow.Cx.V3.Form
  field :transition_route_groups, 11, repeated: true, type: :string
  field :transition_routes, 9, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.TransitionRoute
  field :event_handlers, 10, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.EventHandler
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Form.Parameter.FillBehavior do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          initial_prompt_fulfillment: Google.Cloud.Dialogflow.Cx.V3.Fulfillment.t() | nil,
          reprompt_event_handlers: [Google.Cloud.Dialogflow.Cx.V3.EventHandler.t()]
        }

  defstruct [:initial_prompt_fulfillment, :reprompt_event_handlers]

  field :initial_prompt_fulfillment, 3, type: Google.Cloud.Dialogflow.Cx.V3.Fulfillment

  field :reprompt_event_handlers, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.EventHandler
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

  defstruct [
    :display_name,
    :required,
    :entity_type,
    :is_list,
    :fill_behavior,
    :default_value,
    :redact
  ]

  field :display_name, 1, type: :string
  field :required, 2, type: :bool
  field :entity_type, 3, type: :string
  field :is_list, 4, type: :bool
  field :fill_behavior, 7, type: Google.Cloud.Dialogflow.Cx.V3.Form.Parameter.FillBehavior
  field :default_value, 9, type: Google.Protobuf.Value
  field :redact, 11, type: :bool
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Form do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parameters: [Google.Cloud.Dialogflow.Cx.V3.Form.Parameter.t()]
        }

  defstruct [:parameters]

  field :parameters, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.Form.Parameter
end

defmodule Google.Cloud.Dialogflow.Cx.V3.EventHandler do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target: {atom, any},
          name: String.t(),
          event: String.t(),
          trigger_fulfillment: Google.Cloud.Dialogflow.Cx.V3.Fulfillment.t() | nil
        }

  defstruct [:target, :name, :event, :trigger_fulfillment]

  oneof :target, 0
  field :name, 6, type: :string
  field :event, 4, type: :string
  field :trigger_fulfillment, 5, type: Google.Cloud.Dialogflow.Cx.V3.Fulfillment
  field :target_page, 2, type: :string, oneof: 0
  field :target_flow, 3, type: :string, oneof: 0
end

defmodule Google.Cloud.Dialogflow.Cx.V3.TransitionRoute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target: {atom, any},
          name: String.t(),
          intent: String.t(),
          condition: String.t(),
          trigger_fulfillment: Google.Cloud.Dialogflow.Cx.V3.Fulfillment.t() | nil
        }

  defstruct [:target, :name, :intent, :condition, :trigger_fulfillment]

  oneof :target, 0
  field :name, 6, type: :string
  field :intent, 1, type: :string
  field :condition, 2, type: :string
  field :trigger_fulfillment, 3, type: Google.Cloud.Dialogflow.Cx.V3.Fulfillment
  field :target_page, 4, type: :string, oneof: 0
  field :target_flow, 5, type: :string, oneof: 0
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

  defstruct [:parent, :language_code, :page_size, :page_token]

  field :parent, 1, type: :string
  field :language_code, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListPagesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pages: [Google.Cloud.Dialogflow.Cx.V3.Page.t()],
          next_page_token: String.t()
        }

  defstruct [:pages, :next_page_token]

  field :pages, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.Page
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.GetPageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          language_code: String.t()
        }

  defstruct [:name, :language_code]

  field :name, 1, type: :string
  field :language_code, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.CreatePageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page: Google.Cloud.Dialogflow.Cx.V3.Page.t() | nil,
          language_code: String.t()
        }

  defstruct [:parent, :page, :language_code]

  field :parent, 1, type: :string
  field :page, 2, type: Google.Cloud.Dialogflow.Cx.V3.Page
  field :language_code, 3, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.UpdatePageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          page: Google.Cloud.Dialogflow.Cx.V3.Page.t() | nil,
          language_code: String.t(),
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:page, :language_code, :update_mask]

  field :page, 1, type: Google.Cloud.Dialogflow.Cx.V3.Page
  field :language_code, 2, type: :string
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Dialogflow.Cx.V3.DeletePageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean
        }

  defstruct [:name, :force]

  field :name, 1, type: :string
  field :force, 2, type: :bool
end
