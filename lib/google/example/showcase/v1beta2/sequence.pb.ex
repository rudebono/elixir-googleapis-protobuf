defmodule Google.Example.Showcase.V1beta2.Sequence.Response do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          status: Google.Rpc.Status.t() | nil,
          delay: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:status, :delay]

  field :status, 1, type: Google.Rpc.Status
  field :delay, 2, type: Google.Protobuf.Duration

  def transform_module(), do: nil
end

defmodule Google.Example.Showcase.V1beta2.Sequence do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          responses: [Google.Example.Showcase.V1beta2.Sequence.Response.t()]
        }

  defstruct [:name, :responses]

  field :name, 1, type: :string
  field :responses, 2, repeated: true, type: Google.Example.Showcase.V1beta2.Sequence.Response

  def transform_module(), do: nil
end

defmodule Google.Example.Showcase.V1beta2.SequenceReport.Attempt do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attempt_number: integer,
          attempt_deadline: Google.Protobuf.Timestamp.t() | nil,
          response_time: Google.Protobuf.Timestamp.t() | nil,
          attempt_delay: Google.Protobuf.Duration.t() | nil,
          status: Google.Rpc.Status.t() | nil
        }

  defstruct [:attempt_number, :attempt_deadline, :response_time, :attempt_delay, :status]

  field :attempt_number, 1, type: :int32, json_name: "attemptNumber"
  field :attempt_deadline, 2, type: Google.Protobuf.Timestamp, json_name: "attemptDeadline"
  field :response_time, 3, type: Google.Protobuf.Timestamp, json_name: "responseTime"
  field :attempt_delay, 4, type: Google.Protobuf.Duration, json_name: "attemptDelay"
  field :status, 5, type: Google.Rpc.Status

  def transform_module(), do: nil
end

defmodule Google.Example.Showcase.V1beta2.SequenceReport do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          attempts: [Google.Example.Showcase.V1beta2.SequenceReport.Attempt.t()]
        }

  defstruct [:name, :attempts]

  field :name, 1, type: :string
  field :attempts, 2, repeated: true, type: Google.Example.Showcase.V1beta2.SequenceReport.Attempt

  def transform_module(), do: nil
end

defmodule Google.Example.Showcase.V1beta2.CreateSequenceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sequence: Google.Example.Showcase.V1beta2.Sequence.t() | nil
        }

  defstruct [:sequence]

  field :sequence, 1, type: Google.Example.Showcase.V1beta2.Sequence

  def transform_module(), do: nil
end

defmodule Google.Example.Showcase.V1beta2.AttemptSequenceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Example.Showcase.V1beta2.GetSequenceReportRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Example.Showcase.V1beta2.SequenceService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.example.showcase.v1beta2.SequenceService"

  rpc :CreateSequence,
      Google.Example.Showcase.V1beta2.CreateSequenceRequest,
      Google.Example.Showcase.V1beta2.Sequence

  rpc :GetSequenceReport,
      Google.Example.Showcase.V1beta2.GetSequenceReportRequest,
      Google.Example.Showcase.V1beta2.SequenceReport

  rpc :AttemptSequence,
      Google.Example.Showcase.V1beta2.AttemptSequenceRequest,
      Google.Protobuf.Empty
end

defmodule Google.Example.Showcase.V1beta2.SequenceService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Example.Showcase.V1beta2.SequenceService.Service
end
