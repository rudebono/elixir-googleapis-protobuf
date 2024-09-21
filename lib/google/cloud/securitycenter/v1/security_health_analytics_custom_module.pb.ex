defmodule Google.Cloud.Securitycenter.V1.SecurityHealthAnalyticsCustomModule.EnablementState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ENABLEMENT_STATE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
  field :INHERITED, 3
end

defmodule Google.Cloud.Securitycenter.V1.SecurityHealthAnalyticsCustomModule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"

  field :enablement_state, 4,
    type: Google.Cloud.Securitycenter.V1.SecurityHealthAnalyticsCustomModule.EnablementState,
    json_name: "enablementState",
    enum: true

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :last_editor, 6, type: :string, json_name: "lastEditor", deprecated: false
  field :ancestor_module, 7, type: :string, json_name: "ancestorModule", deprecated: false

  field :custom_config, 8,
    type: Google.Cloud.Securitycenter.V1.CustomConfig,
    json_name: "customConfig"
end