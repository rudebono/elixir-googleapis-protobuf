defmodule Google.Cloud.Securitycenter.V1.EffectiveSecurityHealthAnalyticsCustomModule.EnablementState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ENABLEMENT_STATE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
end

defmodule Google.Cloud.Securitycenter.V1.EffectiveSecurityHealthAnalyticsCustomModule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :custom_config, 2,
    type: Google.Cloud.Securitycenter.V1.CustomConfig,
    json_name: "customConfig",
    deprecated: false

  field :enablement_state, 3,
    type:
      Google.Cloud.Securitycenter.V1.EffectiveSecurityHealthAnalyticsCustomModule.EnablementState,
    json_name: "enablementState",
    enum: true,
    deprecated: false

  field :display_name, 4, type: :string, json_name: "displayName", deprecated: false
end
