defmodule Google.Cloud.Dialogflow.Cx.V3.NluSettings.ModelType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MODEL_TYPE_UNSPECIFIED, 0
  field :MODEL_TYPE_STANDARD, 1
  field :MODEL_TYPE_ADVANCED, 3
end

defmodule Google.Cloud.Dialogflow.Cx.V3.NluSettings.ModelTrainingMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MODEL_TRAINING_MODE_UNSPECIFIED, 0
  field :MODEL_TRAINING_MODE_AUTOMATIC, 1
  field :MODEL_TRAINING_MODE_MANUAL, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ImportFlowRequest.ImportOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :IMPORT_OPTION_UNSPECIFIED, 0
  field :KEEP, 1
  field :FALLBACK, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3.NluSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :model_type, 1,
    type: Google.Cloud.Dialogflow.Cx.V3.NluSettings.ModelType,
    json_name: "modelType",
    enum: true

  field :classification_threshold, 3, type: :float, json_name: "classificationThreshold"

  field :model_training_mode, 4,
    type: Google.Cloud.Dialogflow.Cx.V3.NluSettings.ModelTrainingMode,
    json_name: "modelTrainingMode",
    enum: true
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Flow.MultiLanguageSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :enable_multi_language_detection, 1,
    type: :bool,
    json_name: "enableMultiLanguageDetection",
    deprecated: false

  field :supported_response_language_codes, 2,
    repeated: true,
    type: :string,
    json_name: "supportedResponseLanguageCodes",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Flow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string

  field :transition_routes, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.TransitionRoute,
    json_name: "transitionRoutes"

  field :event_handlers, 10,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.EventHandler,
    json_name: "eventHandlers"

  field :transition_route_groups, 15,
    repeated: true,
    type: :string,
    json_name: "transitionRouteGroups",
    deprecated: false

  field :nlu_settings, 11,
    type: Google.Cloud.Dialogflow.Cx.V3.NluSettings,
    json_name: "nluSettings"

  field :advanced_settings, 14,
    type: Google.Cloud.Dialogflow.Cx.V3.AdvancedSettings,
    json_name: "advancedSettings"

  field :knowledge_connector_settings, 18,
    type: Google.Cloud.Dialogflow.Cx.V3.KnowledgeConnectorSettings,
    json_name: "knowledgeConnectorSettings",
    deprecated: false

  field :multi_language_settings, 28,
    type: Google.Cloud.Dialogflow.Cx.V3.Flow.MultiLanguageSettings,
    json_name: "multiLanguageSettings",
    deprecated: false

  field :locked, 30, type: :bool
end

defmodule Google.Cloud.Dialogflow.Cx.V3.CreateFlowRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :flow, 2, type: Google.Cloud.Dialogflow.Cx.V3.Flow, deprecated: false
  field :language_code, 3, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.DeleteFlowRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListFlowsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :language_code, 4, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListFlowsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :flows, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.Flow
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.GetFlowRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.UpdateFlowRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :flow, 1, type: Google.Cloud.Dialogflow.Cx.V3.Flow, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :language_code, 3, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.TrainFlowRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ValidateFlowRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.GetFlowValidationResultRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.FlowValidationResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string

  field :validation_messages, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.ValidationMessage,
    json_name: "validationMessages"

  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ImportFlowRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :flow, 0

  field :parent, 1, type: :string, deprecated: false
  field :flow_uri, 2, type: :string, json_name: "flowUri", oneof: 0
  field :flow_content, 3, type: :bytes, json_name: "flowContent", oneof: 0

  field :import_option, 4,
    type: Google.Cloud.Dialogflow.Cx.V3.ImportFlowRequest.ImportOption,
    json_name: "importOption",
    enum: true

  field :flow_import_strategy, 5,
    type: Google.Cloud.Dialogflow.Cx.V3.FlowImportStrategy,
    json_name: "flowImportStrategy",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.FlowImportStrategy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :global_import_strategy, 1,
    type: Google.Cloud.Dialogflow.Cx.V3.ImportStrategy,
    json_name: "globalImportStrategy",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ImportFlowResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :flow, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ExportFlowRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :flow_uri, 2, type: :string, json_name: "flowUri", deprecated: false

  field :include_referenced_flows, 4,
    type: :bool,
    json_name: "includeReferencedFlows",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ExportFlowResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :flow, 0

  field :flow_uri, 1, type: :string, json_name: "flowUri", oneof: 0
  field :flow_content, 2, type: :bytes, json_name: "flowContent", oneof: 0
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Flows.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.cx.v3.Flows",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CreateFlow,
      Google.Cloud.Dialogflow.Cx.V3.CreateFlowRequest,
      Google.Cloud.Dialogflow.Cx.V3.Flow

  rpc :DeleteFlow, Google.Cloud.Dialogflow.Cx.V3.DeleteFlowRequest, Google.Protobuf.Empty

  rpc :ListFlows,
      Google.Cloud.Dialogflow.Cx.V3.ListFlowsRequest,
      Google.Cloud.Dialogflow.Cx.V3.ListFlowsResponse

  rpc :GetFlow, Google.Cloud.Dialogflow.Cx.V3.GetFlowRequest, Google.Cloud.Dialogflow.Cx.V3.Flow

  rpc :UpdateFlow,
      Google.Cloud.Dialogflow.Cx.V3.UpdateFlowRequest,
      Google.Cloud.Dialogflow.Cx.V3.Flow

  rpc :TrainFlow, Google.Cloud.Dialogflow.Cx.V3.TrainFlowRequest, Google.Longrunning.Operation

  rpc :ValidateFlow,
      Google.Cloud.Dialogflow.Cx.V3.ValidateFlowRequest,
      Google.Cloud.Dialogflow.Cx.V3.FlowValidationResult

  rpc :GetFlowValidationResult,
      Google.Cloud.Dialogflow.Cx.V3.GetFlowValidationResultRequest,
      Google.Cloud.Dialogflow.Cx.V3.FlowValidationResult

  rpc :ImportFlow, Google.Cloud.Dialogflow.Cx.V3.ImportFlowRequest, Google.Longrunning.Operation

  rpc :ExportFlow, Google.Cloud.Dialogflow.Cx.V3.ExportFlowRequest, Google.Longrunning.Operation
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Flows.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3.Flows.Service
end
