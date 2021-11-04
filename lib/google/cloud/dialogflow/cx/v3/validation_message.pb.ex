defmodule Google.Cloud.Dialogflow.Cx.V3.ValidationMessage.ResourceType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :RESOURCE_TYPE_UNSPECIFIED
          | :AGENT
          | :INTENT
          | :INTENT_TRAINING_PHRASE
          | :INTENT_PARAMETER
          | :INTENTS
          | :INTENT_TRAINING_PHRASES
          | :ENTITY_TYPE
          | :ENTITY_TYPES
          | :WEBHOOK
          | :FLOW
          | :PAGE
          | :PAGES
          | :TRANSITION_ROUTE_GROUP

  field :RESOURCE_TYPE_UNSPECIFIED, 0
  field :AGENT, 1
  field :INTENT, 2
  field :INTENT_TRAINING_PHRASE, 8
  field :INTENT_PARAMETER, 9
  field :INTENTS, 10
  field :INTENT_TRAINING_PHRASES, 11
  field :ENTITY_TYPE, 3
  field :ENTITY_TYPES, 12
  field :WEBHOOK, 4
  field :FLOW, 5
  field :PAGE, 6
  field :PAGES, 13
  field :TRANSITION_ROUTE_GROUP, 7
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ValidationMessage.Severity do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SEVERITY_UNSPECIFIED | :INFO | :WARNING | :ERROR

  field :SEVERITY_UNSPECIFIED, 0
  field :INFO, 1
  field :WARNING, 2
  field :ERROR, 3
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ValidationMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_type: Google.Cloud.Dialogflow.Cx.V3.ValidationMessage.ResourceType.t(),
          resources: [String.t()],
          resource_names: [Google.Cloud.Dialogflow.Cx.V3.ResourceName.t()],
          severity: Google.Cloud.Dialogflow.Cx.V3.ValidationMessage.Severity.t(),
          detail: String.t()
        }

  defstruct [:resource_type, :resources, :resource_names, :severity, :detail]

  field :resource_type, 1,
    type: Google.Cloud.Dialogflow.Cx.V3.ValidationMessage.ResourceType,
    enum: true,
    json_name: "resourceType"

  field :resources, 2, repeated: true, type: :string, deprecated: true

  field :resource_names, 6,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.ResourceName,
    json_name: "resourceNames"

  field :severity, 3, type: Google.Cloud.Dialogflow.Cx.V3.ValidationMessage.Severity, enum: true
  field :detail, 4, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ResourceName do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t()
        }

  defstruct [:name, :display_name]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"

  def transform_module(), do: nil
end
