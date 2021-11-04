defmodule Google.Cloud.Workflows.Type.ExecutionsSystemLog.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :ACTIVE | :SUCCEEDED | :FAILED | :CANCELLED

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
  field :CANCELLED, 4
end

defmodule Google.Cloud.Workflows.Type.ExecutionsSystemLog.Start do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          argument: String.t()
        }

  defstruct [:argument]

  field :argument, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Workflows.Type.ExecutionsSystemLog.Success do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: String.t()
        }

  defstruct [:result]

  field :result, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Workflows.Type.ExecutionsSystemLog.Failure do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          exception: String.t(),
          source: String.t()
        }

  defstruct [:exception, :source]

  field :exception, 1, type: :string
  field :source, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Workflows.Type.ExecutionsSystemLog do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          details:
            {:start, Google.Cloud.Workflows.Type.ExecutionsSystemLog.Start.t() | nil}
            | {:success, Google.Cloud.Workflows.Type.ExecutionsSystemLog.Success.t() | nil}
            | {:failure, Google.Cloud.Workflows.Type.ExecutionsSystemLog.Failure.t() | nil},
          message: String.t(),
          activity_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Workflows.Type.ExecutionsSystemLog.State.t()
        }

  defstruct [:details, :message, :activity_time, :state]

  oneof :details, 0

  field :message, 1, type: :string
  field :activity_time, 2, type: Google.Protobuf.Timestamp, json_name: "activityTime"
  field :state, 3, type: Google.Cloud.Workflows.Type.ExecutionsSystemLog.State, enum: true
  field :start, 4, type: Google.Cloud.Workflows.Type.ExecutionsSystemLog.Start, oneof: 0
  field :success, 5, type: Google.Cloud.Workflows.Type.ExecutionsSystemLog.Success, oneof: 0
  field :failure, 6, type: Google.Cloud.Workflows.Type.ExecutionsSystemLog.Failure, oneof: 0

  def transform_module(), do: nil
end
