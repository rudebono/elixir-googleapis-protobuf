defmodule Google.Cloud.Securitycenter.Settings.V1beta1.Settings.OnboardingState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ONBOARDING_STATE_UNSPECIFIED
          | :ENABLED
          | :DISABLED
          | :BILLING_SELECTED
          | :PROVIDERS_SELECTED
          | :RESOURCES_SELECTED
          | :ORG_SERVICE_ACCOUNT_CREATED

  field :ONBOARDING_STATE_UNSPECIFIED, 0

  field :ENABLED, 1

  field :DISABLED, 2

  field :BILLING_SELECTED, 3

  field :PROVIDERS_SELECTED, 4

  field :RESOURCES_SELECTED, 5

  field :ORG_SERVICE_ACCOUNT_CREATED, 6
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.Settings.DetectorGroupSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Securitycenter.Settings.V1beta1.ComponentEnablementState.t()
        }

  defstruct [:state]

  field :state, 1,
    type: Google.Cloud.Securitycenter.Settings.V1beta1.ComponentEnablementState,
    enum: true
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.Settings.ComponentSettingsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Securitycenter.Settings.V1beta1.ComponentSettings.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Securitycenter.Settings.V1beta1.ComponentSettings
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.Settings.DetectorGroupSettingsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value:
            Google.Cloud.Securitycenter.Settings.V1beta1.Settings.DetectorGroupSettings.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string

  field :value, 2,
    type: Google.Cloud.Securitycenter.Settings.V1beta1.Settings.DetectorGroupSettings
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.Settings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          billing_settings:
            Google.Cloud.Securitycenter.Settings.V1beta1.BillingSettings.t() | nil,
          state: Google.Cloud.Securitycenter.Settings.V1beta1.Settings.OnboardingState.t(),
          org_service_account: String.t(),
          sink_settings: Google.Cloud.Securitycenter.Settings.V1beta1.SinkSettings.t() | nil,
          component_settings: %{
            String.t() => Google.Cloud.Securitycenter.Settings.V1beta1.ComponentSettings.t() | nil
          },
          detector_group_settings: %{
            String.t() =>
              Google.Cloud.Securitycenter.Settings.V1beta1.Settings.DetectorGroupSettings.t()
              | nil
          },
          etag: String.t(),
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [
    :name,
    :billing_settings,
    :state,
    :org_service_account,
    :sink_settings,
    :component_settings,
    :detector_group_settings,
    :etag,
    :update_time
  ]

  field :name, 1, type: :string
  field :billing_settings, 2, type: Google.Cloud.Securitycenter.Settings.V1beta1.BillingSettings

  field :state, 3,
    type: Google.Cloud.Securitycenter.Settings.V1beta1.Settings.OnboardingState,
    enum: true

  field :org_service_account, 5, type: :string
  field :sink_settings, 6, type: Google.Cloud.Securitycenter.Settings.V1beta1.SinkSettings

  field :component_settings, 7,
    repeated: true,
    type: Google.Cloud.Securitycenter.Settings.V1beta1.Settings.ComponentSettingsEntry,
    map: true

  field :detector_group_settings, 8,
    repeated: true,
    type: Google.Cloud.Securitycenter.Settings.V1beta1.Settings.DetectorGroupSettingsEntry,
    map: true

  field :etag, 9, type: :string
  field :update_time, 10, type: Google.Protobuf.Timestamp
end
