defmodule Google.Cloud.Dialogflow.Cx.V3beta1.IntentView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :INTENT_VIEW_UNSPECIFIED, 0
  field :INTENT_VIEW_PARTIAL, 1
  field :INTENT_VIEW_FULL, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ImportIntentsRequest.MergeOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MERGE_OPTION_UNSPECIFIED, 0
  field :REJECT, 1
  field :REPLACE, 2
  field :MERGE, 3
  field :RENAME, 4
  field :REPORT_CONFLICT, 5
  field :KEEP, 6
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ExportIntentsRequest.DataFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DATA_FORMAT_UNSPECIFIED, 0
  field :BLOB, 1
  field :JSON, 2
  field :CSV, 3
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Intent.TrainingPhrase.Part do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :text, 1, type: :string, deprecated: false
  field :parameter_id, 2, type: :string, json_name: "parameterId"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Intent.TrainingPhrase do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 1, type: :string, deprecated: false

  field :parts, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Intent.TrainingPhrase.Part,
    deprecated: false

  field :repeat_count, 3, type: :int32, json_name: "repeatCount"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Intent.Parameter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :entity_type, 2, type: :string, json_name: "entityType", deprecated: false
  field :is_list, 3, type: :bool, json_name: "isList"
  field :redact, 4, type: :bool
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Intent.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Intent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :training_phrases, 3,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Intent.TrainingPhrase,
    json_name: "trainingPhrases"

  field :parameters, 4, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.Intent.Parameter
  field :priority, 5, type: :int32
  field :is_fallback, 6, type: :bool, json_name: "isFallback"

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Intent.LabelsEntry,
    map: true

  field :description, 8, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListIntentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode"

  field :intent_view, 5,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.IntentView,
    json_name: "intentView",
    enum: true

  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListIntentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :intents, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.Intent
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetIntentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CreateIntentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :intent, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.Intent, deprecated: false
  field :language_code, 3, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.UpdateIntentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :intent, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.Intent, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode"
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeleteIntentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ImportIntentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :intents, 0

  field :parent, 1, type: :string, deprecated: false
  field :intents_uri, 2, type: :string, json_name: "intentsUri", oneof: 0

  field :intents_content, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.InlineSource,
    json_name: "intentsContent",
    oneof: 0

  field :merge_option, 4,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ImportIntentsRequest.MergeOption,
    json_name: "mergeOption",
    enum: true
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ImportIntentsResponse.ConflictingResources do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :intent_display_names, 1, repeated: true, type: :string, json_name: "intentDisplayNames"
  field :entity_display_names, 2, repeated: true, type: :string, json_name: "entityDisplayNames"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ImportIntentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :intents, 1, repeated: true, type: :string, deprecated: false

  field :conflicting_resources, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ImportIntentsResponse.ConflictingResources,
    json_name: "conflictingResources"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ImportIntentsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ExportIntentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :destination, 0

  field :parent, 1, type: :string, deprecated: false
  field :intents, 2, repeated: true, type: :string, deprecated: false
  field :intents_uri, 3, type: :string, json_name: "intentsUri", oneof: 0, deprecated: false

  field :intents_content_inline, 4,
    type: :bool,
    json_name: "intentsContentInline",
    oneof: 0,
    deprecated: false

  field :data_format, 5,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ExportIntentsRequest.DataFormat,
    json_name: "dataFormat",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ExportIntentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :intents, 0

  field :intents_uri, 1, type: :string, json_name: "intentsUri", oneof: 0

  field :intents_content, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.InlineDestination,
    json_name: "intentsContent",
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ExportIntentsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Intents.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.cx.v3beta1.Intents",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListIntents,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListIntentsRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListIntentsResponse

  rpc :GetIntent,
      Google.Cloud.Dialogflow.Cx.V3beta1.GetIntentRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Intent

  rpc :CreateIntent,
      Google.Cloud.Dialogflow.Cx.V3beta1.CreateIntentRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Intent

  rpc :UpdateIntent,
      Google.Cloud.Dialogflow.Cx.V3beta1.UpdateIntentRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Intent

  rpc :DeleteIntent, Google.Cloud.Dialogflow.Cx.V3beta1.DeleteIntentRequest, Google.Protobuf.Empty

  rpc :ImportIntents,
      Google.Cloud.Dialogflow.Cx.V3beta1.ImportIntentsRequest,
      Google.Longrunning.Operation

  rpc :ExportIntents,
      Google.Cloud.Dialogflow.Cx.V3beta1.ExportIntentsRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Intents.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3beta1.Intents.Service
end
