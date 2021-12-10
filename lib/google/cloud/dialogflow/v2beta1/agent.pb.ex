defmodule Google.Cloud.Dialogflow.V2beta1.Agent.MatchMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :MATCH_MODE_UNSPECIFIED | :MATCH_MODE_HYBRID | :MATCH_MODE_ML_ONLY

  field :MATCH_MODE_UNSPECIFIED, 0
  field :MATCH_MODE_HYBRID, 1
  field :MATCH_MODE_ML_ONLY, 2
end
defmodule Google.Cloud.Dialogflow.V2beta1.Agent.ApiVersion do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :API_VERSION_UNSPECIFIED
          | :API_VERSION_V1
          | :API_VERSION_V2
          | :API_VERSION_V2_BETA_1

  field :API_VERSION_UNSPECIFIED, 0
  field :API_VERSION_V1, 1
  field :API_VERSION_V2, 2
  field :API_VERSION_V2_BETA_1, 3
end
defmodule Google.Cloud.Dialogflow.V2beta1.Agent.Tier do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :TIER_UNSPECIFIED | :TIER_STANDARD | :TIER_ENTERPRISE | :TIER_ENTERPRISE_PLUS

  field :TIER_UNSPECIFIED, 0
  field :TIER_STANDARD, 1
  field :TIER_ENTERPRISE, 2
  field :TIER_ENTERPRISE_PLUS, 3
end
defmodule Google.Cloud.Dialogflow.V2beta1.Agent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          display_name: String.t(),
          default_language_code: String.t(),
          supported_language_codes: [String.t()],
          time_zone: String.t(),
          description: String.t(),
          avatar_uri: String.t(),
          enable_logging: boolean,
          match_mode: Google.Cloud.Dialogflow.V2beta1.Agent.MatchMode.t(),
          classification_threshold: float | :infinity | :negative_infinity | :nan,
          api_version: Google.Cloud.Dialogflow.V2beta1.Agent.ApiVersion.t(),
          tier: Google.Cloud.Dialogflow.V2beta1.Agent.Tier.t()
        }

  defstruct parent: "",
            display_name: "",
            default_language_code: "",
            supported_language_codes: [],
            time_zone: "",
            description: "",
            avatar_uri: "",
            enable_logging: false,
            match_mode: :MATCH_MODE_UNSPECIFIED,
            classification_threshold: 0.0,
            api_version: :API_VERSION_UNSPECIFIED,
            tier: :TIER_UNSPECIFIED

  field :parent, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :default_language_code, 3, type: :string, json_name: "defaultLanguageCode"

  field :supported_language_codes, 4,
    repeated: true,
    type: :string,
    json_name: "supportedLanguageCodes"

  field :time_zone, 5, type: :string, json_name: "timeZone"
  field :description, 6, type: :string
  field :avatar_uri, 7, type: :string, json_name: "avatarUri"
  field :enable_logging, 8, type: :bool, json_name: "enableLogging"

  field :match_mode, 9,
    type: Google.Cloud.Dialogflow.V2beta1.Agent.MatchMode,
    json_name: "matchMode",
    enum: true,
    deprecated: true

  field :classification_threshold, 10, type: :float, json_name: "classificationThreshold"

  field :api_version, 14,
    type: Google.Cloud.Dialogflow.V2beta1.Agent.ApiVersion,
    json_name: "apiVersion",
    enum: true

  field :tier, 15, type: Google.Cloud.Dialogflow.V2beta1.Agent.Tier, enum: true
end
defmodule Google.Cloud.Dialogflow.V2beta1.GetAgentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t()
        }

  defstruct parent: ""

  field :parent, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2beta1.SetAgentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          agent: Google.Cloud.Dialogflow.V2beta1.Agent.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct agent: nil,
            update_mask: nil

  field :agent, 1, type: Google.Cloud.Dialogflow.V2beta1.Agent, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Dialogflow.V2beta1.DeleteAgentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t()
        }

  defstruct parent: ""

  field :parent, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2beta1.SubAgent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project: String.t(),
          environment: String.t()
        }

  defstruct project: "",
            environment: ""

  field :project, 1, type: :string
  field :environment, 2, type: :string
end
defmodule Google.Cloud.Dialogflow.V2beta1.SearchAgentsRequest do
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
defmodule Google.Cloud.Dialogflow.V2beta1.SearchAgentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          agents: [Google.Cloud.Dialogflow.V2beta1.Agent.t()],
          next_page_token: String.t()
        }

  defstruct agents: [],
            next_page_token: ""

  field :agents, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Agent
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dialogflow.V2beta1.TrainAgentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t()
        }

  defstruct parent: ""

  field :parent, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2beta1.ExportAgentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          agent_uri: String.t()
        }

  defstruct parent: "",
            agent_uri: ""

  field :parent, 1, type: :string, deprecated: false
  field :agent_uri, 2, type: :string, json_name: "agentUri"
end
defmodule Google.Cloud.Dialogflow.V2beta1.ExportAgentResponse do
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
defmodule Google.Cloud.Dialogflow.V2beta1.ImportAgentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          agent: {:agent_uri, String.t()} | {:agent_content, binary},
          parent: String.t()
        }

  defstruct agent: nil,
            parent: ""

  oneof :agent, 0

  field :parent, 1, type: :string, deprecated: false
  field :agent_uri, 2, type: :string, json_name: "agentUri", oneof: 0
  field :agent_content, 3, type: :bytes, json_name: "agentContent", oneof: 0
end
defmodule Google.Cloud.Dialogflow.V2beta1.RestoreAgentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          agent: {:agent_uri, String.t()} | {:agent_content, binary},
          parent: String.t()
        }

  defstruct agent: nil,
            parent: ""

  oneof :agent, 0

  field :parent, 1, type: :string, deprecated: false
  field :agent_uri, 2, type: :string, json_name: "agentUri", oneof: 0
  field :agent_content, 3, type: :bytes, json_name: "agentContent", oneof: 0
end
defmodule Google.Cloud.Dialogflow.V2beta1.GetValidationResultRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          language_code: String.t()
        }

  defstruct parent: "",
            language_code: ""

  field :parent, 1, type: :string, deprecated: false
  field :language_code, 3, type: :string, json_name: "languageCode", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2beta1.Agents.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.v2beta1.Agents"

  rpc :GetAgent,
      Google.Cloud.Dialogflow.V2beta1.GetAgentRequest,
      Google.Cloud.Dialogflow.V2beta1.Agent

  rpc :SetAgent,
      Google.Cloud.Dialogflow.V2beta1.SetAgentRequest,
      Google.Cloud.Dialogflow.V2beta1.Agent

  rpc :DeleteAgent, Google.Cloud.Dialogflow.V2beta1.DeleteAgentRequest, Google.Protobuf.Empty

  rpc :SearchAgents,
      Google.Cloud.Dialogflow.V2beta1.SearchAgentsRequest,
      Google.Cloud.Dialogflow.V2beta1.SearchAgentsResponse

  rpc :TrainAgent, Google.Cloud.Dialogflow.V2beta1.TrainAgentRequest, Google.Longrunning.Operation

  rpc :ExportAgent,
      Google.Cloud.Dialogflow.V2beta1.ExportAgentRequest,
      Google.Longrunning.Operation

  rpc :ImportAgent,
      Google.Cloud.Dialogflow.V2beta1.ImportAgentRequest,
      Google.Longrunning.Operation

  rpc :RestoreAgent,
      Google.Cloud.Dialogflow.V2beta1.RestoreAgentRequest,
      Google.Longrunning.Operation

  rpc :GetValidationResult,
      Google.Cloud.Dialogflow.V2beta1.GetValidationResultRequest,
      Google.Cloud.Dialogflow.V2beta1.ValidationResult
end

defmodule Google.Cloud.Dialogflow.V2beta1.Agents.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2beta1.Agents.Service
end
