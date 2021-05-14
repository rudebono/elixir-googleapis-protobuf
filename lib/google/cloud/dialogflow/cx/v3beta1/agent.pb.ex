defmodule Google.Cloud.Dialogflow.Cx.V3beta1.RestoreAgentRequest.RestoreOption do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :RESTORE_OPTION_UNSPECIFIED | :KEEP | :FALLBACK

  field :RESTORE_OPTION_UNSPECIFIED, 0

  field :KEEP, 1

  field :FALLBACK, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SpeechToTextSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_speech_adaptation: boolean
        }

  defstruct [:enable_speech_adaptation]

  field :enable_speech_adaptation, 1, type: :bool
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Agent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          default_language_code: String.t(),
          supported_language_codes: [String.t()],
          time_zone: String.t(),
          description: String.t(),
          avatar_uri: String.t(),
          speech_to_text_settings:
            Google.Cloud.Dialogflow.Cx.V3beta1.SpeechToTextSettings.t() | nil,
          start_flow: String.t(),
          security_settings: String.t(),
          enable_stackdriver_logging: boolean,
          enable_spell_correction: boolean
        }

  defstruct [
    :name,
    :display_name,
    :default_language_code,
    :supported_language_codes,
    :time_zone,
    :description,
    :avatar_uri,
    :speech_to_text_settings,
    :start_flow,
    :security_settings,
    :enable_stackdriver_logging,
    :enable_spell_correction
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :default_language_code, 3, type: :string
  field :supported_language_codes, 4, repeated: true, type: :string
  field :time_zone, 5, type: :string
  field :description, 6, type: :string
  field :avatar_uri, 7, type: :string

  field :speech_to_text_settings, 13,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SpeechToTextSettings

  field :start_flow, 16, type: :string
  field :security_settings, 17, type: :string
  field :enable_stackdriver_logging, 18, type: :bool
  field :enable_spell_correction, 20, type: :bool
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListAgentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListAgentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          agents: [Google.Cloud.Dialogflow.Cx.V3beta1.Agent.t()],
          next_page_token: String.t()
        }

  defstruct [:agents, :next_page_token]

  field :agents, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.Agent
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetAgentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CreateAgentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          agent: Google.Cloud.Dialogflow.Cx.V3beta1.Agent.t() | nil
        }

  defstruct [:parent, :agent]

  field :parent, 1, type: :string
  field :agent, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.Agent
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.UpdateAgentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          agent: Google.Cloud.Dialogflow.Cx.V3beta1.Agent.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:agent, :update_mask]

  field :agent, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.Agent
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeleteAgentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ExportAgentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          agent_uri: String.t(),
          environment: String.t()
        }

  defstruct [:name, :agent_uri, :environment]

  field :name, 1, type: :string
  field :agent_uri, 2, type: :string
  field :environment, 5, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ExportAgentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          agent: {atom, any}
        }

  defstruct [:agent]

  oneof :agent, 0
  field :agent_uri, 1, type: :string, oneof: 0
  field :agent_content, 2, type: :bytes, oneof: 0
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.RestoreAgentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          agent: {atom, any},
          name: String.t(),
          restore_option: Google.Cloud.Dialogflow.Cx.V3beta1.RestoreAgentRequest.RestoreOption.t()
        }

  defstruct [:agent, :name, :restore_option]

  oneof :agent, 0
  field :name, 1, type: :string
  field :agent_uri, 2, type: :string, oneof: 0
  field :agent_content, 3, type: :bytes, oneof: 0

  field :restore_option, 5,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.RestoreAgentRequest.RestoreOption,
    enum: true
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ValidateAgentRequest do
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

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetAgentValidationResultRequest do
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

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.AgentValidationResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          flow_validation_results: [Google.Cloud.Dialogflow.Cx.V3beta1.FlowValidationResult.t()]
        }

  defstruct [:name, :flow_validation_results]

  field :name, 1, type: :string

  field :flow_validation_results, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.FlowValidationResult
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Agents.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.cx.v3beta1.Agents"

  rpc :ListAgents,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListAgentsRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListAgentsResponse

  rpc :GetAgent,
      Google.Cloud.Dialogflow.Cx.V3beta1.GetAgentRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Agent

  rpc :CreateAgent,
      Google.Cloud.Dialogflow.Cx.V3beta1.CreateAgentRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Agent

  rpc :UpdateAgent,
      Google.Cloud.Dialogflow.Cx.V3beta1.UpdateAgentRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Agent

  rpc :DeleteAgent, Google.Cloud.Dialogflow.Cx.V3beta1.DeleteAgentRequest, Google.Protobuf.Empty

  rpc :ExportAgent,
      Google.Cloud.Dialogflow.Cx.V3beta1.ExportAgentRequest,
      Google.Longrunning.Operation

  rpc :RestoreAgent,
      Google.Cloud.Dialogflow.Cx.V3beta1.RestoreAgentRequest,
      Google.Longrunning.Operation

  rpc :ValidateAgent,
      Google.Cloud.Dialogflow.Cx.V3beta1.ValidateAgentRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.AgentValidationResult

  rpc :GetAgentValidationResult,
      Google.Cloud.Dialogflow.Cx.V3beta1.GetAgentValidationResultRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.AgentValidationResult
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Agents.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3beta1.Agents.Service
end
