defmodule Google.Cloud.Run.V2.GetRevisionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Run.V2.ListRevisionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :show_deleted, 4, type: :bool, json_name: "showDeleted"
end

defmodule Google.Cloud.Run.V2.ListRevisionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :revisions, 1, repeated: true, type: Google.Cloud.Run.V2.Revision
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Run.V2.DeleteRevisionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly"
  field :etag, 3, type: :string
end

defmodule Google.Cloud.Run.V2.Revision.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Run.V2.Revision.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Run.V2.Revision do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :generation, 3, type: :int64, deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Run.V2.Revision.LabelsEntry,
    map: true,
    deprecated: false

  field :annotations, 5,
    repeated: true,
    type: Google.Cloud.Run.V2.Revision.AnnotationsEntry,
    map: true,
    deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :delete_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :expire_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :launch_stage, 10, type: Google.Api.LaunchStage, json_name: "launchStage", enum: true
  field :service, 11, type: :string, deprecated: false
  field :scaling, 12, type: Google.Cloud.Run.V2.RevisionScaling
  field :vpc_access, 13, type: Google.Cloud.Run.V2.VpcAccess, json_name: "vpcAccess"

  field :max_instance_request_concurrency, 34,
    type: :int32,
    json_name: "maxInstanceRequestConcurrency"

  field :timeout, 15, type: Google.Protobuf.Duration
  field :service_account, 16, type: :string, json_name: "serviceAccount"
  field :containers, 17, repeated: true, type: Google.Cloud.Run.V2.Container
  field :volumes, 18, repeated: true, type: Google.Cloud.Run.V2.Volume

  field :execution_environment, 20,
    type: Google.Cloud.Run.V2.ExecutionEnvironment,
    json_name: "executionEnvironment",
    enum: true

  field :encryption_key, 21, type: :string, json_name: "encryptionKey", deprecated: false
  field :service_mesh, 22, type: Google.Cloud.Run.V2.ServiceMesh, json_name: "serviceMesh"

  field :encryption_key_revocation_action, 23,
    type: Google.Cloud.Run.V2.EncryptionKeyRevocationAction,
    json_name: "encryptionKeyRevocationAction",
    enum: true

  field :encryption_key_shutdown_duration, 24,
    type: Google.Protobuf.Duration,
    json_name: "encryptionKeyShutdownDuration"

  field :reconciling, 30, type: :bool, deprecated: false
  field :conditions, 31, repeated: true, type: Google.Cloud.Run.V2.Condition, deprecated: false
  field :observed_generation, 32, type: :int64, json_name: "observedGeneration", deprecated: false
  field :log_uri, 33, type: :string, json_name: "logUri", deprecated: false
  field :satisfies_pzs, 37, type: :bool, json_name: "satisfiesPzs", deprecated: false
  field :session_affinity, 38, type: :bool, json_name: "sessionAffinity"

  field :scaling_status, 39,
    type: Google.Cloud.Run.V2.RevisionScalingStatus,
    json_name: "scalingStatus",
    deprecated: false

  field :node_selector, 40, type: Google.Cloud.Run.V2.NodeSelector, json_name: "nodeSelector"
  field :etag, 99, type: :string, deprecated: false
end

defmodule Google.Cloud.Run.V2.Revisions.Service do
  @moduledoc false

  use GRPC.Service, name: "google.cloud.run.v2.Revisions", protoc_gen_elixir_version: "0.13.0"

  rpc :GetRevision, Google.Cloud.Run.V2.GetRevisionRequest, Google.Cloud.Run.V2.Revision

  rpc :ListRevisions,
      Google.Cloud.Run.V2.ListRevisionsRequest,
      Google.Cloud.Run.V2.ListRevisionsResponse

  rpc :DeleteRevision, Google.Cloud.Run.V2.DeleteRevisionRequest, Google.Longrunning.Operation
end

defmodule Google.Cloud.Run.V2.Revisions.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Run.V2.Revisions.Service
end