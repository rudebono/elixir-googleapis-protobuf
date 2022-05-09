defmodule Google.Cloud.Run.V2.Container do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          image: String.t(),
          command: [String.t()],
          args: [String.t()],
          env: [Google.Cloud.Run.V2.EnvVar.t()],
          resources: Google.Cloud.Run.V2.ResourceRequirements.t() | nil,
          ports: [Google.Cloud.Run.V2.ContainerPort.t()],
          volume_mounts: [Google.Cloud.Run.V2.VolumeMount.t()]
        }

  defstruct name: "",
            image: "",
            command: [],
            args: [],
            env: [],
            resources: nil,
            ports: [],
            volume_mounts: []

  field :name, 1, type: :string
  field :image, 2, type: :string, deprecated: false
  field :command, 3, repeated: true, type: :string
  field :args, 4, repeated: true, type: :string
  field :env, 5, repeated: true, type: Google.Cloud.Run.V2.EnvVar
  field :resources, 6, type: Google.Cloud.Run.V2.ResourceRequirements
  field :ports, 7, repeated: true, type: Google.Cloud.Run.V2.ContainerPort

  field :volume_mounts, 8,
    repeated: true,
    type: Google.Cloud.Run.V2.VolumeMount,
    json_name: "volumeMounts"
end
defmodule Google.Cloud.Run.V2.ResourceRequirements.LimitsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Run.V2.ResourceRequirements do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          limits: %{String.t() => String.t()},
          cpu_idle: boolean
        }

  defstruct limits: %{},
            cpu_idle: false

  field :limits, 1,
    repeated: true,
    type: Google.Cloud.Run.V2.ResourceRequirements.LimitsEntry,
    map: true

  field :cpu_idle, 2, type: :bool, json_name: "cpuIdle"
end
defmodule Google.Cloud.Run.V2.EnvVar do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values:
            {:value, String.t()} | {:value_source, Google.Cloud.Run.V2.EnvVarSource.t() | nil},
          name: String.t()
        }

  defstruct values: nil,
            name: ""

  oneof :values, 0

  field :name, 1, type: :string, deprecated: false
  field :value, 2, type: :string, oneof: 0

  field :value_source, 3,
    type: Google.Cloud.Run.V2.EnvVarSource,
    json_name: "valueSource",
    oneof: 0
end
defmodule Google.Cloud.Run.V2.EnvVarSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          secret_key_ref: Google.Cloud.Run.V2.SecretKeySelector.t() | nil
        }

  defstruct secret_key_ref: nil

  field :secret_key_ref, 1, type: Google.Cloud.Run.V2.SecretKeySelector, json_name: "secretKeyRef"
end
defmodule Google.Cloud.Run.V2.SecretKeySelector do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          secret: String.t(),
          version: String.t()
        }

  defstruct secret: "",
            version: ""

  field :secret, 1, type: :string, deprecated: false
  field :version, 2, type: :string, deprecated: false
end
defmodule Google.Cloud.Run.V2.ContainerPort do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          container_port: integer
        }

  defstruct name: "",
            container_port: 0

  field :name, 1, type: :string
  field :container_port, 3, type: :int32, json_name: "containerPort"
end
defmodule Google.Cloud.Run.V2.VolumeMount do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          mount_path: String.t()
        }

  defstruct name: "",
            mount_path: ""

  field :name, 1, type: :string, deprecated: false
  field :mount_path, 3, type: :string, json_name: "mountPath", deprecated: false
end
defmodule Google.Cloud.Run.V2.Volume do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          volume_type:
            {:secret, Google.Cloud.Run.V2.SecretVolumeSource.t() | nil}
            | {:cloud_sql_instance, Google.Cloud.Run.V2.CloudSqlInstance.t() | nil},
          name: String.t()
        }

  defstruct volume_type: nil,
            name: ""

  oneof :volume_type, 0

  field :name, 1, type: :string, deprecated: false
  field :secret, 2, type: Google.Cloud.Run.V2.SecretVolumeSource, oneof: 0

  field :cloud_sql_instance, 3,
    type: Google.Cloud.Run.V2.CloudSqlInstance,
    json_name: "cloudSqlInstance",
    oneof: 0
end
defmodule Google.Cloud.Run.V2.SecretVolumeSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          secret: String.t(),
          items: [Google.Cloud.Run.V2.VersionToPath.t()],
          default_mode: integer
        }

  defstruct secret: "",
            items: [],
            default_mode: 0

  field :secret, 1, type: :string, deprecated: false
  field :items, 2, repeated: true, type: Google.Cloud.Run.V2.VersionToPath
  field :default_mode, 3, type: :int32, json_name: "defaultMode"
end
defmodule Google.Cloud.Run.V2.VersionToPath do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          path: String.t(),
          version: String.t(),
          mode: integer
        }

  defstruct path: "",
            version: "",
            mode: 0

  field :path, 1, type: :string, deprecated: false
  field :version, 2, type: :string
  field :mode, 3, type: :int32
end
defmodule Google.Cloud.Run.V2.CloudSqlInstance do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instances: [String.t()]
        }

  defstruct instances: []

  field :instances, 1, repeated: true, type: :string
end
