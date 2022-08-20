defmodule Google.Cloud.Dialogflow.Cx.V3beta1.IntentView do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :INTENT_VIEW_UNSPECIFIED, 0
  field :INTENT_VIEW_PARTIAL, 1
  field :INTENT_VIEW_FULL, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Intent.TrainingPhrase.Part do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :text, 1, type: :string, deprecated: false
  field :parameter_id, 2, type: :string, json_name: "parameterId"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Intent.TrainingPhrase do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 1, type: :string

  field :parts, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Intent.TrainingPhrase.Part,
    deprecated: false

  field :repeat_count, 3, type: :int32, json_name: "repeatCount"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Intent.Parameter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :entity_type, 2, type: :string, json_name: "entityType", deprecated: false
  field :is_list, 3, type: :bool, json_name: "isList"
  field :redact, 4, type: :bool
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Intent.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Intent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :intents, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.Intent
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetIntentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CreateIntentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :intent, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.Intent, deprecated: false
  field :language_code, 3, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.UpdateIntentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :intent, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.Intent, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode"
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeleteIntentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Intents.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.dialogflow.cx.v3beta1.Intents",
    protoc_gen_elixir_version: "0.11.0"

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
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Intents.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3beta1.Intents.Service
end