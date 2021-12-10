defmodule Google.Devtools.Resultstore.V2.ExecutionStrategy do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :EXECUTION_STRATEGY_UNSPECIFIED
          | :OTHER_ENVIRONMENT
          | :REMOTE_SERVICE
          | :LOCAL_PARALLEL
          | :LOCAL_SEQUENTIAL

  field :EXECUTION_STRATEGY_UNSPECIFIED, 0
  field :OTHER_ENVIRONMENT, 1
  field :REMOTE_SERVICE, 2
  field :LOCAL_PARALLEL, 3
  field :LOCAL_SEQUENTIAL, 4
end
defmodule Google.Devtools.Resultstore.V2.TestCaching do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :TEST_CACHING_UNSPECIFIED | :LOCAL_CACHE_HIT | :REMOTE_CACHE_HIT | :CACHE_MISS

  field :TEST_CACHING_UNSPECIFIED, 0
  field :LOCAL_CACHE_HIT, 1
  field :REMOTE_CACHE_HIT, 2
  field :CACHE_MISS, 3
end
defmodule Google.Devtools.Resultstore.V2.Action.Id do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          invocation_id: String.t(),
          target_id: String.t(),
          configuration_id: String.t(),
          action_id: String.t()
        }

  defstruct invocation_id: "",
            target_id: "",
            configuration_id: "",
            action_id: ""

  field :invocation_id, 1, type: :string, json_name: "invocationId"
  field :target_id, 2, type: :string, json_name: "targetId"
  field :configuration_id, 3, type: :string, json_name: "configurationId"
  field :action_id, 4, type: :string, json_name: "actionId"
end
defmodule Google.Devtools.Resultstore.V2.Action do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          action_type:
            {:build_action, Google.Devtools.Resultstore.V2.BuildAction.t() | nil}
            | {:test_action, Google.Devtools.Resultstore.V2.TestAction.t() | nil},
          name: String.t(),
          id: Google.Devtools.Resultstore.V2.Action.Id.t() | nil,
          status_attributes: Google.Devtools.Resultstore.V2.StatusAttributes.t() | nil,
          timing: Google.Devtools.Resultstore.V2.Timing.t() | nil,
          action_attributes: Google.Devtools.Resultstore.V2.ActionAttributes.t() | nil,
          action_dependencies: [Google.Devtools.Resultstore.V2.Dependency.t()],
          properties: [Google.Devtools.Resultstore.V2.Property.t()],
          files: [Google.Devtools.Resultstore.V2.File.t()],
          file_sets: [String.t()],
          coverage: Google.Devtools.Resultstore.V2.ActionCoverage.t() | nil,
          file_processing_errors: [Google.Devtools.Resultstore.V2.FileProcessingErrors.t()]
        }

  defstruct action_type: nil,
            name: "",
            id: nil,
            status_attributes: nil,
            timing: nil,
            action_attributes: nil,
            action_dependencies: [],
            properties: [],
            files: [],
            file_sets: [],
            coverage: nil,
            file_processing_errors: []

  oneof :action_type, 0

  field :name, 1, type: :string
  field :id, 2, type: Google.Devtools.Resultstore.V2.Action.Id

  field :status_attributes, 3,
    type: Google.Devtools.Resultstore.V2.StatusAttributes,
    json_name: "statusAttributes"

  field :timing, 4, type: Google.Devtools.Resultstore.V2.Timing

  field :build_action, 9,
    type: Google.Devtools.Resultstore.V2.BuildAction,
    json_name: "buildAction",
    oneof: 0

  field :test_action, 10,
    type: Google.Devtools.Resultstore.V2.TestAction,
    json_name: "testAction",
    oneof: 0

  field :action_attributes, 5,
    type: Google.Devtools.Resultstore.V2.ActionAttributes,
    json_name: "actionAttributes"

  field :action_dependencies, 14,
    repeated: true,
    type: Google.Devtools.Resultstore.V2.Dependency,
    json_name: "actionDependencies"

  field :properties, 7, repeated: true, type: Google.Devtools.Resultstore.V2.Property
  field :files, 8, repeated: true, type: Google.Devtools.Resultstore.V2.File
  field :file_sets, 15, repeated: true, type: :string, json_name: "fileSets"
  field :coverage, 11, type: Google.Devtools.Resultstore.V2.ActionCoverage

  field :file_processing_errors, 13,
    repeated: true,
    type: Google.Devtools.Resultstore.V2.FileProcessingErrors,
    json_name: "fileProcessingErrors"
end
defmodule Google.Devtools.Resultstore.V2.BuildAction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: String.t(),
          primary_input_path: String.t(),
          primary_output_path: String.t()
        }

  defstruct type: "",
            primary_input_path: "",
            primary_output_path: ""

  field :type, 1, type: :string
  field :primary_input_path, 2, type: :string, json_name: "primaryInputPath"
  field :primary_output_path, 3, type: :string, json_name: "primaryOutputPath"
end
defmodule Google.Devtools.Resultstore.V2.TestAction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          test_timing: Google.Devtools.Resultstore.V2.TestTiming.t() | nil,
          shard_number: integer,
          run_number: integer,
          attempt_number: integer,
          test_suite: Google.Devtools.Resultstore.V2.TestSuite.t() | nil,
          warnings: [Google.Devtools.Resultstore.V2.TestWarning.t()],
          estimated_memory_bytes: integer
        }

  defstruct test_timing: nil,
            shard_number: 0,
            run_number: 0,
            attempt_number: 0,
            test_suite: nil,
            warnings: [],
            estimated_memory_bytes: 0

  field :test_timing, 1, type: Google.Devtools.Resultstore.V2.TestTiming, json_name: "testTiming"
  field :shard_number, 2, type: :int32, json_name: "shardNumber"
  field :run_number, 3, type: :int32, json_name: "runNumber"
  field :attempt_number, 4, type: :int32, json_name: "attemptNumber"
  field :test_suite, 5, type: Google.Devtools.Resultstore.V2.TestSuite, json_name: "testSuite"
  field :warnings, 8, repeated: true, type: Google.Devtools.Resultstore.V2.TestWarning
  field :estimated_memory_bytes, 10, type: :int64, json_name: "estimatedMemoryBytes"
end
defmodule Google.Devtools.Resultstore.V2.ActionAttributes do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          execution_strategy: Google.Devtools.Resultstore.V2.ExecutionStrategy.t(),
          exit_code: integer,
          hostname: String.t(),
          input_file_info: Google.Devtools.Resultstore.V2.InputFileInfo.t() | nil
        }

  defstruct execution_strategy: :EXECUTION_STRATEGY_UNSPECIFIED,
            exit_code: 0,
            hostname: "",
            input_file_info: nil

  field :execution_strategy, 1,
    type: Google.Devtools.Resultstore.V2.ExecutionStrategy,
    json_name: "executionStrategy",
    enum: true

  field :exit_code, 2, type: :int32, json_name: "exitCode"
  field :hostname, 3, type: :string

  field :input_file_info, 4,
    type: Google.Devtools.Resultstore.V2.InputFileInfo,
    json_name: "inputFileInfo"
end
defmodule Google.Devtools.Resultstore.V2.InputFileInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          count: integer,
          distinct_count: integer,
          count_limit: integer,
          distinct_bytes: integer,
          distinct_byte_limit: integer
        }

  defstruct count: 0,
            distinct_count: 0,
            count_limit: 0,
            distinct_bytes: 0,
            distinct_byte_limit: 0

  field :count, 1, type: :int64
  field :distinct_count, 2, type: :int64, json_name: "distinctCount"
  field :count_limit, 3, type: :int64, json_name: "countLimit"
  field :distinct_bytes, 4, type: :int64, json_name: "distinctBytes"
  field :distinct_byte_limit, 5, type: :int64, json_name: "distinctByteLimit"
end
defmodule Google.Devtools.Resultstore.V2.LocalTestTiming do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          test_process_duration: Google.Protobuf.Duration.t() | nil
        }

  defstruct test_process_duration: nil

  field :test_process_duration, 1,
    type: Google.Protobuf.Duration,
    json_name: "testProcessDuration"
end
defmodule Google.Devtools.Resultstore.V2.RemoteTestAttemptTiming do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          queue_duration: Google.Protobuf.Duration.t() | nil,
          upload_duration: Google.Protobuf.Duration.t() | nil,
          machine_setup_duration: Google.Protobuf.Duration.t() | nil,
          test_process_duration: Google.Protobuf.Duration.t() | nil,
          download_duration: Google.Protobuf.Duration.t() | nil
        }

  defstruct queue_duration: nil,
            upload_duration: nil,
            machine_setup_duration: nil,
            test_process_duration: nil,
            download_duration: nil

  field :queue_duration, 1, type: Google.Protobuf.Duration, json_name: "queueDuration"
  field :upload_duration, 2, type: Google.Protobuf.Duration, json_name: "uploadDuration"

  field :machine_setup_duration, 3,
    type: Google.Protobuf.Duration,
    json_name: "machineSetupDuration"

  field :test_process_duration, 4,
    type: Google.Protobuf.Duration,
    json_name: "testProcessDuration"

  field :download_duration, 5, type: Google.Protobuf.Duration, json_name: "downloadDuration"
end
defmodule Google.Devtools.Resultstore.V2.RemoteTestTiming do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          local_analysis_duration: Google.Protobuf.Duration.t() | nil,
          attempts: [Google.Devtools.Resultstore.V2.RemoteTestAttemptTiming.t()]
        }

  defstruct local_analysis_duration: nil,
            attempts: []

  field :local_analysis_duration, 1,
    type: Google.Protobuf.Duration,
    json_name: "localAnalysisDuration"

  field :attempts, 2, repeated: true, type: Google.Devtools.Resultstore.V2.RemoteTestAttemptTiming
end
defmodule Google.Devtools.Resultstore.V2.TestTiming do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location:
            {:local, Google.Devtools.Resultstore.V2.LocalTestTiming.t() | nil}
            | {:remote, Google.Devtools.Resultstore.V2.RemoteTestTiming.t() | nil},
          system_time_duration: Google.Protobuf.Duration.t() | nil,
          user_time_duration: Google.Protobuf.Duration.t() | nil,
          test_caching: Google.Devtools.Resultstore.V2.TestCaching.t()
        }

  defstruct location: nil,
            system_time_duration: nil,
            user_time_duration: nil,
            test_caching: :TEST_CACHING_UNSPECIFIED

  oneof :location, 0

  field :local, 1, type: Google.Devtools.Resultstore.V2.LocalTestTiming, oneof: 0
  field :remote, 2, type: Google.Devtools.Resultstore.V2.RemoteTestTiming, oneof: 0
  field :system_time_duration, 3, type: Google.Protobuf.Duration, json_name: "systemTimeDuration"
  field :user_time_duration, 4, type: Google.Protobuf.Duration, json_name: "userTimeDuration"

  field :test_caching, 5,
    type: Google.Devtools.Resultstore.V2.TestCaching,
    json_name: "testCaching",
    enum: true
end
defmodule Google.Devtools.Resultstore.V2.TestWarning do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          warning_message: String.t()
        }

  defstruct warning_message: ""

  field :warning_message, 1, type: :string, json_name: "warningMessage"
end
