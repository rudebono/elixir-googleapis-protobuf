defmodule Google.Devtools.Resultstore.V2.TestCase.Result do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :RESULT_UNSPECIFIED
          | :COMPLETED
          | :INTERRUPTED
          | :CANCELLED
          | :FILTERED
          | :SKIPPED
          | :SUPPRESSED

  field :RESULT_UNSPECIFIED, 0

  field :COMPLETED, 1

  field :INTERRUPTED, 2

  field :CANCELLED, 3

  field :FILTERED, 4

  field :SKIPPED, 5

  field :SUPPRESSED, 6
end

defmodule Google.Devtools.Resultstore.V2.TestSuite do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          suite_name: String.t(),
          tests: [Google.Devtools.Resultstore.V2.Test.t()],
          failures: [Google.Devtools.Resultstore.V2.TestFailure.t()],
          errors: [Google.Devtools.Resultstore.V2.TestError.t()],
          timing: Google.Devtools.Resultstore.V2.Timing.t() | nil,
          properties: [Google.Devtools.Resultstore.V2.Property.t()],
          files: [Google.Devtools.Resultstore.V2.File.t()]
        }

  defstruct [:suite_name, :tests, :failures, :errors, :timing, :properties, :files]

  field :suite_name, 1, type: :string
  field :tests, 2, repeated: true, type: Google.Devtools.Resultstore.V2.Test
  field :failures, 3, repeated: true, type: Google.Devtools.Resultstore.V2.TestFailure
  field :errors, 4, repeated: true, type: Google.Devtools.Resultstore.V2.TestError
  field :timing, 6, type: Google.Devtools.Resultstore.V2.Timing
  field :properties, 7, repeated: true, type: Google.Devtools.Resultstore.V2.Property
  field :files, 8, repeated: true, type: Google.Devtools.Resultstore.V2.File
end

defmodule Google.Devtools.Resultstore.V2.Test do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          test_type: {atom, any}
        }

  defstruct [:test_type]

  oneof :test_type, 0
  field :test_case, 1, type: Google.Devtools.Resultstore.V2.TestCase, oneof: 0
  field :test_suite, 2, type: Google.Devtools.Resultstore.V2.TestSuite, oneof: 0
end

defmodule Google.Devtools.Resultstore.V2.TestCase do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          case_name: String.t(),
          class_name: String.t(),
          result: Google.Devtools.Resultstore.V2.TestCase.Result.t(),
          failures: [Google.Devtools.Resultstore.V2.TestFailure.t()],
          errors: [Google.Devtools.Resultstore.V2.TestError.t()],
          timing: Google.Devtools.Resultstore.V2.Timing.t() | nil,
          properties: [Google.Devtools.Resultstore.V2.Property.t()],
          files: [Google.Devtools.Resultstore.V2.File.t()]
        }

  defstruct [:case_name, :class_name, :result, :failures, :errors, :timing, :properties, :files]

  field :case_name, 1, type: :string
  field :class_name, 2, type: :string
  field :result, 3, type: Google.Devtools.Resultstore.V2.TestCase.Result, enum: true
  field :failures, 4, repeated: true, type: Google.Devtools.Resultstore.V2.TestFailure
  field :errors, 5, repeated: true, type: Google.Devtools.Resultstore.V2.TestError
  field :timing, 7, type: Google.Devtools.Resultstore.V2.Timing
  field :properties, 8, repeated: true, type: Google.Devtools.Resultstore.V2.Property
  field :files, 9, repeated: true, type: Google.Devtools.Resultstore.V2.File
end

defmodule Google.Devtools.Resultstore.V2.TestFailure do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          failure_message: String.t(),
          exception_type: String.t(),
          stack_trace: String.t(),
          expected: [String.t()],
          actual: [String.t()]
        }

  defstruct [:failure_message, :exception_type, :stack_trace, :expected, :actual]

  field :failure_message, 1, type: :string
  field :exception_type, 2, type: :string
  field :stack_trace, 3, type: :string
  field :expected, 4, repeated: true, type: :string
  field :actual, 5, repeated: true, type: :string
end

defmodule Google.Devtools.Resultstore.V2.TestError do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          error_message: String.t(),
          exception_type: String.t(),
          stack_trace: String.t()
        }

  defstruct [:error_message, :exception_type, :stack_trace]

  field :error_message, 1, type: :string
  field :exception_type, 2, type: :string
  field :stack_trace, 3, type: :string
end
