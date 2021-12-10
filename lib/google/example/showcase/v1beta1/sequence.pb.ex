defmodule Google.Example.Showcase.V1beta1.Sequence.Response do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          status: Google.Rpc.Status.t() | nil,
          delay: Google.Protobuf.Duration.t() | nil
        }

  defstruct status: nil,
            delay: nil

  field :status, 1, type: Google.Rpc.Status
  field :delay, 2, type: Google.Protobuf.Duration
end
defmodule Google.Example.Showcase.V1beta1.Sequence do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          responses: [Google.Example.Showcase.V1beta1.Sequence.Response.t()]
        }

  defstruct name: "",
            responses: []

  field :name, 1, type: :string, deprecated: false
  field :responses, 2, repeated: true, type: Google.Example.Showcase.V1beta1.Sequence.Response
end
defmodule Google.Example.Showcase.V1beta1.SequenceReport.Attempt do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attempt_number: integer,
          attempt_deadline: Google.Protobuf.Timestamp.t() | nil,
          response_time: Google.Protobuf.Timestamp.t() | nil,
          attempt_delay: Google.Protobuf.Duration.t() | nil,
          status: Google.Rpc.Status.t() | nil
        }

  defstruct attempt_number: 0,
            attempt_deadline: nil,
            response_time: nil,
            attempt_delay: nil,
            status: nil

  field :attempt_number, 1, type: :int32, json_name: "attemptNumber"
  field :attempt_deadline, 2, type: Google.Protobuf.Timestamp, json_name: "attemptDeadline"
  field :response_time, 3, type: Google.Protobuf.Timestamp, json_name: "responseTime"
  field :attempt_delay, 4, type: Google.Protobuf.Duration, json_name: "attemptDelay"
  field :status, 5, type: Google.Rpc.Status
end
defmodule Google.Example.Showcase.V1beta1.SequenceReport do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          attempts: [Google.Example.Showcase.V1beta1.SequenceReport.Attempt.t()]
        }

  defstruct name: "",
            attempts: []

  field :name, 1, type: :string, deprecated: false
  field :attempts, 2, repeated: true, type: Google.Example.Showcase.V1beta1.SequenceReport.Attempt
end
defmodule Google.Example.Showcase.V1beta1.CreateSequenceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sequence: Google.Example.Showcase.V1beta1.Sequence.t() | nil
        }

  defstruct sequence: nil

  field :sequence, 1, type: Google.Example.Showcase.V1beta1.Sequence
end
defmodule Google.Example.Showcase.V1beta1.AttemptSequenceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Example.Showcase.V1beta1.GetSequenceReportRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Example.Showcase.V1beta1.SequenceService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.example.showcase.v1beta1.SequenceService"

  rpc :CreateSequence,
      Google.Example.Showcase.V1beta1.CreateSequenceRequest,
      Google.Example.Showcase.V1beta1.Sequence

  rpc :GetSequenceReport,
      Google.Example.Showcase.V1beta1.GetSequenceReportRequest,
      Google.Example.Showcase.V1beta1.SequenceReport

  rpc :AttemptSequence,
      Google.Example.Showcase.V1beta1.AttemptSequenceRequest,
      Google.Protobuf.Empty
end

defmodule Google.Example.Showcase.V1beta1.SequenceService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Example.Showcase.V1beta1.SequenceService.Service
end
