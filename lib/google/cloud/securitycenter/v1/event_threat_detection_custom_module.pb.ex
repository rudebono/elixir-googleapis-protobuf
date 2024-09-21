defmodule Google.Cloud.Securitycenter.V1.EventThreatDetectionCustomModule.EnablementState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ENABLEMENT_STATE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
  field :INHERITED, 3
end

defmodule Google.Cloud.Securitycenter.V1.EventThreatDetectionCustomModule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :config, 2, type: Google.Protobuf.Struct
  field :ancestor_module, 3, type: :string, json_name: "ancestorModule", deprecated: false

  field :enablement_state, 4,
    type: Google.Cloud.Securitycenter.V1.EventThreatDetectionCustomModule.EnablementState,
    json_name: "enablementState",
    enum: true

  field :type, 5, type: :string
  field :display_name, 6, type: :string, json_name: "displayName"
  field :description, 7, type: :string

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :last_editor, 9, type: :string, json_name: "lastEditor", deprecated: false
end