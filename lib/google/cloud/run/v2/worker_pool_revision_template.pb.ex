defmodule Google.Cloud.Run.V2.WorkerPoolRevisionTemplate.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Run.V2.WorkerPoolRevisionTemplate.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Run.V2.WorkerPoolRevisionTemplate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :revision, 1, type: :string, deprecated: false

  field :labels, 2,
    repeated: true,
    type: Google.Cloud.Run.V2.WorkerPoolRevisionTemplate.LabelsEntry,
    map: true,
    deprecated: false

  field :annotations, 3,
    repeated: true,
    type: Google.Cloud.Run.V2.WorkerPoolRevisionTemplate.AnnotationsEntry,
    map: true,
    deprecated: false

  field :vpc_access, 4,
    type: Google.Cloud.Run.V2.VpcAccess,
    json_name: "vpcAccess",
    deprecated: false

  field :service_account, 5, type: :string, json_name: "serviceAccount", deprecated: false
  field :containers, 6, repeated: true, type: Google.Cloud.Run.V2.Container
  field :volumes, 7, repeated: true, type: Google.Cloud.Run.V2.Volume, deprecated: false
  field :encryption_key, 8, type: :string, json_name: "encryptionKey", deprecated: false

  field :service_mesh, 9,
    type: Google.Cloud.Run.V2.ServiceMesh,
    json_name: "serviceMesh",
    deprecated: false

  field :encryption_key_revocation_action, 10,
    type: Google.Cloud.Run.V2.EncryptionKeyRevocationAction,
    json_name: "encryptionKeyRevocationAction",
    enum: true,
    deprecated: false

  field :encryption_key_shutdown_duration, 11,
    type: Google.Protobuf.Duration,
    json_name: "encryptionKeyShutdownDuration",
    deprecated: false

  field :node_selector, 13,
    type: Google.Cloud.Run.V2.NodeSelector,
    json_name: "nodeSelector",
    deprecated: false
end
