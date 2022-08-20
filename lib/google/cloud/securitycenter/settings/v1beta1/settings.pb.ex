defmodule Google.Cloud.Securitycenter.Settings.V1beta1.Settings.OnboardingState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Securitycenter.Settings.V1beta1.ComponentEnablementState,
    enum: true
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.Settings.ComponentSettingsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Securitycenter.Settings.V1beta1.ComponentSettings
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.Settings.DetectorGroupSettingsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string

  field :value, 2,
    type: Google.Cloud.Securitycenter.Settings.V1beta1.Settings.DetectorGroupSettings
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.Settings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string

  field :billing_settings, 2,
    type: Google.Cloud.Securitycenter.Settings.V1beta1.BillingSettings,
    json_name: "billingSettings"

  field :state, 3,
    type: Google.Cloud.Securitycenter.Settings.V1beta1.Settings.OnboardingState,
    enum: true

  field :org_service_account, 5, type: :string, json_name: "orgServiceAccount", deprecated: false

  field :sink_settings, 6,
    type: Google.Cloud.Securitycenter.Settings.V1beta1.SinkSettings,
    json_name: "sinkSettings"

  field :component_settings, 7,
    repeated: true,
    type: Google.Cloud.Securitycenter.Settings.V1beta1.Settings.ComponentSettingsEntry,
    json_name: "componentSettings",
    map: true

  field :detector_group_settings, 8,
    repeated: true,
    type: Google.Cloud.Securitycenter.Settings.V1beta1.Settings.DetectorGroupSettingsEntry,
    json_name: "detectorGroupSettings",
    map: true

  field :etag, 9, type: :string

  field :update_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end