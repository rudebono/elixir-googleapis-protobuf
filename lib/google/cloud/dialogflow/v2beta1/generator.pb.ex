defmodule Google.Cloud.Dialogflow.V2beta1.TriggerEvent do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TRIGGER_EVENT_UNSPECIFIED, 0
  field :END_OF_UTTERANCE, 1
  field :MANUAL_CALL, 2
  field :CUSTOMER_MESSAGE, 3
  field :AGENT_MESSAGE, 4
end

defmodule Google.Cloud.Dialogflow.V2beta1.MessageEntry.Role do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ROLE_UNSPECIFIED, 0
  field :HUMAN_AGENT, 1
  field :AUTOMATED_AGENT, 2
  field :END_USER, 3
end

defmodule Google.Cloud.Dialogflow.V2beta1.SummarizationSection.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :SITUATION, 1
  field :ACTION, 2
  field :RESOLUTION, 3
  field :REASON_FOR_CANCELLATION, 4
  field :CUSTOMER_SATISFACTION, 5
  field :ENTITIES, 6
  field :CUSTOMER_DEFINED, 7
  field :SITUATION_CONCISE, 9
  field :ACTION_CONCISE, 10
end

defmodule Google.Cloud.Dialogflow.V2beta1.RaiSettings.RaiCategoryConfig.RaiCategory do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :RAI_CATEGORY_UNSPECIFIED, 0
  field :DANGEROUS_CONTENT, 1
  field :SEXUALLY_EXPLICIT, 2
  field :HARASSMENT, 3
  field :HATE_SPEECH, 4
end

defmodule Google.Cloud.Dialogflow.V2beta1.RaiSettings.RaiCategoryConfig.SensitivityLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SENSITIVITY_LEVEL_UNSPECIFIED, 0
  field :BLOCK_MOST, 1
  field :BLOCK_SOME, 2
  field :BLOCK_FEW, 3
  field :BLOCK_NONE, 4
end

defmodule Google.Cloud.Dialogflow.V2beta1.CreateGeneratorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :generator, 2, type: Google.Cloud.Dialogflow.V2beta1.Generator, deprecated: false
  field :generator_id, 3, type: :string, json_name: "generatorId", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.GetGeneratorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListGeneratorsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListGeneratorsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :generators, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Generator
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.V2beta1.DeleteGeneratorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.UpdateGeneratorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :generator, 1, type: Google.Cloud.Dialogflow.V2beta1.Generator, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.MessageEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :role, 1,
    type: Google.Cloud.Dialogflow.V2beta1.MessageEntry.Role,
    enum: true,
    deprecated: false

  field :text, 2, type: :string, deprecated: false
  field :language_code, 3, type: :string, json_name: "languageCode", deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.ConversationContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :message_entries, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.MessageEntry,
    json_name: "messageEntries",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.SummarizationSectionList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :summarization_sections, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.SummarizationSection,
    json_name: "summarizationSections",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.FewShotExample.ExtraInfoEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.FewShotExample do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :instruction_list, 0

  field :conversation_context, 3,
    type: Google.Cloud.Dialogflow.V2beta1.ConversationContext,
    json_name: "conversationContext",
    deprecated: false

  field :extra_info, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.FewShotExample.ExtraInfoEntry,
    json_name: "extraInfo",
    map: true,
    deprecated: false

  field :summarization_section_list, 6,
    type: Google.Cloud.Dialogflow.V2beta1.SummarizationSectionList,
    json_name: "summarizationSectionList",
    oneof: 0

  field :output, 7, type: Google.Cloud.Dialogflow.V2beta1.GeneratorSuggestion, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.InferenceParameter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :max_output_tokens, 1,
    proto3_optional: true,
    type: :int32,
    json_name: "maxOutputTokens",
    deprecated: false

  field :temperature, 2, proto3_optional: true, type: :double, deprecated: false
  field :top_k, 3, proto3_optional: true, type: :int32, json_name: "topK", deprecated: false
  field :top_p, 4, proto3_optional: true, type: :double, json_name: "topP", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.AgentCoachingContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :overarching_guidance, 7,
    type: :string,
    json_name: "overarchingGuidance",
    deprecated: false

  field :instructions, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.AgentCoachingInstruction,
    deprecated: false

  field :version, 2, type: :string, deprecated: false

  field :output_language_code, 9,
    type: :string,
    json_name: "outputLanguageCode",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.SummarizationSection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string, deprecated: false
  field :definition, 2, type: :string, deprecated: false

  field :type, 3,
    type: Google.Cloud.Dialogflow.V2beta1.SummarizationSection.Type,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.SummarizationContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :summarization_sections, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.SummarizationSection,
    json_name: "summarizationSections",
    deprecated: false

  field :few_shot_examples, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.FewShotExample,
    json_name: "fewShotExamples",
    deprecated: false

  field :version, 3, type: :string, deprecated: false

  field :output_language_code, 6,
    type: :string,
    json_name: "outputLanguageCode",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.FreeFormContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :text, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.Generator do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :context, 0

  oneof :foundation_model, 1

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false

  field :free_form_context, 11,
    type: Google.Cloud.Dialogflow.V2beta1.FreeFormContext,
    json_name: "freeFormContext",
    oneof: 0

  field :agent_coaching_context, 12,
    type: Google.Cloud.Dialogflow.V2beta1.AgentCoachingContext,
    json_name: "agentCoachingContext",
    oneof: 0

  field :summarization_context, 13,
    type: Google.Cloud.Dialogflow.V2beta1.SummarizationContext,
    json_name: "summarizationContext",
    oneof: 0

  field :inference_parameter, 4,
    type: Google.Cloud.Dialogflow.V2beta1.InferenceParameter,
    json_name: "inferenceParameter",
    deprecated: false

  field :trigger_event, 5,
    type: Google.Cloud.Dialogflow.V2beta1.TriggerEvent,
    json_name: "triggerEvent",
    enum: true,
    deprecated: false

  field :published_model, 15,
    type: :string,
    json_name: "publishedModel",
    oneof: 1,
    deprecated: false

  field :create_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :tools, 14, repeated: true, type: :string, deprecated: false

  field :suggestion_deduping_config, 23,
    type: Google.Cloud.Dialogflow.V2beta1.SuggestionDedupingConfig,
    json_name: "suggestionDedupingConfig",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.FreeFormSuggestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :response, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.SummarySuggestion.SummarySection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :section, 1, type: :string, deprecated: false
  field :summary, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.SummarySuggestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :summary_sections, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.SummarySuggestion.SummarySection,
    json_name: "summarySections",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.AgentCoachingSuggestion.Sources do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instruction_indexes, 2,
    repeated: true,
    type: :int32,
    json_name: "instructionIndexes",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.AgentCoachingSuggestion.DuplicateCheckResult.DuplicateSuggestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :answer_record, 1, type: :string, json_name: "answerRecord", deprecated: false

  field :sources, 2,
    type: Google.Cloud.Dialogflow.V2beta1.AgentCoachingSuggestion.Sources,
    deprecated: false

  field :suggestion_index, 3, type: :int32, json_name: "suggestionIndex", deprecated: false
  field :similarity_score, 4, type: :float, json_name: "similarityScore", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.AgentCoachingSuggestion.DuplicateCheckResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :duplicate_suggestions, 1,
    repeated: true,
    type:
      Google.Cloud.Dialogflow.V2beta1.AgentCoachingSuggestion.DuplicateCheckResult.DuplicateSuggestion,
    json_name: "duplicateSuggestions",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.AgentCoachingSuggestion.AgentActionSuggestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :agent_action, 1, type: :string, json_name: "agentAction", deprecated: false

  field :sources, 2,
    type: Google.Cloud.Dialogflow.V2beta1.AgentCoachingSuggestion.Sources,
    deprecated: false

  field :duplicate_check_result, 3,
    type: Google.Cloud.Dialogflow.V2beta1.AgentCoachingSuggestion.DuplicateCheckResult,
    json_name: "duplicateCheckResult",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.AgentCoachingSuggestion.SampleResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :response_text, 1, type: :string, json_name: "responseText", deprecated: false

  field :sources, 2,
    type: Google.Cloud.Dialogflow.V2beta1.AgentCoachingSuggestion.Sources,
    deprecated: false

  field :duplicate_check_result, 3,
    type: Google.Cloud.Dialogflow.V2beta1.AgentCoachingSuggestion.DuplicateCheckResult,
    json_name: "duplicateCheckResult",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.AgentCoachingSuggestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :applicable_instructions, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.AgentCoachingInstruction,
    json_name: "applicableInstructions",
    deprecated: false

  field :agent_action_suggestions, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.AgentCoachingSuggestion.AgentActionSuggestion,
    json_name: "agentActionSuggestions",
    deprecated: false

  field :sample_responses, 3,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.AgentCoachingSuggestion.SampleResponse,
    json_name: "sampleResponses",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.GeneratorSuggestion.ToolCallInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :tool_call, 1,
    type: Google.Cloud.Dialogflow.V2beta1.ToolCall,
    json_name: "toolCall",
    deprecated: false

  field :tool_call_result, 2,
    type: Google.Cloud.Dialogflow.V2beta1.ToolCallResult,
    json_name: "toolCallResult",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.GeneratorSuggestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :suggestion, 0

  field :free_form_suggestion, 1,
    type: Google.Cloud.Dialogflow.V2beta1.FreeFormSuggestion,
    json_name: "freeFormSuggestion",
    oneof: 0,
    deprecated: false

  field :summary_suggestion, 2,
    type: Google.Cloud.Dialogflow.V2beta1.SummarySuggestion,
    json_name: "summarySuggestion",
    oneof: 0,
    deprecated: false

  field :agent_coaching_suggestion, 3,
    type: Google.Cloud.Dialogflow.V2beta1.AgentCoachingSuggestion,
    json_name: "agentCoachingSuggestion",
    oneof: 0,
    deprecated: false

  field :tool_call_info, 9,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.GeneratorSuggestion.ToolCallInfo,
    json_name: "toolCallInfo",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.SuggestionDedupingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enable_deduping, 1, type: :bool, json_name: "enableDeduping", deprecated: false

  field :similarity_threshold, 2,
    type: :float,
    json_name: "similarityThreshold",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.RaiSettings.RaiCategoryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :category, 1,
    type: Google.Cloud.Dialogflow.V2beta1.RaiSettings.RaiCategoryConfig.RaiCategory,
    enum: true,
    deprecated: false

  field :sensitivity_level, 2,
    type: Google.Cloud.Dialogflow.V2beta1.RaiSettings.RaiCategoryConfig.SensitivityLevel,
    json_name: "sensitivityLevel",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.RaiSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :rai_category_configs, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.RaiSettings.RaiCategoryConfig,
    json_name: "raiCategoryConfigs"
end

defmodule Google.Cloud.Dialogflow.V2beta1.Generators.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.v2beta1.Generators",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateGenerator,
      Google.Cloud.Dialogflow.V2beta1.CreateGeneratorRequest,
      Google.Cloud.Dialogflow.V2beta1.Generator

  rpc :GetGenerator,
      Google.Cloud.Dialogflow.V2beta1.GetGeneratorRequest,
      Google.Cloud.Dialogflow.V2beta1.Generator

  rpc :ListGenerators,
      Google.Cloud.Dialogflow.V2beta1.ListGeneratorsRequest,
      Google.Cloud.Dialogflow.V2beta1.ListGeneratorsResponse

  rpc :DeleteGenerator,
      Google.Cloud.Dialogflow.V2beta1.DeleteGeneratorRequest,
      Google.Protobuf.Empty

  rpc :UpdateGenerator,
      Google.Cloud.Dialogflow.V2beta1.UpdateGeneratorRequest,
      Google.Cloud.Dialogflow.V2beta1.Generator
end

defmodule Google.Cloud.Dialogflow.V2beta1.Generators.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2beta1.Generators.Service
end
