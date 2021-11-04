defmodule Google.Cloud.Dialogflow.V2beta1.Environment.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :STOPPED | :LOADING | :RUNNING

  field :STATE_UNSPECIFIED, 0
  field :STOPPED, 1
  field :LOADING, 2
  field :RUNNING, 3
end

defmodule Google.Cloud.Dialogflow.V2beta1.Environment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          agent_version: String.t(),
          state: Google.Cloud.Dialogflow.V2beta1.Environment.State.t(),
          update_time: Google.Protobuf.Timestamp.t() | nil,
          text_to_speech_settings: Google.Cloud.Dialogflow.V2beta1.TextToSpeechSettings.t() | nil,
          fulfillment: Google.Cloud.Dialogflow.V2beta1.Fulfillment.t() | nil
        }

  defstruct [
    :name,
    :description,
    :agent_version,
    :state,
    :update_time,
    :text_to_speech_settings,
    :fulfillment
  ]

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :agent_version, 3, type: :string, json_name: "agentVersion"
  field :state, 4, type: Google.Cloud.Dialogflow.V2beta1.Environment.State, enum: true
  field :update_time, 5, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :text_to_speech_settings, 7,
    type: Google.Cloud.Dialogflow.V2beta1.TextToSpeechSettings,
    json_name: "textToSpeechSettings"

  field :fulfillment, 8, type: Google.Cloud.Dialogflow.V2beta1.Fulfillment

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2beta1.TextToSpeechSettings.SynthesizeSpeechConfigsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Dialogflow.V2beta1.SynthesizeSpeechConfig.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Dialogflow.V2beta1.SynthesizeSpeechConfig

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2beta1.TextToSpeechSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_text_to_speech: boolean,
          output_audio_encoding: Google.Cloud.Dialogflow.V2beta1.OutputAudioEncoding.t(),
          sample_rate_hertz: integer,
          synthesize_speech_configs: %{
            String.t() => Google.Cloud.Dialogflow.V2beta1.SynthesizeSpeechConfig.t() | nil
          }
        }

  defstruct [
    :enable_text_to_speech,
    :output_audio_encoding,
    :sample_rate_hertz,
    :synthesize_speech_configs
  ]

  field :enable_text_to_speech, 1, type: :bool, json_name: "enableTextToSpeech"

  field :output_audio_encoding, 2,
    type: Google.Cloud.Dialogflow.V2beta1.OutputAudioEncoding,
    enum: true,
    json_name: "outputAudioEncoding"

  field :sample_rate_hertz, 3, type: :int32, json_name: "sampleRateHertz"

  field :synthesize_speech_configs, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.TextToSpeechSettings.SynthesizeSpeechConfigsEntry,
    json_name: "synthesizeSpeechConfigs",
    map: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListEnvironmentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListEnvironmentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          environments: [Google.Cloud.Dialogflow.V2beta1.Environment.t()],
          next_page_token: String.t()
        }

  defstruct [:environments, :next_page_token]

  field :environments, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Environment
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2beta1.GetEnvironmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2beta1.CreateEnvironmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          environment: Google.Cloud.Dialogflow.V2beta1.Environment.t() | nil,
          environment_id: String.t()
        }

  defstruct [:parent, :environment, :environment_id]

  field :parent, 1, type: :string
  field :environment, 2, type: Google.Cloud.Dialogflow.V2beta1.Environment
  field :environment_id, 3, type: :string, json_name: "environmentId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2beta1.UpdateEnvironmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          environment: Google.Cloud.Dialogflow.V2beta1.Environment.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          allow_load_to_draft_and_discard_changes: boolean
        }

  defstruct [:environment, :update_mask, :allow_load_to_draft_and_discard_changes]

  field :environment, 1, type: Google.Cloud.Dialogflow.V2beta1.Environment
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :allow_load_to_draft_and_discard_changes, 3,
    type: :bool,
    json_name: "allowLoadToDraftAndDiscardChanges"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2beta1.DeleteEnvironmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2beta1.GetEnvironmentHistoryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2beta1.EnvironmentHistory.Entry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          agent_version: String.t(),
          description: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:agent_version, :description, :create_time]

  field :agent_version, 1, type: :string, json_name: "agentVersion"
  field :description, 2, type: :string
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2beta1.EnvironmentHistory do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          entries: [Google.Cloud.Dialogflow.V2beta1.EnvironmentHistory.Entry.t()],
          next_page_token: String.t()
        }

  defstruct [:parent, :entries, :next_page_token]

  field :parent, 1, type: :string

  field :entries, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.EnvironmentHistory.Entry

  field :next_page_token, 3, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2beta1.Environments.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.v2beta1.Environments"

  rpc :ListEnvironments,
      Google.Cloud.Dialogflow.V2beta1.ListEnvironmentsRequest,
      Google.Cloud.Dialogflow.V2beta1.ListEnvironmentsResponse

  rpc :GetEnvironment,
      Google.Cloud.Dialogflow.V2beta1.GetEnvironmentRequest,
      Google.Cloud.Dialogflow.V2beta1.Environment

  rpc :CreateEnvironment,
      Google.Cloud.Dialogflow.V2beta1.CreateEnvironmentRequest,
      Google.Cloud.Dialogflow.V2beta1.Environment

  rpc :UpdateEnvironment,
      Google.Cloud.Dialogflow.V2beta1.UpdateEnvironmentRequest,
      Google.Cloud.Dialogflow.V2beta1.Environment

  rpc :DeleteEnvironment,
      Google.Cloud.Dialogflow.V2beta1.DeleteEnvironmentRequest,
      Google.Protobuf.Empty

  rpc :GetEnvironmentHistory,
      Google.Cloud.Dialogflow.V2beta1.GetEnvironmentHistoryRequest,
      Google.Cloud.Dialogflow.V2beta1.EnvironmentHistory
end

defmodule Google.Cloud.Dialogflow.V2beta1.Environments.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2beta1.Environments.Service
end
