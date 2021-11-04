defmodule Google.Cloud.Dialogflow.Cx.V3beta1.IntentView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :INTENT_VIEW_UNSPECIFIED | :INTENT_VIEW_PARTIAL | :INTENT_VIEW_FULL

  field :INTENT_VIEW_UNSPECIFIED, 0
  field :INTENT_VIEW_PARTIAL, 1
  field :INTENT_VIEW_FULL, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Intent.TrainingPhrase.Part do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t(),
          parameter_id: String.t()
        }

  defstruct [:text, :parameter_id]

  field :text, 1, type: :string
  field :parameter_id, 2, type: :string, json_name: "parameterId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Intent.TrainingPhrase do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          parts: [Google.Cloud.Dialogflow.Cx.V3beta1.Intent.TrainingPhrase.Part.t()],
          repeat_count: integer
        }

  defstruct [:id, :parts, :repeat_count]

  field :id, 1, type: :string

  field :parts, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Intent.TrainingPhrase.Part

  field :repeat_count, 3, type: :int32, json_name: "repeatCount"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Intent.Parameter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          entity_type: String.t(),
          is_list: boolean,
          redact: boolean
        }

  defstruct [:id, :entity_type, :is_list, :redact]

  field :id, 1, type: :string
  field :entity_type, 2, type: :string, json_name: "entityType"
  field :is_list, 3, type: :bool, json_name: "isList"
  field :redact, 4, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Intent.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Intent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          training_phrases: [Google.Cloud.Dialogflow.Cx.V3beta1.Intent.TrainingPhrase.t()],
          parameters: [Google.Cloud.Dialogflow.Cx.V3beta1.Intent.Parameter.t()],
          priority: integer,
          is_fallback: boolean,
          labels: %{String.t() => String.t()},
          description: String.t()
        }

  defstruct [
    :name,
    :display_name,
    :training_phrases,
    :parameters,
    :priority,
    :is_fallback,
    :labels,
    :description
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"

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

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListIntentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          language_code: String.t(),
          intent_view: Google.Cloud.Dialogflow.Cx.V3beta1.IntentView.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :language_code, :intent_view, :page_size, :page_token]

  field :parent, 1, type: :string
  field :language_code, 2, type: :string, json_name: "languageCode"

  field :intent_view, 5,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.IntentView,
    enum: true,
    json_name: "intentView"

  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListIntentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          intents: [Google.Cloud.Dialogflow.Cx.V3beta1.Intent.t()],
          next_page_token: String.t()
        }

  defstruct [:intents, :next_page_token]

  field :intents, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.Intent
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetIntentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          language_code: String.t()
        }

  defstruct [:name, :language_code]

  field :name, 1, type: :string
  field :language_code, 2, type: :string, json_name: "languageCode"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CreateIntentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          intent: Google.Cloud.Dialogflow.Cx.V3beta1.Intent.t() | nil,
          language_code: String.t()
        }

  defstruct [:parent, :intent, :language_code]

  field :parent, 1, type: :string
  field :intent, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.Intent
  field :language_code, 3, type: :string, json_name: "languageCode"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.UpdateIntentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          intent: Google.Cloud.Dialogflow.Cx.V3beta1.Intent.t() | nil,
          language_code: String.t(),
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:intent, :language_code, :update_mask]

  field :intent, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.Intent
  field :language_code, 2, type: :string, json_name: "languageCode"
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeleteIntentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Intents.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.cx.v3beta1.Intents"

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
