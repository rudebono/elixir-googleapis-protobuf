defmodule Google.Cloud.Geminidataanalytics.V1beta.DataAgentContext.ContextVersion do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CONTEXT_VERSION_UNSPECIFIED, 0
  field :STAGING, 1
  field :PUBLISHED, 2
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.ListMessagesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.ListMessagesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :messages, 1, repeated: true, type: Google.Cloud.Geminidataanalytics.V1beta.StorageMessage
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.StorageMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :message_id, 1, type: :string, json_name: "messageId"
  field :message, 2, type: Google.Cloud.Geminidataanalytics.V1beta.Message
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.ChatRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :context_provider, 0

  field :inline_context, 101,
    type: Google.Cloud.Geminidataanalytics.V1beta.Context,
    json_name: "inlineContext",
    oneof: 0,
    deprecated: false

  field :conversation_reference, 103,
    type: Google.Cloud.Geminidataanalytics.V1beta.ConversationReference,
    json_name: "conversationReference",
    oneof: 0,
    deprecated: false

  field :data_agent_context, 104,
    type: Google.Cloud.Geminidataanalytics.V1beta.DataAgentContext,
    json_name: "dataAgentContext",
    oneof: 0,
    deprecated: false

  field :project, 1, type: :string, deprecated: true
  field :parent, 3, type: :string, deprecated: false

  field :messages, 2,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1beta.Message,
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.DataAgentContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_agent, 1, type: :string, json_name: "dataAgent", deprecated: false

  field :credentials, 2,
    type: Google.Cloud.Geminidataanalytics.V1beta.Credentials,
    deprecated: false

  field :context_version, 3,
    type: Google.Cloud.Geminidataanalytics.V1beta.DataAgentContext.ContextVersion,
    json_name: "contextVersion",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.ConversationReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :conversation, 1, type: :string, deprecated: false

  field :data_agent_context, 3,
    type: Google.Cloud.Geminidataanalytics.V1beta.DataAgentContext,
    json_name: "dataAgentContext",
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.Message do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :kind, 0

  field :user_message, 2,
    type: Google.Cloud.Geminidataanalytics.V1beta.UserMessage,
    json_name: "userMessage",
    oneof: 0

  field :system_message, 3,
    type: Google.Cloud.Geminidataanalytics.V1beta.SystemMessage,
    json_name: "systemMessage",
    oneof: 0

  field :timestamp, 1, type: Google.Protobuf.Timestamp, deprecated: false
  field :message_id, 4, type: :string, json_name: "messageId", deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.UserMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :kind, 0

  field :text, 1, type: :string, oneof: 0
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.SystemMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :kind, 0

  field :text, 1, type: Google.Cloud.Geminidataanalytics.V1beta.TextMessage, oneof: 0
  field :schema, 2, type: Google.Cloud.Geminidataanalytics.V1beta.SchemaMessage, oneof: 0
  field :data, 3, type: Google.Cloud.Geminidataanalytics.V1beta.DataMessage, oneof: 0
  field :analysis, 4, type: Google.Cloud.Geminidataanalytics.V1beta.AnalysisMessage, oneof: 0
  field :chart, 5, type: Google.Cloud.Geminidataanalytics.V1beta.ChartMessage, oneof: 0
  field :error, 6, type: Google.Cloud.Geminidataanalytics.V1beta.ErrorMessage, oneof: 0
  field :group_id, 12, proto3_optional: true, type: :int32, json_name: "groupId"
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.TextMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parts, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.SchemaMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :kind, 0

  field :query, 1, type: Google.Cloud.Geminidataanalytics.V1beta.SchemaQuery, oneof: 0
  field :result, 2, type: Google.Cloud.Geminidataanalytics.V1beta.SchemaResult, oneof: 0
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.SchemaQuery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :question, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.SchemaResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :datasources, 1,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1beta.Datasource,
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.DataMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :kind, 0

  field :query, 1, type: Google.Cloud.Geminidataanalytics.V1beta.DataQuery, oneof: 0
  field :generated_sql, 2, type: :string, json_name: "generatedSql", oneof: 0
  field :result, 3, type: Google.Cloud.Geminidataanalytics.V1beta.DataResult, oneof: 0

  field :generated_looker_query, 4,
    type: Google.Cloud.Geminidataanalytics.V1beta.LookerQuery,
    json_name: "generatedLookerQuery",
    oneof: 0

  field :big_query_job, 5,
    type: Google.Cloud.Geminidataanalytics.V1beta.BigQueryJob,
    json_name: "bigQueryJob",
    oneof: 0
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.LookerQuery.Filter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :field, 1, type: :string, deprecated: false
  field :value, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.LookerQuery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :explore, 2, type: :string, deprecated: false
  field :fields, 3, repeated: true, type: :string, deprecated: false

  field :filters, 4,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1beta.LookerQuery.Filter,
    deprecated: false

  field :sorts, 5, repeated: true, type: :string, deprecated: false
  field :limit, 6, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.DataQuery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :question, 1, type: :string, deprecated: false
  field :name, 3, type: :string, deprecated: false

  field :datasources, 2,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1beta.Datasource,
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.DataResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 3, type: :string, deprecated: false
  field :schema, 5, type: Google.Cloud.Geminidataanalytics.V1beta.Schema, deprecated: false
  field :data, 2, repeated: true, type: Google.Protobuf.Struct, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.BigQueryJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :job_id, 2, type: :string, json_name: "jobId", deprecated: false
  field :location, 5, type: :string, deprecated: false

  field :destination_table, 3,
    type: Google.Cloud.Geminidataanalytics.V1beta.BigQueryTableReference,
    json_name: "destinationTable",
    deprecated: false

  field :schema, 7, type: Google.Cloud.Geminidataanalytics.V1beta.Schema, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.AnalysisMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :kind, 0

  field :query, 1, type: Google.Cloud.Geminidataanalytics.V1beta.AnalysisQuery, oneof: 0

  field :progress_event, 2,
    type: Google.Cloud.Geminidataanalytics.V1beta.AnalysisEvent,
    json_name: "progressEvent",
    oneof: 0
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.AnalysisQuery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :question, 1, type: :string, deprecated: false

  field :data_result_names, 2,
    repeated: true,
    type: :string,
    json_name: "dataResultNames",
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.AnalysisEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :kind, 0

  field :planner_reasoning, 2, type: :string, json_name: "plannerReasoning", oneof: 0
  field :coder_instruction, 3, type: :string, json_name: "coderInstruction", oneof: 0
  field :code, 4, type: :string, oneof: 0
  field :execution_output, 5, type: :string, json_name: "executionOutput", oneof: 0
  field :execution_error, 6, type: :string, json_name: "executionError", oneof: 0
  field :result_vega_chart_json, 7, type: :string, json_name: "resultVegaChartJson", oneof: 0
  field :result_natural_language, 8, type: :string, json_name: "resultNaturalLanguage", oneof: 0
  field :result_csv_data, 9, type: :string, json_name: "resultCsvData", oneof: 0
  field :result_reference_data, 10, type: :string, json_name: "resultReferenceData", oneof: 0
  field :error, 11, type: :string, oneof: 0
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.ChartMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :kind, 0

  field :query, 1, type: Google.Cloud.Geminidataanalytics.V1beta.ChartQuery, oneof: 0
  field :result, 2, type: Google.Cloud.Geminidataanalytics.V1beta.ChartResult, oneof: 0
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.ChartQuery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instructions, 1, type: :string, deprecated: false
  field :data_result_name, 2, type: :string, json_name: "dataResultName", deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.ChartResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :vega_config, 2, type: Google.Protobuf.Struct, json_name: "vegaConfig", deprecated: false
  field :image, 3, type: Google.Cloud.Geminidataanalytics.V1beta.Blob, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.ErrorMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :text, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.Blob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mime_type, 1, type: :string, json_name: "mimeType", deprecated: false
  field :data, 2, type: :bytes, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.DataChatService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.geminidataanalytics.v1beta.DataChatService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :Chat,
      Google.Cloud.Geminidataanalytics.V1beta.ChatRequest,
      stream(Google.Cloud.Geminidataanalytics.V1beta.Message)

  rpc :CreateConversation,
      Google.Cloud.Geminidataanalytics.V1beta.CreateConversationRequest,
      Google.Cloud.Geminidataanalytics.V1beta.Conversation

  rpc :GetConversation,
      Google.Cloud.Geminidataanalytics.V1beta.GetConversationRequest,
      Google.Cloud.Geminidataanalytics.V1beta.Conversation

  rpc :ListConversations,
      Google.Cloud.Geminidataanalytics.V1beta.ListConversationsRequest,
      Google.Cloud.Geminidataanalytics.V1beta.ListConversationsResponse

  rpc :ListMessages,
      Google.Cloud.Geminidataanalytics.V1beta.ListMessagesRequest,
      Google.Cloud.Geminidataanalytics.V1beta.ListMessagesResponse
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.DataChatService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Geminidataanalytics.V1beta.DataChatService.Service
end
