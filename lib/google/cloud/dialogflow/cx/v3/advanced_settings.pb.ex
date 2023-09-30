defmodule Google.Cloud.Dialogflow.Cx.V3.AdvancedSettings.DtmfSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :enabled, 1, type: :bool
  field :max_digits, 2, type: :int32, json_name: "maxDigits"
  field :finish_digit, 3, type: :string, json_name: "finishDigit"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.AdvancedSettings.LoggingSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :enable_stackdriver_logging, 2, type: :bool, json_name: "enableStackdriverLogging"
  field :enable_interaction_logging, 3, type: :bool, json_name: "enableInteractionLogging"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.AdvancedSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :audio_export_gcs_destination, 2,
    type: Google.Cloud.Dialogflow.Cx.V3.GcsDestination,
    json_name: "audioExportGcsDestination"

  field :dtmf_settings, 5,
    type: Google.Cloud.Dialogflow.Cx.V3.AdvancedSettings.DtmfSettings,
    json_name: "dtmfSettings"

  field :logging_settings, 6,
    type: Google.Cloud.Dialogflow.Cx.V3.AdvancedSettings.LoggingSettings,
    json_name: "loggingSettings"
end