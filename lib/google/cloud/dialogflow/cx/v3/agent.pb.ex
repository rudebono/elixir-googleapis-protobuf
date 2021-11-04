defmodule Google.Cloud.Dialogflow.Cx.V3.RestoreAgentRequest.RestoreOption do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :RESTORE_OPTION_UNSPECIFIED | :KEEP | :FALLBACK

  field :RESTORE_OPTION_UNSPECIFIED, 0
  field :KEEP, 1
  field :FALLBACK, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3.SpeechToTextSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_speech_adaptation: boolean
        }

  defstruct [:enable_speech_adaptation]

  field :enable_speech_adaptation, 1, type: :bool, json_name: "enableSpeechAdaptation"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Agent do
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
          speech_to_text_settings: Google.Cloud.Dialogflow.Cx.V3.SpeechToTextSettings.t() | nil,
          start_flow: String.t(),
          security_settings: String.t(),
          enable_stackdriver_logging: boolean,
          enable_spell_correction: boolean,
          advanced_settings: Google.Cloud.Dialogflow.Cx.V3.AdvancedSettings.t() | nil
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
    :enable_spell_correction,
    :advanced_settings
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :default_language_code, 3, type: :string, json_name: "defaultLanguageCode"

  field :supported_language_codes, 4,
    repeated: true,
    type: :string,
    json_name: "supportedLanguageCodes"

  field :time_zone, 5, type: :string, json_name: "timeZone"
  field :description, 6, type: :string
  field :avatar_uri, 7, type: :string, json_name: "avatarUri"

  field :speech_to_text_settings, 13,
    type: Google.Cloud.Dialogflow.Cx.V3.SpeechToTextSettings,
    json_name: "speechToTextSettings"

  field :start_flow, 16, type: :string, json_name: "startFlow"
  field :security_settings, 17, type: :string, json_name: "securitySettings"

  field :enable_stackdriver_logging, 18,
    type: :bool,
    deprecated: true,
    json_name: "enableStackdriverLogging"

  field :enable_spell_correction, 20, type: :bool, json_name: "enableSpellCorrection"

  field :advanced_settings, 22,
    type: Google.Cloud.Dialogflow.Cx.V3.AdvancedSettings,
    json_name: "advancedSettings"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListAgentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListAgentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          agents: [Google.Cloud.Dialogflow.Cx.V3.Agent.t()],
          next_page_token: String.t()
        }

  defstruct [:agents, :next_page_token]

  field :agents, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.Agent
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.GetAgentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.CreateAgentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          agent: Google.Cloud.Dialogflow.Cx.V3.Agent.t() | nil
        }

  defstruct [:parent, :agent]

  field :parent, 1, type: :string
  field :agent, 2, type: Google.Cloud.Dialogflow.Cx.V3.Agent

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.UpdateAgentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          agent: Google.Cloud.Dialogflow.Cx.V3.Agent.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:agent, :update_mask]

  field :agent, 1, type: Google.Cloud.Dialogflow.Cx.V3.Agent
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.DeleteAgentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ExportAgentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          agent_uri: String.t(),
          environment: String.t()
        }

  defstruct [:name, :agent_uri, :environment]

  field :name, 1, type: :string
  field :agent_uri, 2, type: :string, json_name: "agentUri"
  field :environment, 5, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ExportAgentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          agent: {:agent_uri, String.t()} | {:agent_content, binary}
        }

  defstruct [:agent]

  oneof :agent, 0

  field :agent_uri, 1, type: :string, json_name: "agentUri", oneof: 0
  field :agent_content, 2, type: :bytes, json_name: "agentContent", oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.RestoreAgentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          agent: {:agent_uri, String.t()} | {:agent_content, binary},
          name: String.t(),
          restore_option: Google.Cloud.Dialogflow.Cx.V3.RestoreAgentRequest.RestoreOption.t()
        }

  defstruct [:agent, :name, :restore_option]

  oneof :agent, 0

  field :name, 1, type: :string
  field :agent_uri, 2, type: :string, json_name: "agentUri", oneof: 0
  field :agent_content, 3, type: :bytes, json_name: "agentContent", oneof: 0

  field :restore_option, 5,
    type: Google.Cloud.Dialogflow.Cx.V3.RestoreAgentRequest.RestoreOption,
    enum: true,
    json_name: "restoreOption"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ValidateAgentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          language_code: String.t()
        }

  defstruct [:name, :language_code]

  field :name, 1, type: :string
  field :language_code, 2, type: :string, json_name: "languageCode"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.GetAgentValidationResultRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          language_code: String.t()
        }

  defstruct [:name, :language_code]

  field :name, 1, type: :string
  field :language_code, 2, type: :string, json_name: "languageCode"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.AgentValidationResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          flow_validation_results: [Google.Cloud.Dialogflow.Cx.V3.FlowValidationResult.t()]
        }

  defstruct [:name, :flow_validation_results]

  field :name, 1, type: :string

  field :flow_validation_results, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.FlowValidationResult,
    json_name: "flowValidationResults"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Agents.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.cx.v3.Agents"

  rpc :ListAgents,
      Google.Cloud.Dialogflow.Cx.V3.ListAgentsRequest,
      Google.Cloud.Dialogflow.Cx.V3.ListAgentsResponse

  rpc :GetAgent,
      Google.Cloud.Dialogflow.Cx.V3.GetAgentRequest,
      Google.Cloud.Dialogflow.Cx.V3.Agent

  rpc :CreateAgent,
      Google.Cloud.Dialogflow.Cx.V3.CreateAgentRequest,
      Google.Cloud.Dialogflow.Cx.V3.Agent

  rpc :UpdateAgent,
      Google.Cloud.Dialogflow.Cx.V3.UpdateAgentRequest,
      Google.Cloud.Dialogflow.Cx.V3.Agent

  rpc :DeleteAgent, Google.Cloud.Dialogflow.Cx.V3.DeleteAgentRequest, Google.Protobuf.Empty

  rpc :ExportAgent, Google.Cloud.Dialogflow.Cx.V3.ExportAgentRequest, Google.Longrunning.Operation

  rpc :RestoreAgent,
      Google.Cloud.Dialogflow.Cx.V3.RestoreAgentRequest,
      Google.Longrunning.Operation

  rpc :ValidateAgent,
      Google.Cloud.Dialogflow.Cx.V3.ValidateAgentRequest,
      Google.Cloud.Dialogflow.Cx.V3.AgentValidationResult

  rpc :GetAgentValidationResult,
      Google.Cloud.Dialogflow.Cx.V3.GetAgentValidationResultRequest,
      Google.Cloud.Dialogflow.Cx.V3.AgentValidationResult
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Agents.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3.Agents.Service
end
