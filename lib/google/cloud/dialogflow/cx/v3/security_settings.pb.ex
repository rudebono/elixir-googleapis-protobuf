defmodule Google.Cloud.Dialogflow.Cx.V3.SecuritySettings.RedactionStrategy do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :REDACTION_STRATEGY_UNSPECIFIED | :REDACT_WITH_SERVICE

  field :REDACTION_STRATEGY_UNSPECIFIED, 0

  field :REDACT_WITH_SERVICE, 1
end

defmodule Google.Cloud.Dialogflow.Cx.V3.SecuritySettings.RedactionScope do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :REDACTION_SCOPE_UNSPECIFIED | :REDACT_DISK_STORAGE

  field :REDACTION_SCOPE_UNSPECIFIED, 0

  field :REDACT_DISK_STORAGE, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3.SecuritySettings.PurgeDataType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :PURGE_DATA_TYPE_UNSPECIFIED | :DIALOGFLOW_HISTORY

  field :PURGE_DATA_TYPE_UNSPECIFIED, 0

  field :DIALOGFLOW_HISTORY, 1
end

defmodule Google.Cloud.Dialogflow.Cx.V3.GetSecuritySettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.UpdateSecuritySettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          security_settings: Google.Cloud.Dialogflow.Cx.V3.SecuritySettings.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:security_settings, :update_mask]

  field :security_settings, 1, type: Google.Cloud.Dialogflow.Cx.V3.SecuritySettings
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListSecuritySettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListSecuritySettingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          security_settings: [Google.Cloud.Dialogflow.Cx.V3.SecuritySettings.t()],
          next_page_token: String.t()
        }

  defstruct [:security_settings, :next_page_token]

  field :security_settings, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.SecuritySettings

  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.CreateSecuritySettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          security_settings: Google.Cloud.Dialogflow.Cx.V3.SecuritySettings.t() | nil
        }

  defstruct [:parent, :security_settings]

  field :parent, 1, type: :string
  field :security_settings, 2, type: Google.Cloud.Dialogflow.Cx.V3.SecuritySettings
end

defmodule Google.Cloud.Dialogflow.Cx.V3.DeleteSecuritySettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.SecuritySettings.InsightsExportSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_insights_export: boolean
        }

  defstruct [:enable_insights_export]

  field :enable_insights_export, 1, type: :bool
end

defmodule Google.Cloud.Dialogflow.Cx.V3.SecuritySettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_retention: {atom, any},
          name: String.t(),
          display_name: String.t(),
          redaction_strategy:
            Google.Cloud.Dialogflow.Cx.V3.SecuritySettings.RedactionStrategy.t(),
          redaction_scope: Google.Cloud.Dialogflow.Cx.V3.SecuritySettings.RedactionScope.t(),
          inspect_template: String.t(),
          purge_data_types: [[Google.Cloud.Dialogflow.Cx.V3.SecuritySettings.PurgeDataType.t()]],
          insights_export_settings:
            Google.Cloud.Dialogflow.Cx.V3.SecuritySettings.InsightsExportSettings.t() | nil
        }

  defstruct [
    :data_retention,
    :name,
    :display_name,
    :redaction_strategy,
    :redaction_scope,
    :inspect_template,
    :purge_data_types,
    :insights_export_settings
  ]

  oneof :data_retention, 0
  field :name, 1, type: :string
  field :display_name, 2, type: :string

  field :redaction_strategy, 3,
    type: Google.Cloud.Dialogflow.Cx.V3.SecuritySettings.RedactionStrategy,
    enum: true

  field :redaction_scope, 4,
    type: Google.Cloud.Dialogflow.Cx.V3.SecuritySettings.RedactionScope,
    enum: true

  field :inspect_template, 9, type: :string
  field :retention_window_days, 6, type: :int32, oneof: 0

  field :purge_data_types, 8,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.SecuritySettings.PurgeDataType,
    enum: true

  field :insights_export_settings, 13,
    type: Google.Cloud.Dialogflow.Cx.V3.SecuritySettings.InsightsExportSettings
end

defmodule Google.Cloud.Dialogflow.Cx.V3.SecuritySettingsService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.cx.v3.SecuritySettingsService"

  rpc :CreateSecuritySettings,
      Google.Cloud.Dialogflow.Cx.V3.CreateSecuritySettingsRequest,
      Google.Cloud.Dialogflow.Cx.V3.SecuritySettings

  rpc :GetSecuritySettings,
      Google.Cloud.Dialogflow.Cx.V3.GetSecuritySettingsRequest,
      Google.Cloud.Dialogflow.Cx.V3.SecuritySettings

  rpc :UpdateSecuritySettings,
      Google.Cloud.Dialogflow.Cx.V3.UpdateSecuritySettingsRequest,
      Google.Cloud.Dialogflow.Cx.V3.SecuritySettings

  rpc :ListSecuritySettings,
      Google.Cloud.Dialogflow.Cx.V3.ListSecuritySettingsRequest,
      Google.Cloud.Dialogflow.Cx.V3.ListSecuritySettingsResponse

  rpc :DeleteSecuritySettings,
      Google.Cloud.Dialogflow.Cx.V3.DeleteSecuritySettingsRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Dialogflow.Cx.V3.SecuritySettingsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3.SecuritySettingsService.Service
end
