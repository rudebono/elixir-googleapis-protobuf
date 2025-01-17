defmodule Google.Cloud.Dialogflow.Cx.V3.ValidationMessage.ResourceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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
  field :AGENT_TRANSITION_ROUTE_GROUP, 14
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ValidationMessage.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :INFO, 1
  field :WARNING, 2
  field :ERROR, 3
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ValidationMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :resource_type, 1,
    type: Google.Cloud.Dialogflow.Cx.V3.ValidationMessage.ResourceType,
    json_name: "resourceType",
    enum: true

  field :resources, 2, repeated: true, type: :string, deprecated: true

  field :resource_names, 6,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.ResourceName,
    json_name: "resourceNames"

  field :severity, 3, type: Google.Cloud.Dialogflow.Cx.V3.ValidationMessage.Severity, enum: true
  field :detail, 4, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ResourceName do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
end
