defmodule Google.Actions.Sdk.V2.UserInput.InputType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :INPUT_TYPE_UNSPECIFIED, 0
  field :TOUCH, 1
  field :VOICE, 2
  field :KEYBOARD, 3
  field :URL, 4
end

defmodule Google.Actions.Sdk.V2.DeviceProperties.Surface do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SURFACE_UNSPECIFIED, 0
  field :SPEAKER, 1
  field :PHONE, 2
  field :ALLO, 3
  field :SMART_DISPLAY, 4
  field :KAI_OS, 5
end

defmodule Google.Actions.Sdk.V2.SendInteractionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project, 1, type: :string, deprecated: false
  field :input, 2, type: Google.Actions.Sdk.V2.UserInput, deprecated: false

  field :device_properties, 3,
    type: Google.Actions.Sdk.V2.DeviceProperties,
    json_name: "deviceProperties",
    deprecated: false

  field :conversation_token, 4, type: :string, json_name: "conversationToken"
end

defmodule Google.Actions.Sdk.V2.UserInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :query, 1, type: :string
  field :type, 2, type: Google.Actions.Sdk.V2.UserInput.InputType, enum: true
end

defmodule Google.Actions.Sdk.V2.DeviceProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :surface, 1, type: Google.Actions.Sdk.V2.DeviceProperties.Surface, enum: true
  field :location, 2, type: Google.Actions.Sdk.V2.Location
  field :locale, 3, type: :string
  field :time_zone, 4, type: :string, json_name: "timeZone"
end

defmodule Google.Actions.Sdk.V2.Location do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :coordinates, 1, type: Google.Type.LatLng
  field :formatted_address, 2, type: :string, json_name: "formattedAddress"
  field :zip_code, 3, type: :string, json_name: "zipCode"
  field :city, 4, type: :string
end

defmodule Google.Actions.Sdk.V2.SendInteractionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :output, 1, type: Google.Actions.Sdk.V2.Output
  field :diagnostics, 2, type: Google.Actions.Sdk.V2.Diagnostics
  field :conversation_token, 3, type: :string, json_name: "conversationToken"
end

defmodule Google.Actions.Sdk.V2.Output do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :text, 1, type: :string
  field :speech, 2, repeated: true, type: :string
  field :canvas, 3, type: Google.Actions.Sdk.V2.Conversation.Canvas

  field :actions_builder_prompt, 4,
    type: Google.Actions.Sdk.V2.Conversation.Prompt,
    json_name: "actionsBuilderPrompt"
end

defmodule Google.Actions.Sdk.V2.Diagnostics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :actions_builder_events, 1,
    repeated: true,
    type: Google.Actions.Sdk.V2.ExecutionEvent,
    json_name: "actionsBuilderEvents"
end

defmodule Google.Actions.Sdk.V2.MatchIntentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project, 1, type: :string, deprecated: false
  field :query, 2, type: :string, deprecated: false
  field :locale, 3, type: :string, deprecated: false
end

defmodule Google.Actions.Sdk.V2.MatchIntentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :matched_intents, 1,
    repeated: true,
    type: Google.Actions.Sdk.V2.Conversation.Intent,
    json_name: "matchedIntents"
end

defmodule Google.Actions.Sdk.V2.SetWebAndAppActivityControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Actions.Sdk.V2.ActionsTesting.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.actions.sdk.v2.ActionsTesting",
    protoc_gen_elixir_version: "0.14.1"

  rpc :SendInteraction,
      Google.Actions.Sdk.V2.SendInteractionRequest,
      Google.Actions.Sdk.V2.SendInteractionResponse

  rpc :MatchIntents,
      Google.Actions.Sdk.V2.MatchIntentsRequest,
      Google.Actions.Sdk.V2.MatchIntentsResponse

  rpc :SetWebAndAppActivityControl,
      Google.Actions.Sdk.V2.SetWebAndAppActivityControlRequest,
      Google.Protobuf.Empty
end

defmodule Google.Actions.Sdk.V2.ActionsTesting.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Actions.Sdk.V2.ActionsTesting.Service
end
