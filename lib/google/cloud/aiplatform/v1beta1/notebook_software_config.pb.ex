defmodule Google.Cloud.Aiplatform.V1beta1.PostStartupScriptConfig.PostStartupScriptBehavior do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :POST_STARTUP_SCRIPT_BEHAVIOR_UNSPECIFIED, 0
  field :RUN_ONCE, 1
  field :RUN_EVERY_START, 2
  field :DOWNLOAD_AND_RUN_EVERY_START, 3
end

defmodule Google.Cloud.Aiplatform.V1beta1.PostStartupScriptConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :post_startup_script, 1, type: :string, json_name: "postStartupScript", deprecated: false

  field :post_startup_script_url, 2,
    type: :string,
    json_name: "postStartupScriptUrl",
    deprecated: false

  field :post_startup_script_behavior, 3,
    type: Google.Cloud.Aiplatform.V1beta1.PostStartupScriptConfig.PostStartupScriptBehavior,
    json_name: "postStartupScriptBehavior",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.NotebookSoftwareConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :env, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.EnvVar, deprecated: false

  field :post_startup_script_config, 2,
    type: Google.Cloud.Aiplatform.V1beta1.PostStartupScriptConfig,
    json_name: "postStartupScriptConfig",
    deprecated: false
end
