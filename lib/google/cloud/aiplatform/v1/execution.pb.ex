defmodule Google.Cloud.Aiplatform.V1.Execution.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :NEW
          | :RUNNING
          | :COMPLETE
          | :FAILED
          | :CACHED
          | :CANCELLED

  field :STATE_UNSPECIFIED, 0

  field :NEW, 1

  field :RUNNING, 2

  field :COMPLETE, 3

  field :FAILED, 4

  field :CACHED, 5

  field :CANCELLED, 6
end

defmodule Google.Cloud.Aiplatform.V1.Execution.LabelsEntry do
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

defmodule Google.Cloud.Aiplatform.V1.Execution do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          state: Google.Cloud.Aiplatform.V1.Execution.State.t(),
          etag: String.t(),
          labels: %{String.t() => String.t()},
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :display_name, :state, :etag, :labels, :create_time, :update_time]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :state, 6, type: Google.Cloud.Aiplatform.V1.Execution.State, enum: true
  field :etag, 9, type: :string

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Execution.LabelsEntry,
    map: true

  field :create_time, 11, type: Google.Protobuf.Timestamp
  field :update_time, 12, type: Google.Protobuf.Timestamp
end
