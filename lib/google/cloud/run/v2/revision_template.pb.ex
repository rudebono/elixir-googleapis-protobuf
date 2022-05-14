defmodule Google.Cloud.Run.V2.RevisionTemplate.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Run.V2.RevisionTemplate.AnnotationsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Run.V2.RevisionTemplate do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :revision, 1, type: :string, deprecated: false

  field :labels, 2,
    repeated: true,
    type: Google.Cloud.Run.V2.RevisionTemplate.LabelsEntry,
    map: true

  field :annotations, 3,
    repeated: true,
    type: Google.Cloud.Run.V2.RevisionTemplate.AnnotationsEntry,
    map: true

  field :scaling, 4, type: Google.Cloud.Run.V2.RevisionScaling
  field :vpc_access, 6, type: Google.Cloud.Run.V2.VpcAccess, json_name: "vpcAccess"
  field :timeout, 8, type: Google.Protobuf.Duration
  field :service_account, 9, type: :string, json_name: "serviceAccount"
  field :containers, 10, repeated: true, type: Google.Cloud.Run.V2.Container
  field :volumes, 11, repeated: true, type: Google.Cloud.Run.V2.Volume

  field :execution_environment, 13,
    type: Google.Cloud.Run.V2.ExecutionEnvironment,
    json_name: "executionEnvironment",
    enum: true

  field :encryption_key, 14, type: :string, json_name: "encryptionKey", deprecated: false

  field :max_instance_request_concurrency, 15,
    type: :int32,
    json_name: "maxInstanceRequestConcurrency"
end
