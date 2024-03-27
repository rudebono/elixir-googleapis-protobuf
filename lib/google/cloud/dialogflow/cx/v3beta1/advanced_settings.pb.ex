defmodule Google.Cloud.Dialogflow.Cx.V3beta1.AdvancedSettings.SpeechSettings.ModelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.AdvancedSettings.SpeechSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :endpointer_sensitivity, 1, type: :int32, json_name: "endpointerSensitivity"
  field :no_speech_timeout, 2, type: Google.Protobuf.Duration, json_name: "noSpeechTimeout"
  field :use_timeout_based_endpointing, 3, type: :bool, json_name: "useTimeoutBasedEndpointing"

  field :models, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.AdvancedSettings.SpeechSettings.ModelsEntry,
    map: true
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.AdvancedSettings.DtmfSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :enabled, 1, type: :bool
  field :max_digits, 2, type: :int32, json_name: "maxDigits"
  field :finish_digit, 3, type: :string, json_name: "finishDigit"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.AdvancedSettings.LoggingSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :enable_stackdriver_logging, 2, type: :bool, json_name: "enableStackdriverLogging"
  field :enable_interaction_logging, 3, type: :bool, json_name: "enableInteractionLogging"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.AdvancedSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :audio_export_gcs_destination, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.GcsDestination,
    json_name: "audioExportGcsDestination"

  field :speech_settings, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.AdvancedSettings.SpeechSettings,
    json_name: "speechSettings"

  field :dtmf_settings, 5,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.AdvancedSettings.DtmfSettings,
    json_name: "dtmfSettings"

  field :logging_settings, 6,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.AdvancedSettings.LoggingSettings,
    json_name: "loggingSettings"
end