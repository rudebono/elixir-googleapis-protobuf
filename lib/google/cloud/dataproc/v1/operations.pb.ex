defmodule Google.Cloud.Dataproc.V1.ClusterOperationStatus.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNKNOWN | :PENDING | :RUNNING | :DONE

  field :UNKNOWN, 0

  field :PENDING, 1

  field :RUNNING, 2

  field :DONE, 3
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
  field :inner_state, 2, type: :string
  field :details, 3, type: :string
  field :state_start_time, 4, type: Google.Protobuf.Timestamp
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

  field :cluster_name, 7, type: :string
  field :cluster_uuid, 8, type: :string
  field :status, 9, type: Google.Cloud.Dataproc.V1.ClusterOperationStatus
  field :status_history, 10, repeated: true, type: Google.Cloud.Dataproc.V1.ClusterOperationStatus
  field :operation_type, 11, type: :string
  field :description, 12, type: :string

  field :labels, 13,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.ClusterOperationMetadata.LabelsEntry,
    map: true

  field :warnings, 14, repeated: true, type: :string
end
