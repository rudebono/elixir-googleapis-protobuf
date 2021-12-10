defmodule Google.Example.Showcase.V1.Session.Version do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :VERSION_UNSPECIFIED | :V1_LATEST | :V1_0

  field :VERSION_UNSPECIFIED, 0
  field :V1_LATEST, 1
  field :V1_0, 2
end
defmodule Google.Example.Showcase.V1.ReportSessionResponse.Result do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :RESULT_UNSPECIFIED | :PASSED | :FAILED | :INCOMPLETE

  field :RESULT_UNSPECIFIED, 0
  field :PASSED, 1
  field :FAILED, 2
  field :INCOMPLETE, 3
end
defmodule Google.Example.Showcase.V1.Test.ExpectationLevel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :EXPECTATION_LEVEL_UNSPECIFIED | :REQUIRED | :RECOMMENDED | :OPTIONAL

  field :EXPECTATION_LEVEL_UNSPECIFIED, 0
  field :REQUIRED, 1
  field :RECOMMENDED, 2
  field :OPTIONAL, 3
end
defmodule Google.Example.Showcase.V1.Issue.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TYPE_UNSPECIFIED | :SKIPPED | :PENDING | :INCORRECT_CONFIRMATION

  field :TYPE_UNSPECIFIED, 0
  field :SKIPPED, 1
  field :PENDING, 2
  field :INCORRECT_CONFIRMATION, 3
end
defmodule Google.Example.Showcase.V1.Issue.Severity do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SEVERITY_UNSPECIFIED | :ERROR | :WARNING

  field :SEVERITY_UNSPECIFIED, 0
  field :ERROR, 1
  field :WARNING, 2
end
defmodule Google.Example.Showcase.V1.Session do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          version: Google.Example.Showcase.V1.Session.Version.t()
        }

  defstruct name: "",
            version: :VERSION_UNSPECIFIED

  field :name, 1, type: :string
  field :version, 2, type: Google.Example.Showcase.V1.Session.Version, enum: true
end
defmodule Google.Example.Showcase.V1.CreateSessionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          session: Google.Example.Showcase.V1.Session.t() | nil
        }

  defstruct session: nil

  field :session, 1, type: Google.Example.Showcase.V1.Session
end
defmodule Google.Example.Showcase.V1.GetSessionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Example.Showcase.V1.ListSessionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          page_size: integer,
          page_token: String.t()
        }

  defstruct page_size: 0,
            page_token: ""

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"
end
defmodule Google.Example.Showcase.V1.ListSessionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sessions: [Google.Example.Showcase.V1.Session.t()],
          next_page_token: String.t()
        }

  defstruct sessions: [],
            next_page_token: ""

  field :sessions, 1, repeated: true, type: Google.Example.Showcase.V1.Session
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Example.Showcase.V1.DeleteSessionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Example.Showcase.V1.ReportSessionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Example.Showcase.V1.ReportSessionResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: Google.Example.Showcase.V1.ReportSessionResponse.Result.t(),
          test_runs: [Google.Example.Showcase.V1.TestRun.t()]
        }

  defstruct result: :RESULT_UNSPECIFIED,
            test_runs: []

  field :result, 1, type: Google.Example.Showcase.V1.ReportSessionResponse.Result, enum: true

  field :test_runs, 2,
    repeated: true,
    type: Google.Example.Showcase.V1.TestRun,
    json_name: "testRuns"
end
defmodule Google.Example.Showcase.V1.Test.Blueprint.Invocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          method: String.t(),
          serialized_request: binary
        }

  defstruct method: "",
            serialized_request: ""

  field :method, 1, type: :string
  field :serialized_request, 2, type: :bytes, json_name: "serializedRequest"
end
defmodule Google.Example.Showcase.V1.Test.Blueprint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          request: Google.Example.Showcase.V1.Test.Blueprint.Invocation.t() | nil,
          additional_requests: [Google.Example.Showcase.V1.Test.Blueprint.Invocation.t()]
        }

  defstruct name: "",
            description: "",
            request: nil,
            additional_requests: []

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :request, 3, type: Google.Example.Showcase.V1.Test.Blueprint.Invocation

  field :additional_requests, 4,
    repeated: true,
    type: Google.Example.Showcase.V1.Test.Blueprint.Invocation,
    json_name: "additionalRequests"
end
defmodule Google.Example.Showcase.V1.Test do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          expectation_level: Google.Example.Showcase.V1.Test.ExpectationLevel.t(),
          description: String.t(),
          blueprints: [Google.Example.Showcase.V1.Test.Blueprint.t()]
        }

  defstruct name: "",
            expectation_level: :EXPECTATION_LEVEL_UNSPECIFIED,
            description: "",
            blueprints: []

  field :name, 1, type: :string

  field :expectation_level, 2,
    type: Google.Example.Showcase.V1.Test.ExpectationLevel,
    json_name: "expectationLevel",
    enum: true

  field :description, 3, type: :string
  field :blueprints, 4, repeated: true, type: Google.Example.Showcase.V1.Test.Blueprint
end
defmodule Google.Example.Showcase.V1.Issue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Example.Showcase.V1.Issue.Type.t(),
          severity: Google.Example.Showcase.V1.Issue.Severity.t(),
          description: String.t()
        }

  defstruct type: :TYPE_UNSPECIFIED,
            severity: :SEVERITY_UNSPECIFIED,
            description: ""

  field :type, 1, type: Google.Example.Showcase.V1.Issue.Type, enum: true
  field :severity, 2, type: Google.Example.Showcase.V1.Issue.Severity, enum: true
  field :description, 3, type: :string
end
defmodule Google.Example.Showcase.V1.ListTestsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Example.Showcase.V1.ListTestsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tests: [Google.Example.Showcase.V1.Test.t()],
          next_page_token: String.t()
        }

  defstruct tests: [],
            next_page_token: ""

  field :tests, 1, repeated: true, type: Google.Example.Showcase.V1.Test
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Example.Showcase.V1.TestRun do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          test: String.t(),
          issue: Google.Example.Showcase.V1.Issue.t() | nil
        }

  defstruct test: "",
            issue: nil

  field :test, 1, type: :string, deprecated: false
  field :issue, 2, type: Google.Example.Showcase.V1.Issue
end
defmodule Google.Example.Showcase.V1.DeleteTestRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Example.Showcase.V1.VerifyTestRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          answer: binary,
          answers: [binary]
        }

  defstruct name: "",
            answer: "",
            answers: []

  field :name, 1, type: :string, deprecated: false
  field :answer, 2, type: :bytes
  field :answers, 3, repeated: true, type: :bytes
end
defmodule Google.Example.Showcase.V1.VerifyTestResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          issue: Google.Example.Showcase.V1.Issue.t() | nil
        }

  defstruct issue: nil

  field :issue, 1, type: Google.Example.Showcase.V1.Issue
end
defmodule Google.Example.Showcase.V1.Testing.Service do
  @moduledoc false
  use GRPC.Service, name: "google.example.showcase.v1.Testing"

  rpc :CreateSession,
      Google.Example.Showcase.V1.CreateSessionRequest,
      Google.Example.Showcase.V1.Session

  rpc :GetSession,
      Google.Example.Showcase.V1.GetSessionRequest,
      Google.Example.Showcase.V1.Session

  rpc :ListSessions,
      Google.Example.Showcase.V1.ListSessionsRequest,
      Google.Example.Showcase.V1.ListSessionsResponse

  rpc :DeleteSession, Google.Example.Showcase.V1.DeleteSessionRequest, Google.Protobuf.Empty

  rpc :ReportSession,
      Google.Example.Showcase.V1.ReportSessionRequest,
      Google.Example.Showcase.V1.ReportSessionResponse

  rpc :ListTests,
      Google.Example.Showcase.V1.ListTestsRequest,
      Google.Example.Showcase.V1.ListTestsResponse

  rpc :DeleteTest, Google.Example.Showcase.V1.DeleteTestRequest, Google.Protobuf.Empty

  rpc :VerifyTest,
      Google.Example.Showcase.V1.VerifyTestRequest,
      Google.Example.Showcase.V1.VerifyTestResponse
end

defmodule Google.Example.Showcase.V1.Testing.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Example.Showcase.V1.Testing.Service
end
