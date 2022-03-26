defmodule Google.Cloud.Dialogflow.Cx.V3.ExportAgentRequest.DataFormat do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :DATA_FORMAT_UNSPECIFIED | :BLOB

  field :DATA_FORMAT_UNSPECIFIED, 0
  field :BLOB, 1
end
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

  defstruct enable_speech_adaptation: false

  field :enable_speech_adaptation, 1, type: :bool, json_name: "enableSpeechAdaptation"
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
          locked: boolean,
          advanced_settings: Google.Cloud.Dialogflow.Cx.V3.AdvancedSettings.t() | nil
        }

  defstruct name: "",
            display_name: "",
            default_language_code: "",
            supported_language_codes: [],
            time_zone: "",
            description: "",
            avatar_uri: "",
            speech_to_text_settings: nil,
            start_flow: "",
            security_settings: "",
            enable_stackdriver_logging: false,
            enable_spell_correction: false,
            locked: false,
            advanced_settings: nil

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :default_language_code, 3,
    type: :string,
    json_name: "defaultLanguageCode",
    deprecated: false

  field :supported_language_codes, 4,
    repeated: true,
    type: :string,
    json_name: "supportedLanguageCodes"

  field :time_zone, 5, type: :string, json_name: "timeZone", deprecated: false
  field :description, 6, type: :string
  field :avatar_uri, 7, type: :string, json_name: "avatarUri"

  field :speech_to_text_settings, 13,
    type: Google.Cloud.Dialogflow.Cx.V3.SpeechToTextSettings,
    json_name: "speechToTextSettings"

  field :start_flow, 16, type: :string, json_name: "startFlow", deprecated: false
  field :security_settings, 17, type: :string, json_name: "securitySettings", deprecated: false

  field :enable_stackdriver_logging, 18,
    type: :bool,
    json_name: "enableStackdriverLogging",
    deprecated: true

  field :enable_spell_correction, 20, type: :bool, json_name: "enableSpellCorrection"
  field :locked, 27, type: :bool

  field :advanced_settings, 22,
    type: Google.Cloud.Dialogflow.Cx.V3.AdvancedSettings,
    json_name: "advancedSettings"
end
defmodule Google.Cloud.Dialogflow.Cx.V3.ListAgentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Dialogflow.Cx.V3.ListAgentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          agents: [Google.Cloud.Dialogflow.Cx.V3.Agent.t()],
          next_page_token: String.t()
        }

  defstruct agents: [],
            next_page_token: ""

  field :agents, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.Agent
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dialogflow.Cx.V3.GetAgentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3.CreateAgentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          agent: Google.Cloud.Dialogflow.Cx.V3.Agent.t() | nil
        }

  defstruct parent: "",
            agent: nil

  field :parent, 1, type: :string, deprecated: false
  field :agent, 2, type: Google.Cloud.Dialogflow.Cx.V3.Agent, deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3.UpdateAgentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          agent: Google.Cloud.Dialogflow.Cx.V3.Agent.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct agent: nil,
            update_mask: nil

  field :agent, 1, type: Google.Cloud.Dialogflow.Cx.V3.Agent, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Dialogflow.Cx.V3.DeleteAgentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3.ExportAgentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          agent_uri: String.t(),
          data_format: Google.Cloud.Dialogflow.Cx.V3.ExportAgentRequest.DataFormat.t(),
          environment: String.t()
        }

  defstruct name: "",
            agent_uri: "",
            data_format: :DATA_FORMAT_UNSPECIFIED,
            environment: ""

  field :name, 1, type: :string, deprecated: false
  field :agent_uri, 2, type: :string, json_name: "agentUri", deprecated: false

  field :data_format, 3,
    type: Google.Cloud.Dialogflow.Cx.V3.ExportAgentRequest.DataFormat,
    json_name: "dataFormat",
    enum: true,
    deprecated: false

  field :environment, 5, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3.ExportAgentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          agent: {:agent_uri, String.t()} | {:agent_content, binary}
        }

  defstruct agent: nil

  oneof :agent, 0

  field :agent_uri, 1, type: :string, json_name: "agentUri", oneof: 0
  field :agent_content, 2, type: :bytes, json_name: "agentContent", oneof: 0
end
defmodule Google.Cloud.Dialogflow.Cx.V3.RestoreAgentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          agent: {:agent_uri, String.t()} | {:agent_content, binary},
          name: String.t(),
          restore_option: Google.Cloud.Dialogflow.Cx.V3.RestoreAgentRequest.RestoreOption.t()
        }

  defstruct agent: nil,
            name: "",
            restore_option: :RESTORE_OPTION_UNSPECIFIED

  oneof :agent, 0

  field :name, 1, type: :string, deprecated: false
  field :agent_uri, 2, type: :string, json_name: "agentUri", oneof: 0
  field :agent_content, 3, type: :bytes, json_name: "agentContent", oneof: 0

  field :restore_option, 5,
    type: Google.Cloud.Dialogflow.Cx.V3.RestoreAgentRequest.RestoreOption,
    json_name: "restoreOption",
    enum: true
end
defmodule Google.Cloud.Dialogflow.Cx.V3.ValidateAgentRequest do
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
defmodule Google.Cloud.Dialogflow.Cx.V3.GetAgentValidationResultRequest do
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
defmodule Google.Cloud.Dialogflow.Cx.V3.AgentValidationResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          flow_validation_results: [Google.Cloud.Dialogflow.Cx.V3.FlowValidationResult.t()]
        }

  defstruct name: "",
            flow_validation_results: []

  field :name, 1, type: :string

  field :flow_validation_results, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.FlowValidationResult,
    json_name: "flowValidationResults"
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
