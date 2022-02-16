defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.PatchConfig.RebootConfig do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :REBOOT_CONFIG_UNSPECIFIED | :DEFAULT | :ALWAYS | :NEVER

  field :REBOOT_CONFIG_UNSPECIFIED, 0
  field :DEFAULT, 1
  field :ALWAYS, 2
  field :NEVER, 3
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.AptSettings.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TYPE_UNSPECIFIED | :DIST | :UPGRADE

  field :TYPE_UNSPECIFIED, 0
  field :DIST, 1
  field :UPGRADE, 2
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.WindowsUpdateSettings.Classification do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CLASSIFICATION_UNSPECIFIED
          | :CRITICAL
          | :SECURITY
          | :DEFINITION
          | :DRIVER
          | :FEATURE_PACK
          | :SERVICE_PACK
          | :TOOL
          | :UPDATE_ROLLUP
          | :UPDATE

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
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :INTERPRETER_UNSPECIFIED | :NONE | :SHELL | :POWERSHELL

  field :INTERPRETER_UNSPECIFIED, 0
  field :NONE, 3
  field :SHELL, 1
  field :POWERSHELL, 2
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.PatchConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reboot_config: Google.Cloud.Osconfig.Agentendpoint.V1beta.PatchConfig.RebootConfig.t(),
          retry_strategy: Google.Cloud.Osconfig.Agentendpoint.V1beta.RetryStrategy.t() | nil,
          apt: Google.Cloud.Osconfig.Agentendpoint.V1beta.AptSettings.t() | nil,
          yum: Google.Cloud.Osconfig.Agentendpoint.V1beta.YumSettings.t() | nil,
          goo: Google.Cloud.Osconfig.Agentendpoint.V1beta.GooSettings.t() | nil,
          zypper: Google.Cloud.Osconfig.Agentendpoint.V1beta.ZypperSettings.t() | nil,
          windows_update:
            Google.Cloud.Osconfig.Agentendpoint.V1beta.WindowsUpdateSettings.t() | nil,
          pre_step: Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStep.t() | nil,
          post_step: Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStep.t() | nil,
          mig_instances_allowed: boolean
        }

  defstruct reboot_config: :REBOOT_CONFIG_UNSPECIFIED,
            retry_strategy: nil,
            apt: nil,
            yum: nil,
            goo: nil,
            zypper: nil,
            windows_update: nil,
            pre_step: nil,
            post_step: nil,
            mig_instances_allowed: false

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Osconfig.Agentendpoint.V1beta.AptSettings.Type.t(),
          excludes: [String.t()],
          exclusive_packages: [String.t()]
        }

  defstruct type: :TYPE_UNSPECIFIED,
            excludes: [],
            exclusive_packages: []

  field :type, 1, type: Google.Cloud.Osconfig.Agentendpoint.V1beta.AptSettings.Type, enum: true
  field :excludes, 2, repeated: true, type: :string
  field :exclusive_packages, 3, repeated: true, type: :string, json_name: "exclusivePackages"
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.YumSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          security: boolean,
          minimal: boolean,
          excludes: [String.t()],
          exclusive_packages: [String.t()]
        }

  defstruct security: false,
            minimal: false,
            excludes: [],
            exclusive_packages: []

  field :security, 1, type: :bool
  field :minimal, 2, type: :bool
  field :excludes, 3, repeated: true, type: :string
  field :exclusive_packages, 4, repeated: true, type: :string, json_name: "exclusivePackages"
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.GooSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ZypperSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          with_optional: boolean,
          with_update: boolean,
          categories: [String.t()],
          severities: [String.t()],
          excludes: [String.t()],
          exclusive_patches: [String.t()]
        }

  defstruct with_optional: false,
            with_update: false,
            categories: [],
            severities: [],
            excludes: [],
            exclusive_patches: []

  field :with_optional, 1, type: :bool, json_name: "withOptional"
  field :with_update, 2, type: :bool, json_name: "withUpdate"
  field :categories, 3, repeated: true, type: :string
  field :severities, 4, repeated: true, type: :string
  field :excludes, 5, repeated: true, type: :string
  field :exclusive_patches, 6, repeated: true, type: :string, json_name: "exclusivePatches"
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.WindowsUpdateSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          classifications: [
            Google.Cloud.Osconfig.Agentendpoint.V1beta.WindowsUpdateSettings.Classification.t()
          ],
          excludes: [String.t()],
          exclusive_patches: [String.t()]
        }

  defstruct classifications: [],
            excludes: [],
            exclusive_patches: []

  field :classifications, 1,
    repeated: true,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.WindowsUpdateSettings.Classification,
    enum: true

  field :excludes, 2, repeated: true, type: :string
  field :exclusive_patches, 3, repeated: true, type: :string, json_name: "exclusivePatches"
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.RetryStrategy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enabled: boolean
        }

  defstruct enabled: false

  field :enabled, 1, type: :bool
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStep do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          linux_exec_step_config:
            Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepConfig.t() | nil,
          windows_exec_step_config:
            Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepConfig.t() | nil
        }

  defstruct linux_exec_step_config: nil,
            windows_exec_step_config: nil

  field :linux_exec_step_config, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepConfig,
    json_name: "linuxExecStepConfig"

  field :windows_exec_step_config, 2,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepConfig,
    json_name: "windowsExecStepConfig"
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          executable:
            {:local_path, String.t()}
            | {:gcs_object, Google.Cloud.Osconfig.Agentendpoint.V1beta.GcsObject.t() | nil},
          allowed_success_codes: [integer],
          interpreter: Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepConfig.Interpreter.t()
        }

  defstruct executable: nil,
            allowed_success_codes: [],
            interpreter: :INTERPRETER_UNSPECIFIED

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          object: String.t(),
          generation_number: integer
        }

  defstruct bucket: "",
            object: "",
            generation_number: 0

  field :bucket, 1, type: :string
  field :object, 2, type: :string
  field :generation_number, 3, type: :int64, json_name: "generationNumber"
end
