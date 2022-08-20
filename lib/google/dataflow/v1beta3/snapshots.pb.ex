defmodule Google.Dataflow.V1beta3.SnapshotState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNKNOWN_SNAPSHOT_STATE, 0
  field :PENDING, 1
  field :RUNNING, 2
  field :READY, 3
  field :FAILED, 4
  field :DELETED, 5
end

defmodule Google.Dataflow.V1beta3.PubsubSnapshotMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :topic_name, 1, type: :string, json_name: "topicName"
  field :snapshot_name, 2, type: :string, json_name: "snapshotName"
  field :expire_time, 3, type: Google.Protobuf.Timestamp, json_name: "expireTime"
end

defmodule Google.Dataflow.V1beta3.Snapshot do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 1, type: :string
  field :project_id, 2, type: :string, json_name: "projectId"
  field :source_job_id, 3, type: :string, json_name: "sourceJobId"
  field :creation_time, 4, type: Google.Protobuf.Timestamp, json_name: "creationTime"
  field :ttl, 5, type: Google.Protobuf.Duration
  field :state, 6, type: Google.Dataflow.V1beta3.SnapshotState, enum: true

  field :pubsub_metadata, 7,
    repeated: true,
    type: Google.Dataflow.V1beta3.PubsubSnapshotMetadata,
    json_name: "pubsubMetadata"

  field :description, 8, type: :string
  field :disk_size_bytes, 9, type: :int64, json_name: "diskSizeBytes"
  field :region, 10, type: :string
end

defmodule Google.Dataflow.V1beta3.GetSnapshotRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :snapshot_id, 2, type: :string, json_name: "snapshotId"
  field :location, 3, type: :string
end

defmodule Google.Dataflow.V1beta3.DeleteSnapshotRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :snapshot_id, 2, type: :string, json_name: "snapshotId"
  field :location, 3, type: :string
end

defmodule Google.Dataflow.V1beta3.DeleteSnapshotResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Dataflow.V1beta3.ListSnapshotsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :job_id, 3, type: :string, json_name: "jobId"
  field :location, 2, type: :string
end

defmodule Google.Dataflow.V1beta3.ListSnapshotsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :snapshots, 1, repeated: true, type: Google.Dataflow.V1beta3.Snapshot
end

defmodule Google.Dataflow.V1beta3.SnapshotsV1Beta3.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.dataflow.v1beta3.SnapshotsV1Beta3",
    protoc_gen_elixir_version: "0.11.0"

  rpc :GetSnapshot, Google.Dataflow.V1beta3.GetSnapshotRequest, Google.Dataflow.V1beta3.Snapshot

  rpc :DeleteSnapshot,
      Google.Dataflow.V1beta3.DeleteSnapshotRequest,
      Google.Dataflow.V1beta3.DeleteSnapshotResponse

  rpc :ListSnapshots,
      Google.Dataflow.V1beta3.ListSnapshotsRequest,
      Google.Dataflow.V1beta3.ListSnapshotsResponse
end

defmodule Google.Dataflow.V1beta3.SnapshotsV1Beta3.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Dataflow.V1beta3.SnapshotsV1Beta3.Service
end