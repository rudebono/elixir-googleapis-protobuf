defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SecuritySettings.RedactionStrategy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :REDACTION_STRATEGY_UNSPECIFIED, 0
  field :REDACT_WITH_SERVICE, 1
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SecuritySettings.RedactionScope do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :REDACTION_SCOPE_UNSPECIFIED, 0
  field :REDACT_DISK_STORAGE, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SecuritySettings.RetentionStrategy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :RETENTION_STRATEGY_UNSPECIFIED, 0
  field :REMOVE_AFTER_CONVERSATION, 1
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SecuritySettings.PurgeDataType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PURGE_DATA_TYPE_UNSPECIFIED, 0
  field :DIALOGFLOW_HISTORY, 1
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SecuritySettings.AudioExportSettings.AudioFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :AUDIO_FORMAT_UNSPECIFIED, 0
  field :MULAW, 1
  field :MP3, 2
  field :OGG, 3
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetSecuritySettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.UpdateSecuritySettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :security_settings, 1,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SecuritySettings,
    json_name: "securitySettings",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListSecuritySettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListSecuritySettingsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :security_settings, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SecuritySettings,
    json_name: "securitySettings"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CreateSecuritySettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :security_settings, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SecuritySettings,
    json_name: "securitySettings",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeleteSecuritySettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SecuritySettings.AudioExportSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :gcs_bucket, 1, type: :string, json_name: "gcsBucket"
  field :audio_export_pattern, 2, type: :string, json_name: "audioExportPattern"
  field :enable_audio_redaction, 3, type: :bool, json_name: "enableAudioRedaction"

  field :audio_format, 4,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SecuritySettings.AudioExportSettings.AudioFormat,
    json_name: "audioFormat",
    enum: true

  field :store_tts_audio, 6, type: :bool, json_name: "storeTtsAudio"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SecuritySettings.InsightsExportSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :enable_insights_export, 1, type: :bool, json_name: "enableInsightsExport"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SecuritySettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :data_retention, 0

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :redaction_strategy, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SecuritySettings.RedactionStrategy,
    json_name: "redactionStrategy",
    enum: true

  field :redaction_scope, 4,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SecuritySettings.RedactionScope,
    json_name: "redactionScope",
    enum: true

  field :inspect_template, 9, type: :string, json_name: "inspectTemplate", deprecated: false

  field :deidentify_template, 17,
    type: :string,
    json_name: "deidentifyTemplate",
    deprecated: false

  field :retention_window_days, 6, type: :int32, json_name: "retentionWindowDays", oneof: 0

  field :retention_strategy, 7,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SecuritySettings.RetentionStrategy,
    json_name: "retentionStrategy",
    enum: true,
    oneof: 0

  field :purge_data_types, 8,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SecuritySettings.PurgeDataType,
    json_name: "purgeDataTypes",
    enum: true

  field :audio_export_settings, 12,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SecuritySettings.AudioExportSettings,
    json_name: "audioExportSettings"

  field :insights_export_settings, 13,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SecuritySettings.InsightsExportSettings,
    json_name: "insightsExportSettings"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SecuritySettingsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.cx.v3beta1.SecuritySettingsService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreateSecuritySettings,
      Google.Cloud.Dialogflow.Cx.V3beta1.CreateSecuritySettingsRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.SecuritySettings

  rpc :GetSecuritySettings,
      Google.Cloud.Dialogflow.Cx.V3beta1.GetSecuritySettingsRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.SecuritySettings

  rpc :UpdateSecuritySettings,
      Google.Cloud.Dialogflow.Cx.V3beta1.UpdateSecuritySettingsRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.SecuritySettings

  rpc :ListSecuritySettings,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListSecuritySettingsRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListSecuritySettingsResponse

  rpc :DeleteSecuritySettings,
      Google.Cloud.Dialogflow.Cx.V3beta1.DeleteSecuritySettingsRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SecuritySettingsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3beta1.SecuritySettingsService.Service
end