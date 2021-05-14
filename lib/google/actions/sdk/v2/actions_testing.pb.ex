defmodule Google.Actions.Sdk.V2.UserInput.InputType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :INPUT_TYPE_UNSPECIFIED | :TOUCH | :VOICE | :KEYBOARD | :URL

  field :INPUT_TYPE_UNSPECIFIED, 0

  field :TOUCH, 1

  field :VOICE, 2

  field :KEYBOARD, 3

  field :URL, 4
end

defmodule Google.Actions.Sdk.V2.DeviceProperties.Surface do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SURFACE_UNSPECIFIED | :SPEAKER | :PHONE | :ALLO | :SMART_DISPLAY | :KAI_OS

  field :SURFACE_UNSPECIFIED, 0

  field :SPEAKER, 1

  field :PHONE, 2

  field :ALLO, 3

  field :SMART_DISPLAY, 4

  field :KAI_OS, 5
end

defmodule Google.Actions.Sdk.V2.SendInteractionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project: String.t(),
          input: Google.Actions.Sdk.V2.UserInput.t() | nil,
          device_properties: Google.Actions.Sdk.V2.DeviceProperties.t() | nil,
          conversation_token: String.t()
        }

  defstruct [:project, :input, :device_properties, :conversation_token]

  field :project, 1, type: :string
  field :input, 2, type: Google.Actions.Sdk.V2.UserInput
  field :device_properties, 3, type: Google.Actions.Sdk.V2.DeviceProperties
  field :conversation_token, 4, type: :string
end

defmodule Google.Actions.Sdk.V2.UserInput do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query: String.t(),
          type: Google.Actions.Sdk.V2.UserInput.InputType.t()
        }

  defstruct [:query, :type]

  field :query, 1, type: :string
  field :type, 2, type: Google.Actions.Sdk.V2.UserInput.InputType, enum: true
end

defmodule Google.Actions.Sdk.V2.DeviceProperties do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          surface: Google.Actions.Sdk.V2.DeviceProperties.Surface.t(),
          location: Google.Actions.Sdk.V2.Location.t() | nil,
          locale: String.t(),
          time_zone: String.t()
        }

  defstruct [:surface, :location, :locale, :time_zone]

  field :surface, 1, type: Google.Actions.Sdk.V2.DeviceProperties.Surface, enum: true
  field :location, 2, type: Google.Actions.Sdk.V2.Location
  field :locale, 3, type: :string
  field :time_zone, 4, type: :string
end

defmodule Google.Actions.Sdk.V2.Location do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          coordinates: Google.Type.LatLng.t() | nil,
          formatted_address: String.t(),
          zip_code: String.t(),
          city: String.t()
        }

  defstruct [:coordinates, :formatted_address, :zip_code, :city]

  field :coordinates, 1, type: Google.Type.LatLng
  field :formatted_address, 2, type: :string
  field :zip_code, 3, type: :string
  field :city, 4, type: :string
end

defmodule Google.Actions.Sdk.V2.SendInteractionResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output: Google.Actions.Sdk.V2.Output.t() | nil,
          diagnostics: Google.Actions.Sdk.V2.Diagnostics.t() | nil,
          conversation_token: String.t()
        }

  defstruct [:output, :diagnostics, :conversation_token]

  field :output, 1, type: Google.Actions.Sdk.V2.Output
  field :diagnostics, 2, type: Google.Actions.Sdk.V2.Diagnostics
  field :conversation_token, 3, type: :string
end

defmodule Google.Actions.Sdk.V2.Output do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t(),
          speech: [String.t()],
          canvas: Google.Actions.Sdk.V2.Conversation.Canvas.t() | nil,
          actions_builder_prompt: Google.Actions.Sdk.V2.Conversation.Prompt.t() | nil
        }

  defstruct [:text, :speech, :canvas, :actions_builder_prompt]

  field :text, 1, type: :string
  field :speech, 2, repeated: true, type: :string
  field :canvas, 3, type: Google.Actions.Sdk.V2.Conversation.Canvas
  field :actions_builder_prompt, 4, type: Google.Actions.Sdk.V2.Conversation.Prompt
end

defmodule Google.Actions.Sdk.V2.Diagnostics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          actions_builder_events: [Google.Actions.Sdk.V2.ExecutionEvent.t()]
        }

  defstruct [:actions_builder_events]

  field :actions_builder_events, 1, repeated: true, type: Google.Actions.Sdk.V2.ExecutionEvent
end

defmodule Google.Actions.Sdk.V2.MatchIntentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project: String.t(),
          query: String.t(),
          locale: String.t()
        }

  defstruct [:project, :query, :locale]

  field :project, 1, type: :string
  field :query, 2, type: :string
  field :locale, 3, type: :string
end

defmodule Google.Actions.Sdk.V2.MatchIntentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          matched_intents: [Google.Actions.Sdk.V2.Conversation.Intent.t()]
        }

  defstruct [:matched_intents]

  field :matched_intents, 1, repeated: true, type: Google.Actions.Sdk.V2.Conversation.Intent
end

defmodule Google.Actions.Sdk.V2.SetWebAndAppActivityControlRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enabled: boolean
        }

  defstruct [:enabled]

  field :enabled, 1, type: :bool
end

defmodule Google.Actions.Sdk.V2.ActionsTesting.Service do
  @moduledoc false
  use GRPC.Service, name: "google.actions.sdk.v2.ActionsTesting"

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
