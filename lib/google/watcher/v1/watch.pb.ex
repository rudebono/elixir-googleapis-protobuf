defmodule Google.Watcher.V1.Change.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :EXISTS | :DOES_NOT_EXIST | :INITIAL_STATE_SKIPPED | :ERROR

  field :EXISTS, 0
  field :DOES_NOT_EXIST, 1
  field :INITIAL_STATE_SKIPPED, 2
  field :ERROR, 3
end

defmodule Google.Watcher.V1.Request do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target: String.t(),
          resume_marker: binary
        }

  defstruct [:target, :resume_marker]

  field :target, 1, type: :string
  field :resume_marker, 2, type: :bytes, json_name: "resumeMarker"

  def transform_module(), do: nil
end

defmodule Google.Watcher.V1.ChangeBatch do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          changes: [Google.Watcher.V1.Change.t()]
        }

  defstruct [:changes]

  field :changes, 1, repeated: true, type: Google.Watcher.V1.Change

  def transform_module(), do: nil
end

defmodule Google.Watcher.V1.Change do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          element: String.t(),
          state: Google.Watcher.V1.Change.State.t(),
          data: Google.Protobuf.Any.t() | nil,
          resume_marker: binary,
          continued: boolean
        }

  defstruct [:element, :state, :data, :resume_marker, :continued]

  field :element, 1, type: :string
  field :state, 2, type: Google.Watcher.V1.Change.State, enum: true
  field :data, 6, type: Google.Protobuf.Any
  field :resume_marker, 4, type: :bytes, json_name: "resumeMarker"
  field :continued, 5, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Watcher.V1.Watcher.Service do
  @moduledoc false
  use GRPC.Service, name: "google.watcher.v1.Watcher"

  rpc :Watch, Google.Watcher.V1.Request, stream(Google.Watcher.V1.ChangeBatch)
end

defmodule Google.Watcher.V1.Watcher.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Watcher.V1.Watcher.Service
end
