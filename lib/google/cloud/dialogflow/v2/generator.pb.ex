defmodule Google.Cloud.Dialogflow.V2.TriggerEvent do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TRIGGER_EVENT_UNSPECIFIED, 0
  field :END_OF_UTTERANCE, 1
  field :MANUAL_CALL, 2
  field :CUSTOMER_MESSAGE, 3
  field :AGENT_MESSAGE, 4
end

defmodule Google.Cloud.Dialogflow.V2.MessageEntry.Role do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ROLE_UNSPECIFIED, 0
  field :HUMAN_AGENT, 1
  field :AUTOMATED_AGENT, 2
  field :END_USER, 3
end

defmodule Google.Cloud.Dialogflow.V2.SummarizationSection.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

defmodule Google.Cloud.Dialogflow.V2.CreateGeneratorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :generator, 2, type: Google.Cloud.Dialogflow.V2.Generator, deprecated: false
  field :generator_id, 3, type: :string, json_name: "generatorId", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.GetGeneratorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.ListGeneratorsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.ListGeneratorsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generators, 1, repeated: true, type: Google.Cloud.Dialogflow.V2.Generator
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.V2.DeleteGeneratorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.UpdateGeneratorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generator, 1, type: Google.Cloud.Dialogflow.V2.Generator, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.MessageEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :role, 1,
    type: Google.Cloud.Dialogflow.V2.MessageEntry.Role,
    enum: true,
    deprecated: false

  field :text, 2, type: :string, deprecated: false
  field :language_code, 3, type: :string, json_name: "languageCode", deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.ConversationContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :message_entries, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.MessageEntry,
    json_name: "messageEntries",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.SummarizationSectionList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :summarization_sections, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.SummarizationSection,
    json_name: "summarizationSections",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.FewShotExample.ExtraInfoEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.FewShotExample do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :instruction_list, 0

  field :conversation_context, 3,
    type: Google.Cloud.Dialogflow.V2.ConversationContext,
    json_name: "conversationContext",
    deprecated: false

  field :extra_info, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.FewShotExample.ExtraInfoEntry,
    json_name: "extraInfo",
    map: true,
    deprecated: false

  field :summarization_section_list, 6,
    type: Google.Cloud.Dialogflow.V2.SummarizationSectionList,
    json_name: "summarizationSectionList",
    oneof: 0

  field :output, 7, type: Google.Cloud.Dialogflow.V2.GeneratorSuggestion, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.InferenceParameter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :max_output_tokens, 1,
    proto3_optional: true,
    type: :int32,
    json_name: "maxOutputTokens",
    deprecated: false

  field :temperature, 2, proto3_optional: true, type: :double, deprecated: false
  field :top_k, 3, proto3_optional: true, type: :int32, json_name: "topK", deprecated: false
  field :top_p, 4, proto3_optional: true, type: :double, json_name: "topP", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.SummarizationSection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string, deprecated: false
  field :definition, 2, type: :string, deprecated: false

  field :type, 3,
    type: Google.Cloud.Dialogflow.V2.SummarizationSection.Type,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.SummarizationContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :summarization_sections, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.SummarizationSection,
    json_name: "summarizationSections",
    deprecated: false

  field :few_shot_examples, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.FewShotExample,
    json_name: "fewShotExamples",
    deprecated: false

  field :version, 3, type: :string, deprecated: false

  field :output_language_code, 6,
    type: :string,
    json_name: "outputLanguageCode",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.FreeFormContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :text, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.Generator do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :context, 0

  oneof :foundation_model, 1

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false

  field :free_form_context, 11,
    type: Google.Cloud.Dialogflow.V2.FreeFormContext,
    json_name: "freeFormContext",
    oneof: 0

  field :summarization_context, 13,
    type: Google.Cloud.Dialogflow.V2.SummarizationContext,
    json_name: "summarizationContext",
    oneof: 0

  field :inference_parameter, 4,
    type: Google.Cloud.Dialogflow.V2.InferenceParameter,
    json_name: "inferenceParameter",
    deprecated: false

  field :trigger_event, 5,
    type: Google.Cloud.Dialogflow.V2.TriggerEvent,
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
end

defmodule Google.Cloud.Dialogflow.V2.FreeFormSuggestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :response, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.SummarySuggestion.SummarySection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :section, 1, type: :string, deprecated: false
  field :summary, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.SummarySuggestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :summary_sections, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.SummarySuggestion.SummarySection,
    json_name: "summarySections",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.GeneratorSuggestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :suggestion, 0

  field :free_form_suggestion, 1,
    type: Google.Cloud.Dialogflow.V2.FreeFormSuggestion,
    json_name: "freeFormSuggestion",
    oneof: 0,
    deprecated: false

  field :summary_suggestion, 2,
    type: Google.Cloud.Dialogflow.V2.SummarySuggestion,
    json_name: "summarySuggestion",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.Generators.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.v2.Generators",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CreateGenerator,
      Google.Cloud.Dialogflow.V2.CreateGeneratorRequest,
      Google.Cloud.Dialogflow.V2.Generator

  rpc :GetGenerator,
      Google.Cloud.Dialogflow.V2.GetGeneratorRequest,
      Google.Cloud.Dialogflow.V2.Generator

  rpc :ListGenerators,
      Google.Cloud.Dialogflow.V2.ListGeneratorsRequest,
      Google.Cloud.Dialogflow.V2.ListGeneratorsResponse

  rpc :DeleteGenerator, Google.Cloud.Dialogflow.V2.DeleteGeneratorRequest, Google.Protobuf.Empty

  rpc :UpdateGenerator,
      Google.Cloud.Dialogflow.V2.UpdateGeneratorRequest,
      Google.Cloud.Dialogflow.V2.Generator
end

defmodule Google.Cloud.Dialogflow.V2.Generators.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2.Generators.Service
end
