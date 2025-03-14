defmodule Google.Cloud.Dialogflow.Cx.V3.ExportAgentRequest.DataFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DATA_FORMAT_UNSPECIFIED, 0
  field :BLOB, 1
  field :JSON_PACKAGE, 4
end

defmodule Google.Cloud.Dialogflow.Cx.V3.RestoreAgentRequest.RestoreOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RESTORE_OPTION_UNSPECIFIED, 0
  field :KEEP, 1
  field :FALLBACK, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3.SpeechToTextSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :enable_speech_adaptation, 1, type: :bool, json_name: "enableSpeechAdaptation"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Agent.GitIntegrationSettings.GithubSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :repository_uri, 2, type: :string, json_name: "repositoryUri"
  field :tracking_branch, 3, type: :string, json_name: "trackingBranch"
  field :access_token, 4, type: :string, json_name: "accessToken"
  field :branches, 5, repeated: true, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Agent.GitIntegrationSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :git_settings, 0

  field :github_settings, 1,
    type: Google.Cloud.Dialogflow.Cx.V3.Agent.GitIntegrationSettings.GithubSettings,
    json_name: "githubSettings",
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Agent.GenAppBuilderSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :engine, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Agent.AnswerFeedbackSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :enable_answer_feedback, 1,
    type: :bool,
    json_name: "enableAnswerFeedback",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Agent.PersonalizationSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :default_end_user_metadata, 1,
    type: Google.Protobuf.Struct,
    json_name: "defaultEndUserMetadata",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Agent.ClientCertificateSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ssl_certificate, 1, type: :string, json_name: "sslCertificate", deprecated: false
  field :private_key, 2, type: :string, json_name: "privateKey", deprecated: false
  field :passphrase, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Agent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  field :enable_multi_language_training, 40,
    type: :bool,
    json_name: "enableMultiLanguageTraining",
    deprecated: false

  field :locked, 27, type: :bool

  field :advanced_settings, 22,
    type: Google.Cloud.Dialogflow.Cx.V3.AdvancedSettings,
    json_name: "advancedSettings"

  field :git_integration_settings, 30,
    type: Google.Cloud.Dialogflow.Cx.V3.Agent.GitIntegrationSettings,
    json_name: "gitIntegrationSettings"

  field :text_to_speech_settings, 31,
    type: Google.Cloud.Dialogflow.Cx.V3.TextToSpeechSettings,
    json_name: "textToSpeechSettings"

  field :gen_app_builder_settings, 33,
    proto3_optional: true,
    type: Google.Cloud.Dialogflow.Cx.V3.Agent.GenAppBuilderSettings,
    json_name: "genAppBuilderSettings"

  field :answer_feedback_settings, 38,
    type: Google.Cloud.Dialogflow.Cx.V3.Agent.AnswerFeedbackSettings,
    json_name: "answerFeedbackSettings",
    deprecated: false

  field :personalization_settings, 42,
    type: Google.Cloud.Dialogflow.Cx.V3.Agent.PersonalizationSettings,
    json_name: "personalizationSettings",
    deprecated: false

  field :client_certificate_settings, 43,
    type: Google.Cloud.Dialogflow.Cx.V3.Agent.ClientCertificateSettings,
    json_name: "clientCertificateSettings",
    deprecated: false

  field :satisfies_pzs, 45,
    proto3_optional: true,
    type: :bool,
    json_name: "satisfiesPzs",
    deprecated: false

  field :satisfies_pzi, 46,
    proto3_optional: true,
    type: :bool,
    json_name: "satisfiesPzi",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListAgentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListAgentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :agents, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.Agent
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.GetAgentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.CreateAgentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :agent, 2, type: Google.Cloud.Dialogflow.Cx.V3.Agent, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.UpdateAgentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :agent, 1, type: Google.Cloud.Dialogflow.Cx.V3.Agent, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.DeleteAgentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ExportAgentRequest.GitDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tracking_branch, 1, type: :string, json_name: "trackingBranch"
  field :commit_message, 2, type: :string, json_name: "commitMessage"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ExportAgentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :agent_uri, 2, type: :string, json_name: "agentUri", deprecated: false

  field :data_format, 3,
    type: Google.Cloud.Dialogflow.Cx.V3.ExportAgentRequest.DataFormat,
    json_name: "dataFormat",
    enum: true,
    deprecated: false

  field :environment, 5, type: :string, deprecated: false

  field :git_destination, 6,
    type: Google.Cloud.Dialogflow.Cx.V3.ExportAgentRequest.GitDestination,
    json_name: "gitDestination",
    deprecated: false

  field :include_bigquery_export_settings, 7,
    type: :bool,
    json_name: "includeBigqueryExportSettings",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ExportAgentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :agent, 0

  field :agent_uri, 1, type: :string, json_name: "agentUri", oneof: 0
  field :agent_content, 2, type: :bytes, json_name: "agentContent", oneof: 0
  field :commit_sha, 3, type: :string, json_name: "commitSha", oneof: 0
end

defmodule Google.Cloud.Dialogflow.Cx.V3.RestoreAgentRequest.GitSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tracking_branch, 1, type: :string, json_name: "trackingBranch"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.RestoreAgentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :agent, 0

  field :name, 1, type: :string, deprecated: false
  field :agent_uri, 2, type: :string, json_name: "agentUri", oneof: 0
  field :agent_content, 3, type: :bytes, json_name: "agentContent", oneof: 0

  field :git_source, 6,
    type: Google.Cloud.Dialogflow.Cx.V3.RestoreAgentRequest.GitSource,
    json_name: "gitSource",
    oneof: 0

  field :restore_option, 5,
    type: Google.Cloud.Dialogflow.Cx.V3.RestoreAgentRequest.RestoreOption,
    json_name: "restoreOption",
    enum: true
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ValidateAgentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.GetAgentValidationResultRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.AgentValidationResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string

  field :flow_validation_results, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.FlowValidationResult,
    json_name: "flowValidationResults"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.GetGenerativeSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.UpdateGenerativeSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generative_settings, 1,
    type: Google.Cloud.Dialogflow.Cx.V3.GenerativeSettings,
    json_name: "generativeSettings",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Agents.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.cx.v3.Agents",
    protoc_gen_elixir_version: "0.14.1"

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

  rpc :GetGenerativeSettings,
      Google.Cloud.Dialogflow.Cx.V3.GetGenerativeSettingsRequest,
      Google.Cloud.Dialogflow.Cx.V3.GenerativeSettings

  rpc :UpdateGenerativeSettings,
      Google.Cloud.Dialogflow.Cx.V3.UpdateGenerativeSettingsRequest,
      Google.Cloud.Dialogflow.Cx.V3.GenerativeSettings
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Agents.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3.Agents.Service
end
