defmodule Google.Cloud.Dialogflow.V2.ConversationModel.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :UNDEPLOYED, 2
  field :DEPLOYING, 3
  field :DEPLOYED, 4
  field :UNDEPLOYING, 5
  field :DELETING, 6
  field :FAILED, 7
  field :PENDING, 8
end

defmodule Google.Cloud.Dialogflow.V2.ConversationModel.ModelType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :MODEL_TYPE_UNSPECIFIED, 0
  field :SMART_REPLY_DUAL_ENCODER_MODEL, 2
  field :SMART_REPLY_BERT_MODEL, 6
end

defmodule Google.Cloud.Dialogflow.V2.CreateConversationModelOperationMetadata.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
  field :CANCELLED, 4
  field :CANCELLING, 5
  field :TRAINING, 6
end

defmodule Google.Cloud.Dialogflow.V2.CreateConversationModelEvaluationOperationMetadata.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :INITIALIZING, 1
  field :RUNNING, 2
  field :CANCELLED, 3
  field :SUCCEEDED, 4
  field :FAILED, 5
end

defmodule Google.Cloud.Dialogflow.V2.ConversationModel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :model_metadata, 0

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :datasets, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.InputDataset,
    deprecated: false

  field :state, 7,
    type: Google.Cloud.Dialogflow.V2.ConversationModel.State,
    enum: true,
    deprecated: false

  field :language_code, 19, type: :string, json_name: "languageCode"

  field :article_suggestion_model_metadata, 8,
    type: Google.Cloud.Dialogflow.V2.ArticleSuggestionModelMetadata,
    json_name: "articleSuggestionModelMetadata",
    oneof: 0

  field :smart_reply_model_metadata, 9,
    type: Google.Cloud.Dialogflow.V2.SmartReplyModelMetadata,
    json_name: "smartReplyModelMetadata",
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.V2.ConversationModelEvaluation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :metrics, 0

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :evaluation_config, 6,
    type: Google.Cloud.Dialogflow.V2.EvaluationConfig,
    json_name: "evaluationConfig",
    deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :smart_reply_metrics, 5,
    type: Google.Cloud.Dialogflow.V2.SmartReplyMetrics,
    json_name: "smartReplyMetrics",
    oneof: 0,
    deprecated: false

  field :raw_human_eval_template_csv, 8,
    type: :string,
    json_name: "rawHumanEvalTemplateCsv",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.EvaluationConfig.SmartReplyConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :allowlist_document, 1, type: :string, json_name: "allowlistDocument", deprecated: false
  field :max_result_count, 2, type: :int32, json_name: "maxResultCount", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.EvaluationConfig.SmartComposeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :allowlist_document, 1, type: :string, json_name: "allowlistDocument", deprecated: false
  field :max_result_count, 2, type: :int32, json_name: "maxResultCount", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.EvaluationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :model_specific_config, 0

  field :datasets, 3,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.InputDataset,
    deprecated: false

  field :smart_reply_config, 2,
    type: Google.Cloud.Dialogflow.V2.EvaluationConfig.SmartReplyConfig,
    json_name: "smartReplyConfig",
    oneof: 0

  field :smart_compose_config, 4,
    type: Google.Cloud.Dialogflow.V2.EvaluationConfig.SmartComposeConfig,
    json_name: "smartComposeConfig",
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.V2.InputDataset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :dataset, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.ArticleSuggestionModelMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :training_model_type, 3,
    type: Google.Cloud.Dialogflow.V2.ConversationModel.ModelType,
    json_name: "trainingModelType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.SmartReplyModelMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :training_model_type, 6,
    type: Google.Cloud.Dialogflow.V2.ConversationModel.ModelType,
    json_name: "trainingModelType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.SmartReplyMetrics.TopNMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :n, 1, type: :int32
  field :recall, 2, type: :float
end

defmodule Google.Cloud.Dialogflow.V2.SmartReplyMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :allowlist_coverage, 1, type: :float, json_name: "allowlistCoverage"

  field :top_n_metrics, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.SmartReplyMetrics.TopNMetrics,
    json_name: "topNMetrics"

  field :conversation_count, 3, type: :int64, json_name: "conversationCount"
end

defmodule Google.Cloud.Dialogflow.V2.CreateConversationModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string

  field :conversation_model, 2,
    type: Google.Cloud.Dialogflow.V2.ConversationModel,
    json_name: "conversationModel",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.GetConversationModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.ListConversationModelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.ListConversationModelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :conversation_models, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.ConversationModel,
    json_name: "conversationModels"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.V2.DeleteConversationModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.DeployConversationModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.UndeployConversationModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.GetConversationModelEvaluationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.ListConversationModelEvaluationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.ListConversationModelEvaluationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :conversation_model_evaluations, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.ConversationModelEvaluation,
    json_name: "conversationModelEvaluations"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.V2.CreateConversationModelEvaluationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :conversation_model_evaluation, 2,
    type: Google.Cloud.Dialogflow.V2.ConversationModelEvaluation,
    json_name: "conversationModelEvaluation",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.CreateConversationModelOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :conversation_model, 1, type: :string, json_name: "conversationModel"

  field :state, 2,
    type: Google.Cloud.Dialogflow.V2.CreateConversationModelOperationMetadata.State,
    enum: true

  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
end

defmodule Google.Cloud.Dialogflow.V2.DeployConversationModelOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :conversation_model, 1, type: :string, json_name: "conversationModel"
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
end

defmodule Google.Cloud.Dialogflow.V2.UndeployConversationModelOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :conversation_model, 1, type: :string, json_name: "conversationModel"
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
end

defmodule Google.Cloud.Dialogflow.V2.DeleteConversationModelOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :conversation_model, 1, type: :string, json_name: "conversationModel"
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
end

defmodule Google.Cloud.Dialogflow.V2.CreateConversationModelEvaluationOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :conversation_model_evaluation, 1, type: :string, json_name: "conversationModelEvaluation"
  field :conversation_model, 4, type: :string, json_name: "conversationModel"

  field :state, 2,
    type: Google.Cloud.Dialogflow.V2.CreateConversationModelEvaluationOperationMetadata.State,
    enum: true

  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
end

defmodule Google.Cloud.Dialogflow.V2.ConversationModels.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.v2.ConversationModels",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreateConversationModel,
      Google.Cloud.Dialogflow.V2.CreateConversationModelRequest,
      Google.Longrunning.Operation

  rpc :GetConversationModel,
      Google.Cloud.Dialogflow.V2.GetConversationModelRequest,
      Google.Cloud.Dialogflow.V2.ConversationModel

  rpc :ListConversationModels,
      Google.Cloud.Dialogflow.V2.ListConversationModelsRequest,
      Google.Cloud.Dialogflow.V2.ListConversationModelsResponse

  rpc :DeleteConversationModel,
      Google.Cloud.Dialogflow.V2.DeleteConversationModelRequest,
      Google.Longrunning.Operation

  rpc :DeployConversationModel,
      Google.Cloud.Dialogflow.V2.DeployConversationModelRequest,
      Google.Longrunning.Operation

  rpc :UndeployConversationModel,
      Google.Cloud.Dialogflow.V2.UndeployConversationModelRequest,
      Google.Longrunning.Operation

  rpc :GetConversationModelEvaluation,
      Google.Cloud.Dialogflow.V2.GetConversationModelEvaluationRequest,
      Google.Cloud.Dialogflow.V2.ConversationModelEvaluation

  rpc :ListConversationModelEvaluations,
      Google.Cloud.Dialogflow.V2.ListConversationModelEvaluationsRequest,
      Google.Cloud.Dialogflow.V2.ListConversationModelEvaluationsResponse

  rpc :CreateConversationModelEvaluation,
      Google.Cloud.Dialogflow.V2.CreateConversationModelEvaluationRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Dialogflow.V2.ConversationModels.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2.ConversationModels.Service
end