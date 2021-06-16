defmodule Google.Devtools.Testing.V1.OrchestratorOption do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ORCHESTRATOR_OPTION_UNSPECIFIED
          | :USE_ORCHESTRATOR
          | :DO_NOT_USE_ORCHESTRATOR

  field :ORCHESTRATOR_OPTION_UNSPECIFIED, 0

  field :USE_ORCHESTRATOR, 1

  field :DO_NOT_USE_ORCHESTRATOR, 2
end

defmodule Google.Devtools.Testing.V1.RoboActionType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ACTION_TYPE_UNSPECIFIED | :SINGLE_CLICK | :ENTER_TEXT | :IGNORE

  field :ACTION_TYPE_UNSPECIFIED, 0

  field :SINGLE_CLICK, 1

  field :ENTER_TEXT, 2

  field :IGNORE, 3
end

defmodule Google.Devtools.Testing.V1.InvalidMatrixDetails do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :INVALID_MATRIX_DETAILS_UNSPECIFIED
          | :DETAILS_UNAVAILABLE
          | :MALFORMED_APK
          | :MALFORMED_TEST_APK
          | :NO_MANIFEST
          | :NO_PACKAGE_NAME
          | :INVALID_PACKAGE_NAME
          | :TEST_SAME_AS_APP
          | :NO_INSTRUMENTATION
          | :NO_SIGNATURE
          | :INSTRUMENTATION_ORCHESTRATOR_INCOMPATIBLE
          | :NO_TEST_RUNNER_CLASS
          | :NO_LAUNCHER_ACTIVITY
          | :FORBIDDEN_PERMISSIONS
          | :INVALID_ROBO_DIRECTIVES
          | :INVALID_RESOURCE_NAME
          | :INVALID_DIRECTIVE_ACTION
          | :TEST_LOOP_INTENT_FILTER_NOT_FOUND
          | :SCENARIO_LABEL_NOT_DECLARED
          | :SCENARIO_LABEL_MALFORMED
          | :SCENARIO_NOT_DECLARED
          | :DEVICE_ADMIN_RECEIVER
          | :MALFORMED_XC_TEST_ZIP
          | :BUILT_FOR_IOS_SIMULATOR
          | :NO_TESTS_IN_XC_TEST_ZIP
          | :USE_DESTINATION_ARTIFACTS
          | :TEST_NOT_APP_HOSTED
          | :PLIST_CANNOT_BE_PARSED
          | :TEST_ONLY_APK
          | :MALFORMED_IPA
          | :MISSING_URL_SCHEME
          | :MALFORMED_APP_BUNDLE
          | :NO_CODE_APK
          | :INVALID_INPUT_APK
          | :INVALID_APK_PREVIEW_SDK

  field :INVALID_MATRIX_DETAILS_UNSPECIFIED, 0

  field :DETAILS_UNAVAILABLE, 1

  field :MALFORMED_APK, 2

  field :MALFORMED_TEST_APK, 3

  field :NO_MANIFEST, 4

  field :NO_PACKAGE_NAME, 5

  field :INVALID_PACKAGE_NAME, 31

  field :TEST_SAME_AS_APP, 6

  field :NO_INSTRUMENTATION, 7

  field :NO_SIGNATURE, 20

  field :INSTRUMENTATION_ORCHESTRATOR_INCOMPATIBLE, 18

  field :NO_TEST_RUNNER_CLASS, 19

  field :NO_LAUNCHER_ACTIVITY, 8

  field :FORBIDDEN_PERMISSIONS, 9

  field :INVALID_ROBO_DIRECTIVES, 10

  field :INVALID_RESOURCE_NAME, 33

  field :INVALID_DIRECTIVE_ACTION, 34

  field :TEST_LOOP_INTENT_FILTER_NOT_FOUND, 12

  field :SCENARIO_LABEL_NOT_DECLARED, 13

  field :SCENARIO_LABEL_MALFORMED, 14

  field :SCENARIO_NOT_DECLARED, 15

  field :DEVICE_ADMIN_RECEIVER, 17

  field :MALFORMED_XC_TEST_ZIP, 11

  field :BUILT_FOR_IOS_SIMULATOR, 24

  field :NO_TESTS_IN_XC_TEST_ZIP, 25

  field :USE_DESTINATION_ARTIFACTS, 26

  field :TEST_NOT_APP_HOSTED, 28

  field :PLIST_CANNOT_BE_PARSED, 30

  field :TEST_ONLY_APK, 21

  field :MALFORMED_IPA, 22

  field :MISSING_URL_SCHEME, 35

  field :MALFORMED_APP_BUNDLE, 36

  field :NO_CODE_APK, 23

  field :INVALID_INPUT_APK, 27

  field :INVALID_APK_PREVIEW_SDK, 29
end

defmodule Google.Devtools.Testing.V1.TestState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TEST_STATE_UNSPECIFIED
          | :VALIDATING
          | :PENDING
          | :RUNNING
          | :FINISHED
          | :ERROR
          | :UNSUPPORTED_ENVIRONMENT
          | :INCOMPATIBLE_ENVIRONMENT
          | :INCOMPATIBLE_ARCHITECTURE
          | :CANCELLED
          | :INVALID

  field :TEST_STATE_UNSPECIFIED, 0

  field :VALIDATING, 8

  field :PENDING, 1

  field :RUNNING, 2

  field :FINISHED, 3

  field :ERROR, 4

  field :UNSUPPORTED_ENVIRONMENT, 5

  field :INCOMPATIBLE_ENVIRONMENT, 9

  field :INCOMPATIBLE_ARCHITECTURE, 10

  field :CANCELLED, 6

  field :INVALID, 7
end

defmodule Google.Devtools.Testing.V1.OutcomeSummary do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :OUTCOME_SUMMARY_UNSPECIFIED | :SUCCESS | :FAILURE | :INCONCLUSIVE | :SKIPPED

  field :OUTCOME_SUMMARY_UNSPECIFIED, 0

  field :SUCCESS, 1

  field :FAILURE, 2

  field :INCONCLUSIVE, 3

  field :SKIPPED, 4
end

defmodule Google.Devtools.Testing.V1.InvalidRequestDetail.Reason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :REASON_UNSPECIFIED
          | :REQUEST_INVALID
          | :RESOURCE_TOO_BIG
          | :RESOURCE_NOT_FOUND
          | :UNSUPPORTED
          | :NOT_IMPLEMENTED

  field :REASON_UNSPECIFIED, 0

  field :REQUEST_INVALID, 1

  field :RESOURCE_TOO_BIG, 2

  field :RESOURCE_NOT_FOUND, 3

  field :UNSUPPORTED, 4

  field :NOT_IMPLEMENTED, 5
end

defmodule Google.Devtools.Testing.V1.TestMatrix do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          test_matrix_id: String.t(),
          project_id: String.t(),
          client_info: Google.Devtools.Testing.V1.ClientInfo.t() | nil,
          test_specification: Google.Devtools.Testing.V1.TestSpecification.t() | nil,
          environment_matrix: Google.Devtools.Testing.V1.EnvironmentMatrix.t() | nil,
          test_executions: [Google.Devtools.Testing.V1.TestExecution.t()],
          result_storage: Google.Devtools.Testing.V1.ResultStorage.t() | nil,
          state: Google.Devtools.Testing.V1.TestState.t(),
          timestamp: Google.Protobuf.Timestamp.t() | nil,
          invalid_matrix_details: Google.Devtools.Testing.V1.InvalidMatrixDetails.t(),
          flaky_test_attempts: integer,
          outcome_summary: Google.Devtools.Testing.V1.OutcomeSummary.t(),
          fail_fast: boolean
        }

  defstruct [
    :test_matrix_id,
    :project_id,
    :client_info,
    :test_specification,
    :environment_matrix,
    :test_executions,
    :result_storage,
    :state,
    :timestamp,
    :invalid_matrix_details,
    :flaky_test_attempts,
    :outcome_summary,
    :fail_fast
  ]

  field :test_matrix_id, 1, type: :string
  field :project_id, 7, type: :string
  field :client_info, 10, type: Google.Devtools.Testing.V1.ClientInfo
  field :test_specification, 3, type: Google.Devtools.Testing.V1.TestSpecification
  field :environment_matrix, 4, type: Google.Devtools.Testing.V1.EnvironmentMatrix
  field :test_executions, 5, repeated: true, type: Google.Devtools.Testing.V1.TestExecution
  field :result_storage, 6, type: Google.Devtools.Testing.V1.ResultStorage
  field :state, 8, type: Google.Devtools.Testing.V1.TestState, enum: true
  field :timestamp, 9, type: Google.Protobuf.Timestamp

  field :invalid_matrix_details, 11,
    type: Google.Devtools.Testing.V1.InvalidMatrixDetails,
    enum: true

  field :flaky_test_attempts, 13, type: :int32
  field :outcome_summary, 14, type: Google.Devtools.Testing.V1.OutcomeSummary, enum: true
  field :fail_fast, 17, type: :bool
end

defmodule Google.Devtools.Testing.V1.TestExecution do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          matrix_id: String.t(),
          project_id: String.t(),
          test_specification: Google.Devtools.Testing.V1.TestSpecification.t() | nil,
          shard: Google.Devtools.Testing.V1.Shard.t() | nil,
          environment: Google.Devtools.Testing.V1.Environment.t() | nil,
          state: Google.Devtools.Testing.V1.TestState.t(),
          tool_results_step: Google.Devtools.Testing.V1.ToolResultsStep.t() | nil,
          timestamp: Google.Protobuf.Timestamp.t() | nil,
          test_details: Google.Devtools.Testing.V1.TestDetails.t() | nil
        }

  defstruct [
    :id,
    :matrix_id,
    :project_id,
    :test_specification,
    :shard,
    :environment,
    :state,
    :tool_results_step,
    :timestamp,
    :test_details
  ]

  field :id, 1, type: :string
  field :matrix_id, 9, type: :string
  field :project_id, 10, type: :string
  field :test_specification, 3, type: Google.Devtools.Testing.V1.TestSpecification
  field :shard, 12, type: Google.Devtools.Testing.V1.Shard
  field :environment, 4, type: Google.Devtools.Testing.V1.Environment
  field :state, 5, type: Google.Devtools.Testing.V1.TestState, enum: true
  field :tool_results_step, 11, type: Google.Devtools.Testing.V1.ToolResultsStep
  field :timestamp, 7, type: Google.Protobuf.Timestamp
  field :test_details, 8, type: Google.Devtools.Testing.V1.TestDetails
end

defmodule Google.Devtools.Testing.V1.TestSpecification do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          setup: {atom, any},
          test: {atom, any},
          test_timeout: Google.Protobuf.Duration.t() | nil,
          disable_video_recording: boolean,
          disable_performance_metrics: boolean
        }

  defstruct [:setup, :test, :test_timeout, :disable_video_recording, :disable_performance_metrics]

  oneof :setup, 0
  oneof :test, 1
  field :test_timeout, 1, type: Google.Protobuf.Duration
  field :test_setup, 6, type: Google.Devtools.Testing.V1.TestSetup, oneof: 0
  field :ios_test_setup, 14, type: Google.Devtools.Testing.V1.IosTestSetup, oneof: 0

  field :android_instrumentation_test, 2,
    type: Google.Devtools.Testing.V1.AndroidInstrumentationTest,
    oneof: 1

  field :android_robo_test, 3, type: Google.Devtools.Testing.V1.AndroidRoboTest, oneof: 1
  field :android_test_loop, 9, type: Google.Devtools.Testing.V1.AndroidTestLoop, oneof: 1
  field :ios_xc_test, 13, type: Google.Devtools.Testing.V1.IosXcTest, oneof: 1
  field :ios_test_loop, 15, type: Google.Devtools.Testing.V1.IosTestLoop, oneof: 1
  field :disable_video_recording, 10, type: :bool
  field :disable_performance_metrics, 11, type: :bool
end

defmodule Google.Devtools.Testing.V1.SystraceSetup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          duration_seconds: integer
        }

  defstruct [:duration_seconds]

  field :duration_seconds, 1, type: :int32
end

defmodule Google.Devtools.Testing.V1.TestSetup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          files_to_push: [Google.Devtools.Testing.V1.DeviceFile.t()],
          directories_to_pull: [String.t()],
          additional_apks: [Google.Devtools.Testing.V1.Apk.t()],
          account: Google.Devtools.Testing.V1.Account.t() | nil,
          network_profile: String.t(),
          environment_variables: [Google.Devtools.Testing.V1.EnvironmentVariable.t()],
          systrace: Google.Devtools.Testing.V1.SystraceSetup.t() | nil,
          dont_autogrant_permissions: boolean
        }

  defstruct [
    :files_to_push,
    :directories_to_pull,
    :additional_apks,
    :account,
    :network_profile,
    :environment_variables,
    :systrace,
    :dont_autogrant_permissions
  ]

  field :files_to_push, 1, repeated: true, type: Google.Devtools.Testing.V1.DeviceFile
  field :directories_to_pull, 2, repeated: true, type: :string
  field :additional_apks, 3, repeated: true, type: Google.Devtools.Testing.V1.Apk
  field :account, 4, type: Google.Devtools.Testing.V1.Account
  field :network_profile, 5, type: :string

  field :environment_variables, 6,
    repeated: true,
    type: Google.Devtools.Testing.V1.EnvironmentVariable

  field :systrace, 9, type: Google.Devtools.Testing.V1.SystraceSetup
  field :dont_autogrant_permissions, 23, type: :bool
end

defmodule Google.Devtools.Testing.V1.IosTestSetup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          network_profile: String.t(),
          additional_ipas: [Google.Devtools.Testing.V1.FileReference.t()],
          push_files: [Google.Devtools.Testing.V1.IosDeviceFile.t()],
          pull_directories: [Google.Devtools.Testing.V1.IosDeviceFile.t()]
        }

  defstruct [:network_profile, :additional_ipas, :push_files, :pull_directories]

  field :network_profile, 1, type: :string
  field :additional_ipas, 2, repeated: true, type: Google.Devtools.Testing.V1.FileReference
  field :push_files, 3, repeated: true, type: Google.Devtools.Testing.V1.IosDeviceFile
  field :pull_directories, 4, repeated: true, type: Google.Devtools.Testing.V1.IosDeviceFile
end

defmodule Google.Devtools.Testing.V1.EnvironmentVariable do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Devtools.Testing.V1.Account do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          account_type: {atom, any}
        }

  defstruct [:account_type]

  oneof :account_type, 0
  field :google_auto, 1, type: Google.Devtools.Testing.V1.GoogleAuto, oneof: 0
end

defmodule Google.Devtools.Testing.V1.GoogleAuto do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Devtools.Testing.V1.Apk do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location: Google.Devtools.Testing.V1.FileReference.t() | nil,
          package_name: String.t()
        }

  defstruct [:location, :package_name]

  field :location, 1, type: Google.Devtools.Testing.V1.FileReference
  field :package_name, 2, type: :string
end

defmodule Google.Devtools.Testing.V1.AppBundle do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bundle: {atom, any}
        }

  defstruct [:bundle]

  oneof :bundle, 0
  field :bundle_location, 1, type: Google.Devtools.Testing.V1.FileReference, oneof: 0
end

defmodule Google.Devtools.Testing.V1.DeviceFile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          device_file: {atom, any}
        }

  defstruct [:device_file]

  oneof :device_file, 0
  field :obb_file, 1, type: Google.Devtools.Testing.V1.ObbFile, oneof: 0
  field :regular_file, 2, type: Google.Devtools.Testing.V1.RegularFile, oneof: 0
end

defmodule Google.Devtools.Testing.V1.ObbFile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          obb_file_name: String.t(),
          obb: Google.Devtools.Testing.V1.FileReference.t() | nil
        }

  defstruct [:obb_file_name, :obb]

  field :obb_file_name, 1, type: :string
  field :obb, 2, type: Google.Devtools.Testing.V1.FileReference
end

defmodule Google.Devtools.Testing.V1.RegularFile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: Google.Devtools.Testing.V1.FileReference.t() | nil,
          device_path: String.t()
        }

  defstruct [:content, :device_path]

  field :content, 1, type: Google.Devtools.Testing.V1.FileReference
  field :device_path, 2, type: :string
end

defmodule Google.Devtools.Testing.V1.IosDeviceFile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: Google.Devtools.Testing.V1.FileReference.t() | nil,
          bundle_id: String.t(),
          device_path: String.t()
        }

  defstruct [:content, :bundle_id, :device_path]

  field :content, 1, type: Google.Devtools.Testing.V1.FileReference
  field :bundle_id, 2, type: :string
  field :device_path, 3, type: :string
end

defmodule Google.Devtools.Testing.V1.AndroidTestLoop do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          app_under_test: {atom, any},
          app_package_id: String.t(),
          scenarios: [integer],
          scenario_labels: [String.t()]
        }

  defstruct [:app_under_test, :app_package_id, :scenarios, :scenario_labels]

  oneof :app_under_test, 0
  field :app_apk, 1, type: Google.Devtools.Testing.V1.FileReference, oneof: 0
  field :app_bundle, 5, type: Google.Devtools.Testing.V1.AppBundle, oneof: 0
  field :app_package_id, 2, type: :string
  field :scenarios, 3, repeated: true, type: :int32
  field :scenario_labels, 4, repeated: true, type: :string
end

defmodule Google.Devtools.Testing.V1.IosXcTest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tests_zip: Google.Devtools.Testing.V1.FileReference.t() | nil,
          xctestrun: Google.Devtools.Testing.V1.FileReference.t() | nil,
          xcode_version: String.t(),
          app_bundle_id: String.t(),
          test_special_entitlements: boolean
        }

  defstruct [:tests_zip, :xctestrun, :xcode_version, :app_bundle_id, :test_special_entitlements]

  field :tests_zip, 1, type: Google.Devtools.Testing.V1.FileReference
  field :xctestrun, 2, type: Google.Devtools.Testing.V1.FileReference
  field :xcode_version, 3, type: :string
  field :app_bundle_id, 4, type: :string
  field :test_special_entitlements, 6, type: :bool
end

defmodule Google.Devtools.Testing.V1.IosTestLoop do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          app_ipa: Google.Devtools.Testing.V1.FileReference.t() | nil,
          scenarios: [integer],
          app_bundle_id: String.t()
        }

  defstruct [:app_ipa, :scenarios, :app_bundle_id]

  field :app_ipa, 1, type: Google.Devtools.Testing.V1.FileReference
  field :scenarios, 2, repeated: true, type: :int32
  field :app_bundle_id, 3, type: :string
end

defmodule Google.Devtools.Testing.V1.AndroidInstrumentationTest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          app_under_test: {atom, any},
          test_apk: Google.Devtools.Testing.V1.FileReference.t() | nil,
          app_package_id: String.t(),
          test_package_id: String.t(),
          test_runner_class: String.t(),
          test_targets: [String.t()],
          orchestrator_option: Google.Devtools.Testing.V1.OrchestratorOption.t(),
          sharding_option: Google.Devtools.Testing.V1.ShardingOption.t() | nil
        }

  defstruct [
    :app_under_test,
    :test_apk,
    :app_package_id,
    :test_package_id,
    :test_runner_class,
    :test_targets,
    :orchestrator_option,
    :sharding_option
  ]

  oneof :app_under_test, 0
  field :app_apk, 1, type: Google.Devtools.Testing.V1.FileReference, oneof: 0
  field :app_bundle, 8, type: Google.Devtools.Testing.V1.AppBundle, oneof: 0
  field :test_apk, 2, type: Google.Devtools.Testing.V1.FileReference
  field :app_package_id, 3, type: :string
  field :test_package_id, 4, type: :string
  field :test_runner_class, 5, type: :string
  field :test_targets, 6, repeated: true, type: :string
  field :orchestrator_option, 7, type: Google.Devtools.Testing.V1.OrchestratorOption, enum: true
  field :sharding_option, 9, type: Google.Devtools.Testing.V1.ShardingOption
end

defmodule Google.Devtools.Testing.V1.AndroidRoboTest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          app_under_test: {atom, any},
          app_package_id: String.t(),
          app_initial_activity: String.t(),
          max_depth: integer,
          max_steps: integer,
          robo_directives: [Google.Devtools.Testing.V1.RoboDirective.t()],
          robo_script: Google.Devtools.Testing.V1.FileReference.t() | nil,
          starting_intents: [Google.Devtools.Testing.V1.RoboStartingIntent.t()]
        }

  defstruct [
    :app_under_test,
    :app_package_id,
    :app_initial_activity,
    :max_depth,
    :max_steps,
    :robo_directives,
    :robo_script,
    :starting_intents
  ]

  oneof :app_under_test, 0
  field :app_apk, 1, type: Google.Devtools.Testing.V1.FileReference, oneof: 0
  field :app_bundle, 16, type: Google.Devtools.Testing.V1.AppBundle, oneof: 0
  field :app_package_id, 2, type: :string
  field :app_initial_activity, 3, type: :string
  field :max_depth, 7, type: :int32, deprecated: true
  field :max_steps, 8, type: :int32, deprecated: true
  field :robo_directives, 11, repeated: true, type: Google.Devtools.Testing.V1.RoboDirective
  field :robo_script, 13, type: Google.Devtools.Testing.V1.FileReference
  field :starting_intents, 15, repeated: true, type: Google.Devtools.Testing.V1.RoboStartingIntent
end

defmodule Google.Devtools.Testing.V1.RoboDirective do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          input_text: String.t(),
          action_type: Google.Devtools.Testing.V1.RoboActionType.t()
        }

  defstruct [:resource_name, :input_text, :action_type]

  field :resource_name, 1, type: :string
  field :input_text, 2, type: :string
  field :action_type, 3, type: Google.Devtools.Testing.V1.RoboActionType, enum: true
end

defmodule Google.Devtools.Testing.V1.RoboStartingIntent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          starting_intent: {atom, any},
          timeout: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:starting_intent, :timeout]

  oneof :starting_intent, 0
  field :launcher_activity, 1, type: Google.Devtools.Testing.V1.LauncherActivityIntent, oneof: 0
  field :start_activity, 2, type: Google.Devtools.Testing.V1.StartActivityIntent, oneof: 0
  field :timeout, 3, type: Google.Protobuf.Duration
end

defmodule Google.Devtools.Testing.V1.LauncherActivityIntent do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Devtools.Testing.V1.StartActivityIntent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          action: String.t(),
          uri: String.t(),
          categories: [String.t()]
        }

  defstruct [:action, :uri, :categories]

  field :action, 2, type: :string
  field :uri, 3, type: :string
  field :categories, 4, repeated: true, type: :string
end

defmodule Google.Devtools.Testing.V1.EnvironmentMatrix do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          environment_matrix: {atom, any}
        }

  defstruct [:environment_matrix]

  oneof :environment_matrix, 0
  field :android_matrix, 1, type: Google.Devtools.Testing.V1.AndroidMatrix, oneof: 0
  field :android_device_list, 2, type: Google.Devtools.Testing.V1.AndroidDeviceList, oneof: 0
  field :ios_device_list, 3, type: Google.Devtools.Testing.V1.IosDeviceList, oneof: 0
end

defmodule Google.Devtools.Testing.V1.AndroidDeviceList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          android_devices: [Google.Devtools.Testing.V1.AndroidDevice.t()]
        }

  defstruct [:android_devices]

  field :android_devices, 1, repeated: true, type: Google.Devtools.Testing.V1.AndroidDevice
end

defmodule Google.Devtools.Testing.V1.IosDeviceList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ios_devices: [Google.Devtools.Testing.V1.IosDevice.t()]
        }

  defstruct [:ios_devices]

  field :ios_devices, 1, repeated: true, type: Google.Devtools.Testing.V1.IosDevice
end

defmodule Google.Devtools.Testing.V1.AndroidMatrix do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          android_model_ids: [String.t()],
          android_version_ids: [String.t()],
          locales: [String.t()],
          orientations: [String.t()]
        }

  defstruct [:android_model_ids, :android_version_ids, :locales, :orientations]

  field :android_model_ids, 1, repeated: true, type: :string
  field :android_version_ids, 2, repeated: true, type: :string
  field :locales, 3, repeated: true, type: :string
  field :orientations, 4, repeated: true, type: :string
end

defmodule Google.Devtools.Testing.V1.ClientInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          client_info_details: [Google.Devtools.Testing.V1.ClientInfoDetail.t()]
        }

  defstruct [:name, :client_info_details]

  field :name, 1, type: :string
  field :client_info_details, 2, repeated: true, type: Google.Devtools.Testing.V1.ClientInfoDetail
end

defmodule Google.Devtools.Testing.V1.ClientInfoDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Devtools.Testing.V1.ResultStorage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          google_cloud_storage: Google.Devtools.Testing.V1.GoogleCloudStorage.t() | nil,
          tool_results_history: Google.Devtools.Testing.V1.ToolResultsHistory.t() | nil,
          tool_results_execution: Google.Devtools.Testing.V1.ToolResultsExecution.t() | nil,
          results_url: String.t()
        }

  defstruct [:google_cloud_storage, :tool_results_history, :tool_results_execution, :results_url]

  field :google_cloud_storage, 1, type: Google.Devtools.Testing.V1.GoogleCloudStorage
  field :tool_results_history, 5, type: Google.Devtools.Testing.V1.ToolResultsHistory
  field :tool_results_execution, 6, type: Google.Devtools.Testing.V1.ToolResultsExecution
  field :results_url, 7, type: :string
end

defmodule Google.Devtools.Testing.V1.ToolResultsHistory do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          history_id: String.t()
        }

  defstruct [:project_id, :history_id]

  field :project_id, 1, type: :string
  field :history_id, 2, type: :string
end

defmodule Google.Devtools.Testing.V1.ToolResultsExecution do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          history_id: String.t(),
          execution_id: String.t()
        }

  defstruct [:project_id, :history_id, :execution_id]

  field :project_id, 1, type: :string
  field :history_id, 2, type: :string
  field :execution_id, 3, type: :string
end

defmodule Google.Devtools.Testing.V1.ToolResultsStep do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          history_id: String.t(),
          execution_id: String.t(),
          step_id: String.t()
        }

  defstruct [:project_id, :history_id, :execution_id, :step_id]

  field :project_id, 1, type: :string
  field :history_id, 2, type: :string
  field :execution_id, 3, type: :string
  field :step_id, 4, type: :string
end

defmodule Google.Devtools.Testing.V1.GoogleCloudStorage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_path: String.t()
        }

  defstruct [:gcs_path]

  field :gcs_path, 1, type: :string
end

defmodule Google.Devtools.Testing.V1.FileReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file: {atom, any}
        }

  defstruct [:file]

  oneof :file, 0
  field :gcs_path, 1, type: :string, oneof: 0
end

defmodule Google.Devtools.Testing.V1.Environment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          environment: {atom, any}
        }

  defstruct [:environment]

  oneof :environment, 0
  field :android_device, 1, type: Google.Devtools.Testing.V1.AndroidDevice, oneof: 0
  field :ios_device, 2, type: Google.Devtools.Testing.V1.IosDevice, oneof: 0
end

defmodule Google.Devtools.Testing.V1.AndroidDevice do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          android_model_id: String.t(),
          android_version_id: String.t(),
          locale: String.t(),
          orientation: String.t()
        }

  defstruct [:android_model_id, :android_version_id, :locale, :orientation]

  field :android_model_id, 1, type: :string
  field :android_version_id, 2, type: :string
  field :locale, 3, type: :string
  field :orientation, 4, type: :string
end

defmodule Google.Devtools.Testing.V1.IosDevice do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ios_model_id: String.t(),
          ios_version_id: String.t(),
          locale: String.t(),
          orientation: String.t()
        }

  defstruct [:ios_model_id, :ios_version_id, :locale, :orientation]

  field :ios_model_id, 1, type: :string
  field :ios_version_id, 2, type: :string
  field :locale, 3, type: :string
  field :orientation, 4, type: :string
end

defmodule Google.Devtools.Testing.V1.TestDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          progress_messages: [String.t()],
          error_message: String.t()
        }

  defstruct [:progress_messages, :error_message]

  field :progress_messages, 3, repeated: true, type: :string
  field :error_message, 4, type: :string
end

defmodule Google.Devtools.Testing.V1.InvalidRequestDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reason: Google.Devtools.Testing.V1.InvalidRequestDetail.Reason.t()
        }

  defstruct [:reason]

  field :reason, 1, type: Google.Devtools.Testing.V1.InvalidRequestDetail.Reason, enum: true
end

defmodule Google.Devtools.Testing.V1.ShardingOption do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          option: {atom, any}
        }

  defstruct [:option]

  oneof :option, 0
  field :uniform_sharding, 1, type: Google.Devtools.Testing.V1.UniformSharding, oneof: 0
  field :manual_sharding, 2, type: Google.Devtools.Testing.V1.ManualSharding, oneof: 0
end

defmodule Google.Devtools.Testing.V1.UniformSharding do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          num_shards: integer
        }

  defstruct [:num_shards]

  field :num_shards, 1, type: :int32
end

defmodule Google.Devtools.Testing.V1.ManualSharding do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          test_targets_for_shard: [Google.Devtools.Testing.V1.TestTargetsForShard.t()]
        }

  defstruct [:test_targets_for_shard]

  field :test_targets_for_shard, 1,
    repeated: true,
    type: Google.Devtools.Testing.V1.TestTargetsForShard
end

defmodule Google.Devtools.Testing.V1.TestTargetsForShard do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          test_targets: [String.t()]
        }

  defstruct [:test_targets]

  field :test_targets, 1, repeated: true, type: :string
end

defmodule Google.Devtools.Testing.V1.Shard do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          shard_index: integer,
          num_shards: integer,
          test_targets_for_shard: Google.Devtools.Testing.V1.TestTargetsForShard.t() | nil
        }

  defstruct [:shard_index, :num_shards, :test_targets_for_shard]

  field :shard_index, 1, type: :int32
  field :num_shards, 2, type: :int32
  field :test_targets_for_shard, 3, type: Google.Devtools.Testing.V1.TestTargetsForShard
end

defmodule Google.Devtools.Testing.V1.CreateTestMatrixRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          test_matrix: Google.Devtools.Testing.V1.TestMatrix.t() | nil,
          request_id: String.t()
        }

  defstruct [:project_id, :test_matrix, :request_id]

  field :project_id, 1, type: :string
  field :test_matrix, 2, type: Google.Devtools.Testing.V1.TestMatrix
  field :request_id, 3, type: :string
end

defmodule Google.Devtools.Testing.V1.GetTestMatrixRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          test_matrix_id: String.t()
        }

  defstruct [:project_id, :test_matrix_id]

  field :project_id, 1, type: :string
  field :test_matrix_id, 2, type: :string
end

defmodule Google.Devtools.Testing.V1.CancelTestMatrixRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          test_matrix_id: String.t()
        }

  defstruct [:project_id, :test_matrix_id]

  field :project_id, 1, type: :string
  field :test_matrix_id, 2, type: :string
end

defmodule Google.Devtools.Testing.V1.CancelTestMatrixResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          test_state: Google.Devtools.Testing.V1.TestState.t()
        }

  defstruct [:test_state]

  field :test_state, 1, type: Google.Devtools.Testing.V1.TestState, enum: true
end

defmodule Google.Devtools.Testing.V1.TestExecutionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.devtools.testing.v1.TestExecutionService"

  rpc :CreateTestMatrix,
      Google.Devtools.Testing.V1.CreateTestMatrixRequest,
      Google.Devtools.Testing.V1.TestMatrix

  rpc :GetTestMatrix,
      Google.Devtools.Testing.V1.GetTestMatrixRequest,
      Google.Devtools.Testing.V1.TestMatrix

  rpc :CancelTestMatrix,
      Google.Devtools.Testing.V1.CancelTestMatrixRequest,
      Google.Devtools.Testing.V1.CancelTestMatrixResponse
end

defmodule Google.Devtools.Testing.V1.TestExecutionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Devtools.Testing.V1.TestExecutionService.Service
end
