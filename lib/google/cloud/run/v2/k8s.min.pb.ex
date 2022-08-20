defmodule Google.Cloud.Run.V2.Container do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Run.V2.ResourceRequirements do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :limits, 1,
    repeated: true,
    type: Google.Cloud.Run.V2.ResourceRequirements.LimitsEntry,
    map: true

  field :cpu_idle, 2, type: :bool, json_name: "cpuIdle"
end

defmodule Google.Cloud.Run.V2.EnvVar do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :secret_key_ref, 1, type: Google.Cloud.Run.V2.SecretKeySelector, json_name: "secretKeyRef"
end

defmodule Google.Cloud.Run.V2.SecretKeySelector do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :secret, 1, type: :string, deprecated: false
  field :version, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Run.V2.ContainerPort do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :container_port, 3, type: :int32, json_name: "containerPort"
end

defmodule Google.Cloud.Run.V2.VolumeMount do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :mount_path, 3, type: :string, json_name: "mountPath", deprecated: false
end

defmodule Google.Cloud.Run.V2.Volume do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :secret, 1, type: :string, deprecated: false
  field :items, 2, repeated: true, type: Google.Cloud.Run.V2.VersionToPath
  field :default_mode, 3, type: :int32, json_name: "defaultMode"
end

defmodule Google.Cloud.Run.V2.VersionToPath do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :path, 1, type: :string, deprecated: false
  field :version, 2, type: :string
  field :mode, 3, type: :int32
end

defmodule Google.Cloud.Run.V2.CloudSqlInstance do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instances, 1, repeated: true, type: :string
end