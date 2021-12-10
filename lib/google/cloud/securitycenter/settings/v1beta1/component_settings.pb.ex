defmodule Google.Cloud.Securitycenter.Settings.V1beta1.ComponentEnablementState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :COMPONENT_ENABLEMENT_STATE_UNSPECIFIED | :DISABLE | :ENABLE | :INHERIT

  field :COMPONENT_ENABLEMENT_STATE_UNSPECIFIED, 0
  field :DISABLE, 1
  field :ENABLE, 2
  field :INHERIT, 3
end
defmodule Google.Cloud.Securitycenter.Settings.V1beta1.ComponentSettings.DetectorSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Securitycenter.Settings.V1beta1.ComponentEnablementState.t()
        }

  defstruct state: :COMPONENT_ENABLEMENT_STATE_UNSPECIFIED

  field :state, 1,
    type: Google.Cloud.Securitycenter.Settings.V1beta1.ComponentEnablementState,
    enum: true
end
defmodule Google.Cloud.Securitycenter.Settings.V1beta1.ComponentSettings.DetectorSettingsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value:
            Google.Cloud.Securitycenter.Settings.V1beta1.ComponentSettings.DetectorSettings.t()
            | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string

  field :value, 2,
    type: Google.Cloud.Securitycenter.Settings.V1beta1.ComponentSettings.DetectorSettings
end
defmodule Google.Cloud.Securitycenter.Settings.V1beta1.ComponentSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          specific_settings:
            {:container_threat_detection_settings,
             Google.Cloud.Securitycenter.Settings.V1beta1.ContainerThreatDetectionSettings.t()
             | nil}
            | {:event_threat_detection_settings,
               Google.Cloud.Securitycenter.Settings.V1beta1.EventThreatDetectionSettings.t() | nil}
            | {:security_health_analytics_settings,
               Google.Cloud.Securitycenter.Settings.V1beta1.SecurityHealthAnalyticsSettings.t()
               | nil}
            | {:web_security_scanner_settings,
               Google.Cloud.Securitycenter.Settings.V1beta1.WebSecurityScanner.t() | nil},
          name: String.t(),
          state: Google.Cloud.Securitycenter.Settings.V1beta1.ComponentEnablementState.t(),
          project_service_account: String.t(),
          detector_settings: %{
            String.t() =>
              Google.Cloud.Securitycenter.Settings.V1beta1.ComponentSettings.DetectorSettings.t()
              | nil
          },
          etag: String.t(),
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct specific_settings: nil,
            name: "",
            state: :COMPONENT_ENABLEMENT_STATE_UNSPECIFIED,
            project_service_account: "",
            detector_settings: %{},
            etag: "",
            update_time: nil

  oneof :specific_settings, 0

  field :name, 1, type: :string

  field :state, 2,
    type: Google.Cloud.Securitycenter.Settings.V1beta1.ComponentEnablementState,
    enum: true

  field :project_service_account, 3,
    type: :string,
    json_name: "projectServiceAccount",
    deprecated: false

  field :detector_settings, 4,
    repeated: true,
    type: Google.Cloud.Securitycenter.Settings.V1beta1.ComponentSettings.DetectorSettingsEntry,
    json_name: "detectorSettings",
    map: true

  field :etag, 5, type: :string, deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :container_threat_detection_settings, 41,
    type: Google.Cloud.Securitycenter.Settings.V1beta1.ContainerThreatDetectionSettings,
    json_name: "containerThreatDetectionSettings",
    oneof: 0

  field :event_threat_detection_settings, 42,
    type: Google.Cloud.Securitycenter.Settings.V1beta1.EventThreatDetectionSettings,
    json_name: "eventThreatDetectionSettings",
    oneof: 0

  field :security_health_analytics_settings, 44,
    type: Google.Cloud.Securitycenter.Settings.V1beta1.SecurityHealthAnalyticsSettings,
    json_name: "securityHealthAnalyticsSettings",
    oneof: 0

  field :web_security_scanner_settings, 40,
    type: Google.Cloud.Securitycenter.Settings.V1beta1.WebSecurityScanner,
    json_name: "webSecurityScannerSettings",
    oneof: 0
end
defmodule Google.Cloud.Securitycenter.Settings.V1beta1.WebSecurityScanner do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Securitycenter.Settings.V1beta1.ContainerThreatDetectionSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Securitycenter.Settings.V1beta1.EventThreatDetectionSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Securitycenter.Settings.V1beta1.SecurityHealthAnalyticsSettings.NonOrgIamMemberSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          approved_identities: [String.t()]
        }

  defstruct approved_identities: []

  field :approved_identities, 1, repeated: true, type: :string, json_name: "approvedIdentities"
end
defmodule Google.Cloud.Securitycenter.Settings.V1beta1.SecurityHealthAnalyticsSettings.AdminServiceAccountSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          approved_identities: [String.t()]
        }

  defstruct approved_identities: []

  field :approved_identities, 1, repeated: true, type: :string, json_name: "approvedIdentities"
end
defmodule Google.Cloud.Securitycenter.Settings.V1beta1.SecurityHealthAnalyticsSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          non_org_iam_member_settings:
            Google.Cloud.Securitycenter.Settings.V1beta1.SecurityHealthAnalyticsSettings.NonOrgIamMemberSettings.t()
            | nil,
          admin_service_account_settings:
            Google.Cloud.Securitycenter.Settings.V1beta1.SecurityHealthAnalyticsSettings.AdminServiceAccountSettings.t()
            | nil
        }

  defstruct non_org_iam_member_settings: nil,
            admin_service_account_settings: nil

  field :non_org_iam_member_settings, 1,
    type:
      Google.Cloud.Securitycenter.Settings.V1beta1.SecurityHealthAnalyticsSettings.NonOrgIamMemberSettings,
    json_name: "nonOrgIamMemberSettings"

  field :admin_service_account_settings, 2,
    type:
      Google.Cloud.Securitycenter.Settings.V1beta1.SecurityHealthAnalyticsSettings.AdminServiceAccountSettings,
    json_name: "adminServiceAccountSettings"
end
