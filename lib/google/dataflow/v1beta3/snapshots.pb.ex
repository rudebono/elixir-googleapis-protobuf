defmodule Google.Dataflow.V1beta3.SnapshotState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNKNOWN_SNAPSHOT_STATE | :PENDING | :RUNNING | :READY | :FAILED | :DELETED

  field :UNKNOWN_SNAPSHOT_STATE, 0
  field :PENDING, 1
  field :RUNNING, 2
  field :READY, 3
  field :FAILED, 4
  field :DELETED, 5
end
defmodule Google.Dataflow.V1beta3.PubsubSnapshotMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic_name: String.t(),
          snapshot_name: String.t(),
          expire_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct topic_name: "",
            snapshot_name: "",
            expire_time: nil

  field :topic_name, 1, type: :string, json_name: "topicName"
  field :snapshot_name, 2, type: :string, json_name: "snapshotName"
  field :expire_time, 3, type: Google.Protobuf.Timestamp, json_name: "expireTime"
end
defmodule Google.Dataflow.V1beta3.Snapshot do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          project_id: String.t(),
          source_job_id: String.t(),
          creation_time: Google.Protobuf.Timestamp.t() | nil,
          ttl: Google.Protobuf.Duration.t() | nil,
          state: Google.Dataflow.V1beta3.SnapshotState.t(),
          pubsub_metadata: [Google.Dataflow.V1beta3.PubsubSnapshotMetadata.t()],
          description: String.t(),
          disk_size_bytes: integer,
          region: String.t()
        }

  defstruct id: "",
            project_id: "",
            source_job_id: "",
            creation_time: nil,
            ttl: nil,
            state: :UNKNOWN_SNAPSHOT_STATE,
            pubsub_metadata: [],
            description: "",
            disk_size_bytes: 0,
            region: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          snapshot_id: String.t(),
          location: String.t()
        }

  defstruct project_id: "",
            snapshot_id: "",
            location: ""

  field :project_id, 1, type: :string, json_name: "projectId"
  field :snapshot_id, 2, type: :string, json_name: "snapshotId"
  field :location, 3, type: :string
end
defmodule Google.Dataflow.V1beta3.DeleteSnapshotRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          snapshot_id: String.t(),
          location: String.t()
        }

  defstruct project_id: "",
            snapshot_id: "",
            location: ""

  field :project_id, 1, type: :string, json_name: "projectId"
  field :snapshot_id, 2, type: :string, json_name: "snapshotId"
  field :location, 3, type: :string
end
defmodule Google.Dataflow.V1beta3.DeleteSnapshotResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Dataflow.V1beta3.ListSnapshotsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          job_id: String.t(),
          location: String.t()
        }

  defstruct project_id: "",
            job_id: "",
            location: ""

  field :project_id, 1, type: :string, json_name: "projectId"
  field :job_id, 3, type: :string, json_name: "jobId"
  field :location, 2, type: :string
end
defmodule Google.Dataflow.V1beta3.ListSnapshotsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          snapshots: [Google.Dataflow.V1beta3.Snapshot.t()]
        }

  defstruct snapshots: []

  field :snapshots, 1, repeated: true, type: Google.Dataflow.V1beta3.Snapshot
end
defmodule Google.Dataflow.V1beta3.SnapshotsV1Beta3.Service do
  @moduledoc false
  use GRPC.Service, name: "google.dataflow.v1beta3.SnapshotsV1Beta3"

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
