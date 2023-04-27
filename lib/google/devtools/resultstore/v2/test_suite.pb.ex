defmodule Google.Devtools.Resultstore.V2.TestCase.Result do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :suite_name, 1, type: :string, json_name: "suiteName"
  field :tests, 2, repeated: true, type: Google.Devtools.Resultstore.V2.Test
  field :failures, 3, repeated: true, type: Google.Devtools.Resultstore.V2.TestFailure
  field :errors, 4, repeated: true, type: Google.Devtools.Resultstore.V2.TestError
  field :timing, 6, type: Google.Devtools.Resultstore.V2.Timing
  field :properties, 7, repeated: true, type: Google.Devtools.Resultstore.V2.Property
  field :files, 8, repeated: true, type: Google.Devtools.Resultstore.V2.File
end

defmodule Google.Devtools.Resultstore.V2.Test do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :test_type, 0

  field :test_case, 1,
    type: Google.Devtools.Resultstore.V2.TestCase,
    json_name: "testCase",
    oneof: 0

  field :test_suite, 2,
    type: Google.Devtools.Resultstore.V2.TestSuite,
    json_name: "testSuite",
    oneof: 0
end

defmodule Google.Devtools.Resultstore.V2.TestCase do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :case_name, 1, type: :string, json_name: "caseName"
  field :class_name, 2, type: :string, json_name: "className"
  field :result, 3, type: Google.Devtools.Resultstore.V2.TestCase.Result, enum: true
  field :failures, 4, repeated: true, type: Google.Devtools.Resultstore.V2.TestFailure
  field :errors, 5, repeated: true, type: Google.Devtools.Resultstore.V2.TestError
  field :timing, 7, type: Google.Devtools.Resultstore.V2.Timing
  field :properties, 8, repeated: true, type: Google.Devtools.Resultstore.V2.Property
  field :files, 9, repeated: true, type: Google.Devtools.Resultstore.V2.File
end

defmodule Google.Devtools.Resultstore.V2.TestFailure do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :failure_message, 1, type: :string, json_name: "failureMessage"
  field :exception_type, 2, type: :string, json_name: "exceptionType"
  field :stack_trace, 3, type: :string, json_name: "stackTrace"
  field :expected, 4, repeated: true, type: :string
  field :actual, 5, repeated: true, type: :string
end

defmodule Google.Devtools.Resultstore.V2.TestError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :error_message, 1, type: :string, json_name: "errorMessage"
  field :exception_type, 2, type: :string, json_name: "exceptionType"
  field :stack_trace, 3, type: :string, json_name: "stackTrace"
end