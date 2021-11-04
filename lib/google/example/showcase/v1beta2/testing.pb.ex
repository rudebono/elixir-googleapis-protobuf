defmodule Google.Example.Showcase.V1beta2.Session.Version do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :VERSION_UNSPECIFIED | :V1_LATEST | :V1_0

  field :VERSION_UNSPECIFIED, 0
  field :V1_LATEST, 1
  field :V1_0, 2
end

defmodule Google.Example.Showcase.V1beta2.ReportSessionResponse.Result do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :RESULT_UNSPECIFIED | :PASSED | :FAILED | :INCOMPLETE

  field :RESULT_UNSPECIFIED, 0
  field :PASSED, 1
  field :FAILED, 2
  field :INCOMPLETE, 3
end

defmodule Google.Example.Showcase.V1beta2.Test.ExpectationLevel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :EXPECTATION_LEVEL_UNSPECIFIED | :REQUIRED | :RECOMMENDED | :OPTIONAL

  field :EXPECTATION_LEVEL_UNSPECIFIED, 0
  field :REQUIRED, 1
  field :RECOMMENDED, 2
  field :OPTIONAL, 3
end

defmodule Google.Example.Showcase.V1beta2.Issue.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TYPE_UNSPECIFIED | :SKIPPED | :PENDING | :INCORRECT_CONFIRMATION

  field :TYPE_UNSPECIFIED, 0
  field :SKIPPED, 1
  field :PENDING, 2
  field :INCORRECT_CONFIRMATION, 3
end

defmodule Google.Example.Showcase.V1beta2.Issue.Severity do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SEVERITY_UNSPECIFIED | :ERROR | :WARNING

  field :SEVERITY_UNSPECIFIED, 0
  field :ERROR, 1
  field :WARNING, 2
end

defmodule Google.Example.Showcase.V1beta2.Session do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          version: Google.Example.Showcase.V1beta2.Session.Version.t()
        }

  defstruct [:name, :version]

  field :name, 1, type: :string
  field :version, 2, type: Google.Example.Showcase.V1beta2.Session.Version, enum: true

  def transform_module(), do: nil
end

defmodule Google.Example.Showcase.V1beta2.CreateSessionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          session: Google.Example.Showcase.V1beta2.Session.t() | nil
        }

  defstruct [:session]

  field :session, 1, type: Google.Example.Showcase.V1beta2.Session

  def transform_module(), do: nil
end

defmodule Google.Example.Showcase.V1beta2.GetSessionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Example.Showcase.V1beta2.ListSessionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:page_size, :page_token]

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Example.Showcase.V1beta2.ListSessionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sessions: [Google.Example.Showcase.V1beta2.Session.t()],
          next_page_token: String.t()
        }

  defstruct [:sessions, :next_page_token]

  field :sessions, 1, repeated: true, type: Google.Example.Showcase.V1beta2.Session
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Example.Showcase.V1beta2.DeleteSessionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Example.Showcase.V1beta2.ReportSessionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Example.Showcase.V1beta2.ReportSessionResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: Google.Example.Showcase.V1beta2.ReportSessionResponse.Result.t(),
          test_runs: [Google.Example.Showcase.V1beta2.TestRun.t()]
        }

  defstruct [:result, :test_runs]

  field :result, 1, type: Google.Example.Showcase.V1beta2.ReportSessionResponse.Result, enum: true

  field :test_runs, 2,
    repeated: true,
    type: Google.Example.Showcase.V1beta2.TestRun,
    json_name: "testRuns"

  def transform_module(), do: nil
end

defmodule Google.Example.Showcase.V1beta2.Test.Blueprint.Invocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          method: String.t(),
          serialized_request: binary
        }

  defstruct [:method, :serialized_request]

  field :method, 1, type: :string
  field :serialized_request, 2, type: :bytes, json_name: "serializedRequest"

  def transform_module(), do: nil
end

defmodule Google.Example.Showcase.V1beta2.Test.Blueprint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          request: Google.Example.Showcase.V1beta2.Test.Blueprint.Invocation.t() | nil,
          additional_requests: [Google.Example.Showcase.V1beta2.Test.Blueprint.Invocation.t()]
        }

  defstruct [:name, :description, :request, :additional_requests]

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :request, 3, type: Google.Example.Showcase.V1beta2.Test.Blueprint.Invocation

  field :additional_requests, 4,
    repeated: true,
    type: Google.Example.Showcase.V1beta2.Test.Blueprint.Invocation,
    json_name: "additionalRequests"

  def transform_module(), do: nil
end

defmodule Google.Example.Showcase.V1beta2.Test do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          expectation_level: Google.Example.Showcase.V1beta2.Test.ExpectationLevel.t(),
          description: String.t(),
          blueprints: [Google.Example.Showcase.V1beta2.Test.Blueprint.t()]
        }

  defstruct [:name, :expectation_level, :description, :blueprints]

  field :name, 1, type: :string

  field :expectation_level, 2,
    type: Google.Example.Showcase.V1beta2.Test.ExpectationLevel,
    enum: true,
    json_name: "expectationLevel"

  field :description, 3, type: :string
  field :blueprints, 4, repeated: true, type: Google.Example.Showcase.V1beta2.Test.Blueprint

  def transform_module(), do: nil
end

defmodule Google.Example.Showcase.V1beta2.Issue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Example.Showcase.V1beta2.Issue.Type.t(),
          severity: Google.Example.Showcase.V1beta2.Issue.Severity.t(),
          description: String.t()
        }

  defstruct [:type, :severity, :description]

  field :type, 1, type: Google.Example.Showcase.V1beta2.Issue.Type, enum: true
  field :severity, 2, type: Google.Example.Showcase.V1beta2.Issue.Severity, enum: true
  field :description, 3, type: :string

  def transform_module(), do: nil
end

defmodule Google.Example.Showcase.V1beta2.ListTestsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Example.Showcase.V1beta2.ListTestsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tests: [Google.Example.Showcase.V1beta2.Test.t()],
          next_page_token: String.t()
        }

  defstruct [:tests, :next_page_token]

  field :tests, 1, repeated: true, type: Google.Example.Showcase.V1beta2.Test
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Example.Showcase.V1beta2.TestRun do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          test: String.t(),
          issue: Google.Example.Showcase.V1beta2.Issue.t() | nil
        }

  defstruct [:test, :issue]

  field :test, 1, type: :string
  field :issue, 2, type: Google.Example.Showcase.V1beta2.Issue

  def transform_module(), do: nil
end

defmodule Google.Example.Showcase.V1beta2.DeleteTestRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Example.Showcase.V1beta2.VerifyTestRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          answer: binary,
          answers: [binary]
        }

  defstruct [:name, :answer, :answers]

  field :name, 1, type: :string
  field :answer, 2, type: :bytes
  field :answers, 3, repeated: true, type: :bytes

  def transform_module(), do: nil
end

defmodule Google.Example.Showcase.V1beta2.VerifyTestResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          issue: Google.Example.Showcase.V1beta2.Issue.t() | nil
        }

  defstruct [:issue]

  field :issue, 1, type: Google.Example.Showcase.V1beta2.Issue

  def transform_module(), do: nil
end

defmodule Google.Example.Showcase.V1beta2.Testing.Service do
  @moduledoc false
  use GRPC.Service, name: "google.example.showcase.v1beta2.Testing"

  rpc :CreateSession,
      Google.Example.Showcase.V1beta2.CreateSessionRequest,
      Google.Example.Showcase.V1beta2.Session

  rpc :GetSession,
      Google.Example.Showcase.V1beta2.GetSessionRequest,
      Google.Example.Showcase.V1beta2.Session

  rpc :ListSessions,
      Google.Example.Showcase.V1beta2.ListSessionsRequest,
      Google.Example.Showcase.V1beta2.ListSessionsResponse

  rpc :DeleteSession, Google.Example.Showcase.V1beta2.DeleteSessionRequest, Google.Protobuf.Empty

  rpc :ReportSession,
      Google.Example.Showcase.V1beta2.ReportSessionRequest,
      Google.Example.Showcase.V1beta2.ReportSessionResponse

  rpc :ListTests,
      Google.Example.Showcase.V1beta2.ListTestsRequest,
      Google.Example.Showcase.V1beta2.ListTestsResponse

  rpc :DeleteTest, Google.Example.Showcase.V1beta2.DeleteTestRequest, Google.Protobuf.Empty

  rpc :VerifyTest,
      Google.Example.Showcase.V1beta2.VerifyTestRequest,
      Google.Example.Showcase.V1beta2.VerifyTestResponse
end

defmodule Google.Example.Showcase.V1beta2.Testing.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Example.Showcase.V1beta2.Testing.Service
end
