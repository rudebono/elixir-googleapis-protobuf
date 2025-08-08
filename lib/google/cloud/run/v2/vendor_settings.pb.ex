defmodule Google.Cloud.Run.V2.IngressTraffic do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :INGRESS_TRAFFIC_UNSPECIFIED, 0
  field :INGRESS_TRAFFIC_ALL, 1
  field :INGRESS_TRAFFIC_INTERNAL_ONLY, 2
  field :INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER, 3
  field :INGRESS_TRAFFIC_NONE, 4
end

defmodule Google.Cloud.Run.V2.ExecutionEnvironment do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :EXECUTION_ENVIRONMENT_UNSPECIFIED, 0
  field :EXECUTION_ENVIRONMENT_GEN1, 1
  field :EXECUTION_ENVIRONMENT_GEN2, 2
end

defmodule Google.Cloud.Run.V2.EncryptionKeyRevocationAction do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ENCRYPTION_KEY_REVOCATION_ACTION_UNSPECIFIED, 0
  field :PREVENT_NEW, 1
  field :SHUTDOWN, 2
end

defmodule Google.Cloud.Run.V2.VpcAccess.VpcEgress do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :VPC_EGRESS_UNSPECIFIED, 0
  field :ALL_TRAFFIC, 1
  field :PRIVATE_RANGES_ONLY, 2
end

defmodule Google.Cloud.Run.V2.ServiceScaling.ScalingMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SCALING_MODE_UNSPECIFIED, 0
  field :AUTOMATIC, 1
  field :MANUAL, 2
end

defmodule Google.Cloud.Run.V2.VpcAccess.NetworkInterface do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :network, 1, type: :string, deprecated: false
  field :subnetwork, 2, type: :string, deprecated: false
  field :tags, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Run.V2.VpcAccess do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :connector, 1, type: :string, deprecated: false
  field :egress, 2, type: Google.Cloud.Run.V2.VpcAccess.VpcEgress, enum: true, deprecated: false

  field :network_interfaces, 3,
    repeated: true,
    type: Google.Cloud.Run.V2.VpcAccess.NetworkInterface,
    json_name: "networkInterfaces",
    deprecated: false
end

defmodule Google.Cloud.Run.V2.BinaryAuthorization do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :binauthz_method, 0

  field :use_default, 1, type: :bool, json_name: "useDefault", oneof: 0, deprecated: false
  field :policy, 3, type: :string, oneof: 0, deprecated: false

  field :breakglass_justification, 2,
    type: :string,
    json_name: "breakglassJustification",
    deprecated: false
end

defmodule Google.Cloud.Run.V2.RevisionScaling do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :min_instance_count, 1, type: :int32, json_name: "minInstanceCount", deprecated: false
  field :max_instance_count, 2, type: :int32, json_name: "maxInstanceCount", deprecated: false
end

defmodule Google.Cloud.Run.V2.ServiceMesh do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mesh, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Run.V2.ServiceScaling do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :min_instance_count, 1, type: :int32, json_name: "minInstanceCount", deprecated: false

  field :scaling_mode, 3,
    type: Google.Cloud.Run.V2.ServiceScaling.ScalingMode,
    json_name: "scalingMode",
    enum: true,
    deprecated: false

  field :manual_instance_count, 6,
    proto3_optional: true,
    type: :int32,
    json_name: "manualInstanceCount",
    deprecated: false
end

defmodule Google.Cloud.Run.V2.WorkerPoolScaling do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :manual_instance_count, 6,
    proto3_optional: true,
    type: :int32,
    json_name: "manualInstanceCount",
    deprecated: false
end

defmodule Google.Cloud.Run.V2.NodeSelector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :accelerator, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Run.V2.BuildConfig.EnvironmentVariablesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Run.V2.BuildConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :source_location, 2, type: :string, json_name: "sourceLocation"
  field :function_target, 3, type: :string, json_name: "functionTarget", deprecated: false
  field :image_uri, 4, type: :string, json_name: "imageUri", deprecated: false
  field :base_image, 5, type: :string, json_name: "baseImage", deprecated: false

  field :enable_automatic_updates, 6,
    type: :bool,
    json_name: "enableAutomaticUpdates",
    deprecated: false

  field :worker_pool, 7, type: :string, json_name: "workerPool", deprecated: false

  field :environment_variables, 8,
    repeated: true,
    type: Google.Cloud.Run.V2.BuildConfig.EnvironmentVariablesEntry,
    json_name: "environmentVariables",
    map: true,
    deprecated: false

  field :service_account, 9, type: :string, json_name: "serviceAccount", deprecated: false
end
