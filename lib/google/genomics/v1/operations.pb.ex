defmodule Google.Genomics.V1.OperationMetadata.LabelsEntry do
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

defmodule Google.Genomics.V1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          request: Google.Protobuf.Any.t() | nil,
          events: [Google.Genomics.V1.OperationEvent.t()],
          client_id: String.t(),
          runtime_metadata: Google.Protobuf.Any.t() | nil,
          labels: %{String.t() => String.t()}
        }

  defstruct [
    :project_id,
    :create_time,
    :start_time,
    :end_time,
    :request,
    :events,
    :client_id,
    :runtime_metadata,
    :labels
  ]

  field :project_id, 1, type: :string, json_name: "projectId"
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :request, 5, type: Google.Protobuf.Any
  field :events, 6, repeated: true, type: Google.Genomics.V1.OperationEvent
  field :client_id, 7, type: :string, json_name: "clientId"
  field :runtime_metadata, 8, type: Google.Protobuf.Any, json_name: "runtimeMetadata"

  field :labels, 9,
    repeated: true,
    type: Google.Genomics.V1.OperationMetadata.LabelsEntry,
    map: true

  def transform_module(), do: nil
end

defmodule Google.Genomics.V1.OperationEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          description: String.t()
        }

  defstruct [:start_time, :end_time, :description]

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :description, 3, type: :string

  def transform_module(), do: nil
end
