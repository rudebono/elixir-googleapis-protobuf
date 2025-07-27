defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.PatchConfig.RebootConfig do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :REBOOT_CONFIG_UNSPECIFIED, 0
  field :DEFAULT, 1
  field :ALWAYS, 2
  field :NEVER, 3
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.AptSettings.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :DIST, 1
  field :UPGRADE, 2
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.WindowsUpdateSettings.Classification do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CLASSIFICATION_UNSPECIFIED, 0
  field :CRITICAL, 1
  field :SECURITY, 2
  field :DEFINITION, 3
  field :DRIVER, 4
  field :FEATURE_PACK, 5
  field :SERVICE_PACK, 6
  field :TOOL, 7
  field :UPDATE_ROLLUP, 8
  field :UPDATE, 9
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepConfig.Interpreter do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :INTERPRETER_UNSPECIFIED, 0
  field :NONE, 3
  field :SHELL, 1
  field :POWERSHELL, 2
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.PatchConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :reboot_config, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.PatchConfig.RebootConfig,
    json_name: "rebootConfig",
    enum: true

  field :retry_strategy, 2,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.RetryStrategy,
    json_name: "retryStrategy"

  field :apt, 3, type: Google.Cloud.Osconfig.Agentendpoint.V1beta.AptSettings
  field :yum, 4, type: Google.Cloud.Osconfig.Agentendpoint.V1beta.YumSettings
  field :goo, 5, type: Google.Cloud.Osconfig.Agentendpoint.V1beta.GooSettings
  field :zypper, 6, type: Google.Cloud.Osconfig.Agentendpoint.V1beta.ZypperSettings

  field :windows_update, 7,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.WindowsUpdateSettings,
    json_name: "windowsUpdate"

  field :pre_step, 8,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStep,
    json_name: "preStep"

  field :post_step, 9,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStep,
    json_name: "postStep"

  field :mig_instances_allowed, 10, type: :bool, json_name: "migInstancesAllowed"
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.AptSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Osconfig.Agentendpoint.V1beta.AptSettings.Type, enum: true
  field :excludes, 2, repeated: true, type: :string
  field :exclusive_packages, 3, repeated: true, type: :string, json_name: "exclusivePackages"
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.YumSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :security, 1, type: :bool
  field :minimal, 2, type: :bool
  field :excludes, 3, repeated: true, type: :string
  field :exclusive_packages, 4, repeated: true, type: :string, json_name: "exclusivePackages"
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.GooSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ZypperSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :with_optional, 1, type: :bool, json_name: "withOptional"
  field :with_update, 2, type: :bool, json_name: "withUpdate"
  field :categories, 3, repeated: true, type: :string
  field :severities, 4, repeated: true, type: :string
  field :excludes, 5, repeated: true, type: :string
  field :exclusive_patches, 6, repeated: true, type: :string, json_name: "exclusivePatches"
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.WindowsUpdateSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :classifications, 1,
    repeated: true,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.WindowsUpdateSettings.Classification,
    enum: true

  field :excludes, 2, repeated: true, type: :string
  field :exclusive_patches, 3, repeated: true, type: :string, json_name: "exclusivePatches"
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.RetryStrategy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStep do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :linux_exec_step_config, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepConfig,
    json_name: "linuxExecStepConfig"

  field :windows_exec_step_config, 2,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepConfig,
    json_name: "windowsExecStepConfig"
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :executable, 0

  field :local_path, 1, type: :string, json_name: "localPath", oneof: 0

  field :gcs_object, 2,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.GcsObject,
    json_name: "gcsObject",
    oneof: 0

  field :allowed_success_codes, 3, repeated: true, type: :int32, json_name: "allowedSuccessCodes"

  field :interpreter, 4,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepConfig.Interpreter,
    enum: true
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.GcsObject do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bucket, 1, type: :string
  field :object, 2, type: :string
  field :generation_number, 3, type: :int64, json_name: "generationNumber"
end
