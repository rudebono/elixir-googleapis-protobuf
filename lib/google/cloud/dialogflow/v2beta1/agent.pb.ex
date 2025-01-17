defmodule Google.Cloud.Dialogflow.V2beta1.Agent.MatchMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :MATCH_MODE_UNSPECIFIED, 0
  field :MATCH_MODE_HYBRID, 1
  field :MATCH_MODE_ML_ONLY, 2
end

defmodule Google.Cloud.Dialogflow.V2beta1.Agent.ApiVersion do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :API_VERSION_UNSPECIFIED, 0
  field :API_VERSION_V1, 1
  field :API_VERSION_V2, 2
  field :API_VERSION_V2_BETA_1, 3
end

defmodule Google.Cloud.Dialogflow.V2beta1.Agent.Tier do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :TIER_UNSPECIFIED, 0
  field :TIER_STANDARD, 1
  field :TIER_ENTERPRISE, 2
  field :TIER_ENTERPRISE_PLUS, 3
end

defmodule Google.Cloud.Dialogflow.V2beta1.Agent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.SetAgentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :agent, 1, type: Google.Cloud.Dialogflow.V2beta1.Agent, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Dialogflow.V2beta1.DeleteAgentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.SubAgent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :project, 1, type: :string
  field :environment, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.SearchAgentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Dialogflow.V2beta1.SearchAgentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :agents, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Agent
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.V2beta1.TrainAgentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.ExportAgentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :agent_uri, 2, type: :string, json_name: "agentUri"
end

defmodule Google.Cloud.Dialogflow.V2beta1.ExportAgentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :agent, 0

  field :agent_uri, 1, type: :string, json_name: "agentUri", oneof: 0
  field :agent_content, 2, type: :bytes, json_name: "agentContent", oneof: 0
end

defmodule Google.Cloud.Dialogflow.V2beta1.ImportAgentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :agent, 0

  field :parent, 1, type: :string, deprecated: false
  field :agent_uri, 2, type: :string, json_name: "agentUri", oneof: 0
  field :agent_content, 3, type: :bytes, json_name: "agentContent", oneof: 0
end

defmodule Google.Cloud.Dialogflow.V2beta1.RestoreAgentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :agent, 0

  field :parent, 1, type: :string, deprecated: false
  field :agent_uri, 2, type: :string, json_name: "agentUri", oneof: 0
  field :agent_content, 3, type: :bytes, json_name: "agentContent", oneof: 0
end

defmodule Google.Cloud.Dialogflow.V2beta1.GetValidationResultRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :language_code, 3, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.Agents.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.v2beta1.Agents",
    protoc_gen_elixir_version: "0.14.0"

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
