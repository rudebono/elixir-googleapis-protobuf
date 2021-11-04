defmodule Google.Cloud.Dataproc.V1.BatchOperationMetadata.BatchOperationType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :BATCH_OPERATION_TYPE_UNSPECIFIED | :BATCH

  field :BATCH_OPERATION_TYPE_UNSPECIFIED, 0
  field :BATCH, 1
end

defmodule Google.Cloud.Dataproc.V1.ClusterOperationStatus.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNKNOWN | :PENDING | :RUNNING | :DONE

  field :UNKNOWN, 0
  field :PENDING, 1
  field :RUNNING, 2
  field :DONE, 3
end

defmodule Google.Cloud.Dataproc.V1.BatchOperationMetadata.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.BatchOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          batch: String.t(),
          batch_uuid: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          done_time: Google.Protobuf.Timestamp.t() | nil,
          operation_type: Google.Cloud.Dataproc.V1.BatchOperationMetadata.BatchOperationType.t(),
          description: String.t(),
          labels: %{String.t() => String.t()},
          warnings: [String.t()]
        }

  defstruct [
    :batch,
    :batch_uuid,
    :create_time,
    :done_time,
    :operation_type,
    :description,
    :labels,
    :warnings
  ]

  field :batch, 1, type: :string
  field :batch_uuid, 2, type: :string, json_name: "batchUuid"
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :done_time, 4, type: Google.Protobuf.Timestamp, json_name: "doneTime"

  field :operation_type, 6,
    type: Google.Cloud.Dataproc.V1.BatchOperationMetadata.BatchOperationType,
    enum: true,
    json_name: "operationType"

  field :description, 7, type: :string

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.BatchOperationMetadata.LabelsEntry,
    map: true

  field :warnings, 9, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.ClusterOperationStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Dataproc.V1.ClusterOperationStatus.State.t(),
          inner_state: String.t(),
          details: String.t(),
          state_start_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:state, :inner_state, :details, :state_start_time]

  field :state, 1, type: Google.Cloud.Dataproc.V1.ClusterOperationStatus.State, enum: true
  field :inner_state, 2, type: :string, json_name: "innerState"
  field :details, 3, type: :string
  field :state_start_time, 4, type: Google.Protobuf.Timestamp, json_name: "stateStartTime"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.ClusterOperationMetadata.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.ClusterOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cluster_name: String.t(),
          cluster_uuid: String.t(),
          status: Google.Cloud.Dataproc.V1.ClusterOperationStatus.t() | nil,
          status_history: [Google.Cloud.Dataproc.V1.ClusterOperationStatus.t()],
          operation_type: String.t(),
          description: String.t(),
          labels: %{String.t() => String.t()},
          warnings: [String.t()]
        }

  defstruct [
    :cluster_name,
    :cluster_uuid,
    :status,
    :status_history,
    :operation_type,
    :description,
    :labels,
    :warnings
  ]

  field :cluster_name, 7, type: :string, json_name: "clusterName"
  field :cluster_uuid, 8, type: :string, json_name: "clusterUuid"
  field :status, 9, type: Google.Cloud.Dataproc.V1.ClusterOperationStatus

  field :status_history, 10,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.ClusterOperationStatus,
    json_name: "statusHistory"

  field :operation_type, 11, type: :string, json_name: "operationType"
  field :description, 12, type: :string

  field :labels, 13,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.ClusterOperationMetadata.LabelsEntry,
    map: true

  field :warnings, 14, repeated: true, type: :string

  def transform_module(), do: nil
end
