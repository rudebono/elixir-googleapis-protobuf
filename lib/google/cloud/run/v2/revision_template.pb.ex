defmodule Google.Cloud.Run.V2.RevisionTemplate.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Run.V2.RevisionTemplate.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Run.V2.RevisionTemplate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :revision, 1, type: :string, deprecated: false

  field :labels, 2,
    repeated: true,
    type: Google.Cloud.Run.V2.RevisionTemplate.LabelsEntry,
    map: true,
    deprecated: false

  field :annotations, 3,
    repeated: true,
    type: Google.Cloud.Run.V2.RevisionTemplate.AnnotationsEntry,
    map: true,
    deprecated: false

  field :scaling, 4, type: Google.Cloud.Run.V2.RevisionScaling, deprecated: false

  field :vpc_access, 6,
    type: Google.Cloud.Run.V2.VpcAccess,
    json_name: "vpcAccess",
    deprecated: false

  field :timeout, 8, type: Google.Protobuf.Duration, deprecated: false
  field :service_account, 9, type: :string, json_name: "serviceAccount", deprecated: false
  field :containers, 10, repeated: true, type: Google.Cloud.Run.V2.Container
  field :volumes, 11, repeated: true, type: Google.Cloud.Run.V2.Volume, deprecated: false

  field :execution_environment, 13,
    type: Google.Cloud.Run.V2.ExecutionEnvironment,
    json_name: "executionEnvironment",
    enum: true,
    deprecated: false

  field :encryption_key, 14, type: :string, json_name: "encryptionKey", deprecated: false

  field :max_instance_request_concurrency, 15,
    type: :int32,
    json_name: "maxInstanceRequestConcurrency",
    deprecated: false

  field :service_mesh, 16,
    type: Google.Cloud.Run.V2.ServiceMesh,
    json_name: "serviceMesh",
    deprecated: false

  field :encryption_key_revocation_action, 17,
    type: Google.Cloud.Run.V2.EncryptionKeyRevocationAction,
    json_name: "encryptionKeyRevocationAction",
    enum: true,
    deprecated: false

  field :encryption_key_shutdown_duration, 18,
    type: Google.Protobuf.Duration,
    json_name: "encryptionKeyShutdownDuration",
    deprecated: false

  field :session_affinity, 19, type: :bool, json_name: "sessionAffinity", deprecated: false

  field :health_check_disabled, 20,
    type: :bool,
    json_name: "healthCheckDisabled",
    deprecated: false

  field :node_selector, 21,
    type: Google.Cloud.Run.V2.NodeSelector,
    json_name: "nodeSelector",
    deprecated: false

  field :gpu_zonal_redundancy_disabled, 24,
    proto3_optional: true,
    type: :bool,
    json_name: "gpuZonalRedundancyDisabled",
    deprecated: false
end
