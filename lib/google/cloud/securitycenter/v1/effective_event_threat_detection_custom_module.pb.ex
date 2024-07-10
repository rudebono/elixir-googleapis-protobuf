defmodule Google.Cloud.Securitycenter.V1.EffectiveEventThreatDetectionCustomModule.EnablementState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ENABLEMENT_STATE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
end

defmodule Google.Cloud.Securitycenter.V1.EffectiveEventThreatDetectionCustomModule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :config, 2, type: Google.Protobuf.Struct, deprecated: false

  field :enablement_state, 3,
    type:
      Google.Cloud.Securitycenter.V1.EffectiveEventThreatDetectionCustomModule.EnablementState,
    json_name: "enablementState",
    enum: true,
    deprecated: false

  field :type, 4, type: :string, deprecated: false
  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false
  field :description, 6, type: :string, deprecated: false
end