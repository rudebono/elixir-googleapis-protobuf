defmodule Google.Cloud.Run.V2.EmptyDirVolumeSource.Medium do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :MEDIUM_UNSPECIFIED, 0
  field :MEMORY, 1
end

defmodule Google.Cloud.Run.V2.Container do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  field :working_dir, 9, type: :string, json_name: "workingDir"
  field :liveness_probe, 10, type: Google.Cloud.Run.V2.Probe, json_name: "livenessProbe"
  field :startup_probe, 11, type: Google.Cloud.Run.V2.Probe, json_name: "startupProbe"
  field :depends_on, 12, repeated: true, type: :string, json_name: "dependsOn"
end

defmodule Google.Cloud.Run.V2.ResourceRequirements.LimitsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Run.V2.ResourceRequirements do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :limits, 1,
    repeated: true,
    type: Google.Cloud.Run.V2.ResourceRequirements.LimitsEntry,
    map: true

  field :cpu_idle, 2, type: :bool, json_name: "cpuIdle"
  field :startup_cpu_boost, 3, type: :bool, json_name: "startupCpuBoost"
end

defmodule Google.Cloud.Run.V2.EnvVar do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :secret_key_ref, 1, type: Google.Cloud.Run.V2.SecretKeySelector, json_name: "secretKeyRef"
end

defmodule Google.Cloud.Run.V2.SecretKeySelector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :secret, 1, type: :string, deprecated: false
  field :version, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Run.V2.ContainerPort do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :container_port, 3, type: :int32, json_name: "containerPort"
end

defmodule Google.Cloud.Run.V2.VolumeMount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :mount_path, 3, type: :string, json_name: "mountPath", deprecated: false
end

defmodule Google.Cloud.Run.V2.Volume do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :volume_type, 0

  field :name, 1, type: :string, deprecated: false
  field :secret, 2, type: Google.Cloud.Run.V2.SecretVolumeSource, oneof: 0

  field :cloud_sql_instance, 3,
    type: Google.Cloud.Run.V2.CloudSqlInstance,
    json_name: "cloudSqlInstance",
    oneof: 0

  field :empty_dir, 4,
    type: Google.Cloud.Run.V2.EmptyDirVolumeSource,
    json_name: "emptyDir",
    oneof: 0
end

defmodule Google.Cloud.Run.V2.SecretVolumeSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :secret, 1, type: :string, deprecated: false
  field :items, 2, repeated: true, type: Google.Cloud.Run.V2.VersionToPath
  field :default_mode, 3, type: :int32, json_name: "defaultMode"
end

defmodule Google.Cloud.Run.V2.VersionToPath do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :path, 1, type: :string, deprecated: false
  field :version, 2, type: :string
  field :mode, 3, type: :int32
end

defmodule Google.Cloud.Run.V2.CloudSqlInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instances, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Run.V2.EmptyDirVolumeSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :medium, 1, type: Google.Cloud.Run.V2.EmptyDirVolumeSource.Medium, enum: true
  field :size_limit, 2, type: :string, json_name: "sizeLimit"
end

defmodule Google.Cloud.Run.V2.Probe do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :probe_type, 0

  field :initial_delay_seconds, 1, type: :int32, json_name: "initialDelaySeconds"
  field :timeout_seconds, 2, type: :int32, json_name: "timeoutSeconds"
  field :period_seconds, 3, type: :int32, json_name: "periodSeconds"
  field :failure_threshold, 4, type: :int32, json_name: "failureThreshold"
  field :http_get, 5, type: Google.Cloud.Run.V2.HTTPGetAction, json_name: "httpGet", oneof: 0

  field :tcp_socket, 6,
    type: Google.Cloud.Run.V2.TCPSocketAction,
    json_name: "tcpSocket",
    oneof: 0

  field :grpc, 7, type: Google.Cloud.Run.V2.GRPCAction, oneof: 0
end

defmodule Google.Cloud.Run.V2.HTTPGetAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :path, 1, type: :string

  field :http_headers, 4,
    repeated: true,
    type: Google.Cloud.Run.V2.HTTPHeader,
    json_name: "httpHeaders"

  field :port, 5, type: :int32
end

defmodule Google.Cloud.Run.V2.HTTPHeader do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :value, 2, type: :string
end

defmodule Google.Cloud.Run.V2.TCPSocketAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :port, 1, type: :int32
end

defmodule Google.Cloud.Run.V2.GRPCAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :port, 1, type: :int32
  field :service, 2, type: :string
end