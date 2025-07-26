defmodule Google.Cloud.Securityposture.V1.EnablementState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ENABLEMENT_STATE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
end

defmodule Google.Cloud.Securityposture.V1.SecurityHealthAnalyticsModule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :module_name, 1, type: :string, json_name: "moduleName", deprecated: false

  field :module_enablement_state, 2,
    type: Google.Cloud.Securityposture.V1.EnablementState,
    json_name: "moduleEnablementState",
    enum: true
end

defmodule Google.Cloud.Securityposture.V1.SecurityHealthAnalyticsCustomModule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :config, 3, type: Google.Cloud.Securityposture.V1.CustomConfig, deprecated: false

  field :module_enablement_state, 4,
    type: Google.Cloud.Securityposture.V1.EnablementState,
    json_name: "moduleEnablementState",
    enum: true
end
