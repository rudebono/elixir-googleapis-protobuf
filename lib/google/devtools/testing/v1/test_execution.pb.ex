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

  defstruct test_matrix_id: "",
            project_id: "",
            client_info: nil,
            test_specification: nil,
            environment_matrix: nil,
            test_executions: [],
            result_storage: nil,
            state: :TEST_STATE_UNSPECIFIED,
            timestamp: nil,
            invalid_matrix_details: :INVALID_MATRIX_DETAILS_UNSPECIFIED,
            flaky_test_attempts: 0,
            outcome_summary: :OUTCOME_SUMMARY_UNSPECIFIED,
            fail_fast: false

  field :test_matrix_id, 1, type: :string, json_name: "testMatrixId"
  field :project_id, 7, type: :string, json_name: "projectId"
  field :client_info, 10, type: Google.Devtools.Testing.V1.ClientInfo, json_name: "clientInfo"

  field :test_specification, 3,
    type: Google.Devtools.Testing.V1.TestSpecification,
    json_name: "testSpecification"

  field :environment_matrix, 4,
    type: Google.Devtools.Testing.V1.EnvironmentMatrix,
    json_name: "environmentMatrix"

  field :test_executions, 5,
    repeated: true,
    type: Google.Devtools.Testing.V1.TestExecution,
    json_name: "testExecutions"

  field :result_storage, 6,
    type: Google.Devtools.Testing.V1.ResultStorage,
    json_name: "resultStorage"

  field :state, 8, type: Google.Devtools.Testing.V1.TestState, enum: true
  field :timestamp, 9, type: Google.Protobuf.Timestamp

  field :invalid_matrix_details, 11,
    type: Google.Devtools.Testing.V1.InvalidMatrixDetails,
    json_name: "invalidMatrixDetails",
    enum: true

  field :flaky_test_attempts, 13, type: :int32, json_name: "flakyTestAttempts"

  field :outcome_summary, 14,
    type: Google.Devtools.Testing.V1.OutcomeSummary,
    json_name: "outcomeSummary",
    enum: true

  field :fail_fast, 17, type: :bool, json_name: "failFast"
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

  defstruct id: "",
            matrix_id: "",
            project_id: "",
            test_specification: nil,
            shard: nil,
            environment: nil,
            state: :TEST_STATE_UNSPECIFIED,
            tool_results_step: nil,
            timestamp: nil,
            test_details: nil

  field :id, 1, type: :string
  field :matrix_id, 9, type: :string, json_name: "matrixId"
  field :project_id, 10, type: :string, json_name: "projectId"

  field :test_specification, 3,
    type: Google.Devtools.Testing.V1.TestSpecification,
    json_name: "testSpecification"

  field :shard, 12, type: Google.Devtools.Testing.V1.Shard
  field :environment, 4, type: Google.Devtools.Testing.V1.Environment
  field :state, 5, type: Google.Devtools.Testing.V1.TestState, enum: true

  field :tool_results_step, 11,
    type: Google.Devtools.Testing.V1.ToolResultsStep,
    json_name: "toolResultsStep"

  field :timestamp, 7, type: Google.Protobuf.Timestamp
  field :test_details, 8, type: Google.Devtools.Testing.V1.TestDetails, json_name: "testDetails"
end
defmodule Google.Devtools.Testing.V1.TestSpecification do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          setup:
            {:test_setup, Google.Devtools.Testing.V1.TestSetup.t() | nil}
            | {:ios_test_setup, Google.Devtools.Testing.V1.IosTestSetup.t() | nil},
          test:
            {:android_instrumentation_test,
             Google.Devtools.Testing.V1.AndroidInstrumentationTest.t() | nil}
            | {:android_robo_test, Google.Devtools.Testing.V1.AndroidRoboTest.t() | nil}
            | {:android_test_loop, Google.Devtools.Testing.V1.AndroidTestLoop.t() | nil}
            | {:ios_xc_test, Google.Devtools.Testing.V1.IosXcTest.t() | nil}
            | {:ios_test_loop, Google.Devtools.Testing.V1.IosTestLoop.t() | nil},
          test_timeout: Google.Protobuf.Duration.t() | nil,
          disable_video_recording: boolean,
          disable_performance_metrics: boolean
        }

  defstruct setup: nil,
            test: nil,
            test_timeout: nil,
            disable_video_recording: false,
            disable_performance_metrics: false

  oneof :setup, 0
  oneof :test, 1

  field :test_timeout, 1, type: Google.Protobuf.Duration, json_name: "testTimeout"

  field :test_setup, 6,
    type: Google.Devtools.Testing.V1.TestSetup,
    json_name: "testSetup",
    oneof: 0

  field :ios_test_setup, 14,
    type: Google.Devtools.Testing.V1.IosTestSetup,
    json_name: "iosTestSetup",
    oneof: 0

  field :android_instrumentation_test, 2,
    type: Google.Devtools.Testing.V1.AndroidInstrumentationTest,
    json_name: "androidInstrumentationTest",
    oneof: 1

  field :android_robo_test, 3,
    type: Google.Devtools.Testing.V1.AndroidRoboTest,
    json_name: "androidRoboTest",
    oneof: 1

  field :android_test_loop, 9,
    type: Google.Devtools.Testing.V1.AndroidTestLoop,
    json_name: "androidTestLoop",
    oneof: 1

  field :ios_xc_test, 13,
    type: Google.Devtools.Testing.V1.IosXcTest,
    json_name: "iosXcTest",
    oneof: 1

  field :ios_test_loop, 15,
    type: Google.Devtools.Testing.V1.IosTestLoop,
    json_name: "iosTestLoop",
    oneof: 1

  field :disable_video_recording, 10, type: :bool, json_name: "disableVideoRecording"
  field :disable_performance_metrics, 11, type: :bool, json_name: "disablePerformanceMetrics"
end
defmodule Google.Devtools.Testing.V1.SystraceSetup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          duration_seconds: integer
        }

  defstruct duration_seconds: 0

  field :duration_seconds, 1, type: :int32, json_name: "durationSeconds"
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

  defstruct files_to_push: [],
            directories_to_pull: [],
            additional_apks: [],
            account: nil,
            network_profile: "",
            environment_variables: [],
            systrace: nil,
            dont_autogrant_permissions: false

  field :files_to_push, 1,
    repeated: true,
    type: Google.Devtools.Testing.V1.DeviceFile,
    json_name: "filesToPush"

  field :directories_to_pull, 2, repeated: true, type: :string, json_name: "directoriesToPull"

  field :additional_apks, 3,
    repeated: true,
    type: Google.Devtools.Testing.V1.Apk,
    json_name: "additionalApks"

  field :account, 4, type: Google.Devtools.Testing.V1.Account
  field :network_profile, 5, type: :string, json_name: "networkProfile"

  field :environment_variables, 6,
    repeated: true,
    type: Google.Devtools.Testing.V1.EnvironmentVariable,
    json_name: "environmentVariables"

  field :systrace, 9, type: Google.Devtools.Testing.V1.SystraceSetup
  field :dont_autogrant_permissions, 23, type: :bool, json_name: "dontAutograntPermissions"
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

  defstruct network_profile: "",
            additional_ipas: [],
            push_files: [],
            pull_directories: []

  field :network_profile, 1, type: :string, json_name: "networkProfile"

  field :additional_ipas, 2,
    repeated: true,
    type: Google.Devtools.Testing.V1.FileReference,
    json_name: "additionalIpas"

  field :push_files, 3,
    repeated: true,
    type: Google.Devtools.Testing.V1.IosDeviceFile,
    json_name: "pushFiles"

  field :pull_directories, 4,
    repeated: true,
    type: Google.Devtools.Testing.V1.IosDeviceFile,
    json_name: "pullDirectories"
end
defmodule Google.Devtools.Testing.V1.EnvironmentVariable do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Devtools.Testing.V1.Account do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          account_type: {:google_auto, Google.Devtools.Testing.V1.GoogleAuto.t() | nil}
        }

  defstruct account_type: nil

  oneof :account_type, 0

  field :google_auto, 1,
    type: Google.Devtools.Testing.V1.GoogleAuto,
    json_name: "googleAuto",
    oneof: 0
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

  defstruct location: nil,
            package_name: ""

  field :location, 1, type: Google.Devtools.Testing.V1.FileReference
  field :package_name, 2, type: :string, json_name: "packageName"
end
defmodule Google.Devtools.Testing.V1.AppBundle do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bundle: {:bundle_location, Google.Devtools.Testing.V1.FileReference.t() | nil}
        }

  defstruct bundle: nil

  oneof :bundle, 0

  field :bundle_location, 1,
    type: Google.Devtools.Testing.V1.FileReference,
    json_name: "bundleLocation",
    oneof: 0
end
defmodule Google.Devtools.Testing.V1.DeviceFile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          device_file:
            {:obb_file, Google.Devtools.Testing.V1.ObbFile.t() | nil}
            | {:regular_file, Google.Devtools.Testing.V1.RegularFile.t() | nil}
        }

  defstruct device_file: nil

  oneof :device_file, 0

  field :obb_file, 1, type: Google.Devtools.Testing.V1.ObbFile, json_name: "obbFile", oneof: 0

  field :regular_file, 2,
    type: Google.Devtools.Testing.V1.RegularFile,
    json_name: "regularFile",
    oneof: 0
end
defmodule Google.Devtools.Testing.V1.ObbFile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          obb_file_name: String.t(),
          obb: Google.Devtools.Testing.V1.FileReference.t() | nil
        }

  defstruct obb_file_name: "",
            obb: nil

  field :obb_file_name, 1, type: :string, json_name: "obbFileName"
  field :obb, 2, type: Google.Devtools.Testing.V1.FileReference
end
defmodule Google.Devtools.Testing.V1.RegularFile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: Google.Devtools.Testing.V1.FileReference.t() | nil,
          device_path: String.t()
        }

  defstruct content: nil,
            device_path: ""

  field :content, 1, type: Google.Devtools.Testing.V1.FileReference
  field :device_path, 2, type: :string, json_name: "devicePath"
end
defmodule Google.Devtools.Testing.V1.IosDeviceFile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: Google.Devtools.Testing.V1.FileReference.t() | nil,
          bundle_id: String.t(),
          device_path: String.t()
        }

  defstruct content: nil,
            bundle_id: "",
            device_path: ""

  field :content, 1, type: Google.Devtools.Testing.V1.FileReference
  field :bundle_id, 2, type: :string, json_name: "bundleId"
  field :device_path, 3, type: :string, json_name: "devicePath"
end
defmodule Google.Devtools.Testing.V1.AndroidTestLoop do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          app_under_test:
            {:app_apk, Google.Devtools.Testing.V1.FileReference.t() | nil}
            | {:app_bundle, Google.Devtools.Testing.V1.AppBundle.t() | nil},
          app_package_id: String.t(),
          scenarios: [integer],
          scenario_labels: [String.t()]
        }

  defstruct app_under_test: nil,
            app_package_id: "",
            scenarios: [],
            scenario_labels: []

  oneof :app_under_test, 0

  field :app_apk, 1, type: Google.Devtools.Testing.V1.FileReference, json_name: "appApk", oneof: 0

  field :app_bundle, 5,
    type: Google.Devtools.Testing.V1.AppBundle,
    json_name: "appBundle",
    oneof: 0

  field :app_package_id, 2, type: :string, json_name: "appPackageId"
  field :scenarios, 3, repeated: true, type: :int32
  field :scenario_labels, 4, repeated: true, type: :string, json_name: "scenarioLabels"
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

  defstruct tests_zip: nil,
            xctestrun: nil,
            xcode_version: "",
            app_bundle_id: "",
            test_special_entitlements: false

  field :tests_zip, 1, type: Google.Devtools.Testing.V1.FileReference, json_name: "testsZip"
  field :xctestrun, 2, type: Google.Devtools.Testing.V1.FileReference
  field :xcode_version, 3, type: :string, json_name: "xcodeVersion"
  field :app_bundle_id, 4, type: :string, json_name: "appBundleId"
  field :test_special_entitlements, 6, type: :bool, json_name: "testSpecialEntitlements"
end
defmodule Google.Devtools.Testing.V1.IosTestLoop do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          app_ipa: Google.Devtools.Testing.V1.FileReference.t() | nil,
          scenarios: [integer],
          app_bundle_id: String.t()
        }

  defstruct app_ipa: nil,
            scenarios: [],
            app_bundle_id: ""

  field :app_ipa, 1, type: Google.Devtools.Testing.V1.FileReference, json_name: "appIpa"
  field :scenarios, 2, repeated: true, type: :int32
  field :app_bundle_id, 3, type: :string, json_name: "appBundleId"
end
defmodule Google.Devtools.Testing.V1.AndroidInstrumentationTest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          app_under_test:
            {:app_apk, Google.Devtools.Testing.V1.FileReference.t() | nil}
            | {:app_bundle, Google.Devtools.Testing.V1.AppBundle.t() | nil},
          test_apk: Google.Devtools.Testing.V1.FileReference.t() | nil,
          app_package_id: String.t(),
          test_package_id: String.t(),
          test_runner_class: String.t(),
          test_targets: [String.t()],
          orchestrator_option: Google.Devtools.Testing.V1.OrchestratorOption.t(),
          sharding_option: Google.Devtools.Testing.V1.ShardingOption.t() | nil
        }

  defstruct app_under_test: nil,
            test_apk: nil,
            app_package_id: "",
            test_package_id: "",
            test_runner_class: "",
            test_targets: [],
            orchestrator_option: :ORCHESTRATOR_OPTION_UNSPECIFIED,
            sharding_option: nil

  oneof :app_under_test, 0

  field :app_apk, 1, type: Google.Devtools.Testing.V1.FileReference, json_name: "appApk", oneof: 0

  field :app_bundle, 8,
    type: Google.Devtools.Testing.V1.AppBundle,
    json_name: "appBundle",
    oneof: 0

  field :test_apk, 2, type: Google.Devtools.Testing.V1.FileReference, json_name: "testApk"
  field :app_package_id, 3, type: :string, json_name: "appPackageId"
  field :test_package_id, 4, type: :string, json_name: "testPackageId"
  field :test_runner_class, 5, type: :string, json_name: "testRunnerClass"
  field :test_targets, 6, repeated: true, type: :string, json_name: "testTargets"

  field :orchestrator_option, 7,
    type: Google.Devtools.Testing.V1.OrchestratorOption,
    json_name: "orchestratorOption",
    enum: true

  field :sharding_option, 9,
    type: Google.Devtools.Testing.V1.ShardingOption,
    json_name: "shardingOption"
end
defmodule Google.Devtools.Testing.V1.AndroidRoboTest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          app_under_test:
            {:app_apk, Google.Devtools.Testing.V1.FileReference.t() | nil}
            | {:app_bundle, Google.Devtools.Testing.V1.AppBundle.t() | nil},
          app_package_id: String.t(),
          app_initial_activity: String.t(),
          max_depth: integer,
          max_steps: integer,
          robo_directives: [Google.Devtools.Testing.V1.RoboDirective.t()],
          robo_script: Google.Devtools.Testing.V1.FileReference.t() | nil,
          starting_intents: [Google.Devtools.Testing.V1.RoboStartingIntent.t()]
        }

  defstruct app_under_test: nil,
            app_package_id: "",
            app_initial_activity: "",
            max_depth: 0,
            max_steps: 0,
            robo_directives: [],
            robo_script: nil,
            starting_intents: []

  oneof :app_under_test, 0

  field :app_apk, 1, type: Google.Devtools.Testing.V1.FileReference, json_name: "appApk", oneof: 0

  field :app_bundle, 16,
    type: Google.Devtools.Testing.V1.AppBundle,
    json_name: "appBundle",
    oneof: 0

  field :app_package_id, 2, type: :string, json_name: "appPackageId"
  field :app_initial_activity, 3, type: :string, json_name: "appInitialActivity"
  field :max_depth, 7, type: :int32, json_name: "maxDepth", deprecated: true
  field :max_steps, 8, type: :int32, json_name: "maxSteps", deprecated: true

  field :robo_directives, 11,
    repeated: true,
    type: Google.Devtools.Testing.V1.RoboDirective,
    json_name: "roboDirectives"

  field :robo_script, 13, type: Google.Devtools.Testing.V1.FileReference, json_name: "roboScript"

  field :starting_intents, 15,
    repeated: true,
    type: Google.Devtools.Testing.V1.RoboStartingIntent,
    json_name: "startingIntents"
end
defmodule Google.Devtools.Testing.V1.RoboDirective do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          input_text: String.t(),
          action_type: Google.Devtools.Testing.V1.RoboActionType.t()
        }

  defstruct resource_name: "",
            input_text: "",
            action_type: :ACTION_TYPE_UNSPECIFIED

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :input_text, 2, type: :string, json_name: "inputText"

  field :action_type, 3,
    type: Google.Devtools.Testing.V1.RoboActionType,
    json_name: "actionType",
    enum: true
end
defmodule Google.Devtools.Testing.V1.RoboStartingIntent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          starting_intent:
            {:launcher_activity, Google.Devtools.Testing.V1.LauncherActivityIntent.t() | nil}
            | {:start_activity, Google.Devtools.Testing.V1.StartActivityIntent.t() | nil},
          timeout: Google.Protobuf.Duration.t() | nil
        }

  defstruct starting_intent: nil,
            timeout: nil

  oneof :starting_intent, 0

  field :launcher_activity, 1,
    type: Google.Devtools.Testing.V1.LauncherActivityIntent,
    json_name: "launcherActivity",
    oneof: 0

  field :start_activity, 2,
    type: Google.Devtools.Testing.V1.StartActivityIntent,
    json_name: "startActivity",
    oneof: 0

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

  defstruct action: "",
            uri: "",
            categories: []

  field :action, 2, type: :string
  field :uri, 3, type: :string
  field :categories, 4, repeated: true, type: :string
end
defmodule Google.Devtools.Testing.V1.EnvironmentMatrix do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          environment_matrix:
            {:android_matrix, Google.Devtools.Testing.V1.AndroidMatrix.t() | nil}
            | {:android_device_list, Google.Devtools.Testing.V1.AndroidDeviceList.t() | nil}
            | {:ios_device_list, Google.Devtools.Testing.V1.IosDeviceList.t() | nil}
        }

  defstruct environment_matrix: nil

  oneof :environment_matrix, 0

  field :android_matrix, 1,
    type: Google.Devtools.Testing.V1.AndroidMatrix,
    json_name: "androidMatrix",
    oneof: 0

  field :android_device_list, 2,
    type: Google.Devtools.Testing.V1.AndroidDeviceList,
    json_name: "androidDeviceList",
    oneof: 0

  field :ios_device_list, 3,
    type: Google.Devtools.Testing.V1.IosDeviceList,
    json_name: "iosDeviceList",
    oneof: 0
end
defmodule Google.Devtools.Testing.V1.AndroidDeviceList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          android_devices: [Google.Devtools.Testing.V1.AndroidDevice.t()]
        }

  defstruct android_devices: []

  field :android_devices, 1,
    repeated: true,
    type: Google.Devtools.Testing.V1.AndroidDevice,
    json_name: "androidDevices"
end
defmodule Google.Devtools.Testing.V1.IosDeviceList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ios_devices: [Google.Devtools.Testing.V1.IosDevice.t()]
        }

  defstruct ios_devices: []

  field :ios_devices, 1,
    repeated: true,
    type: Google.Devtools.Testing.V1.IosDevice,
    json_name: "iosDevices"
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

  defstruct android_model_ids: [],
            android_version_ids: [],
            locales: [],
            orientations: []

  field :android_model_ids, 1, repeated: true, type: :string, json_name: "androidModelIds"
  field :android_version_ids, 2, repeated: true, type: :string, json_name: "androidVersionIds"
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

  defstruct name: "",
            client_info_details: []

  field :name, 1, type: :string

  field :client_info_details, 2,
    repeated: true,
    type: Google.Devtools.Testing.V1.ClientInfoDetail,
    json_name: "clientInfoDetails"
end
defmodule Google.Devtools.Testing.V1.ClientInfoDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

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

  defstruct google_cloud_storage: nil,
            tool_results_history: nil,
            tool_results_execution: nil,
            results_url: ""

  field :google_cloud_storage, 1,
    type: Google.Devtools.Testing.V1.GoogleCloudStorage,
    json_name: "googleCloudStorage"

  field :tool_results_history, 5,
    type: Google.Devtools.Testing.V1.ToolResultsHistory,
    json_name: "toolResultsHistory"

  field :tool_results_execution, 6,
    type: Google.Devtools.Testing.V1.ToolResultsExecution,
    json_name: "toolResultsExecution"

  field :results_url, 7, type: :string, json_name: "resultsUrl"
end
defmodule Google.Devtools.Testing.V1.ToolResultsHistory do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          history_id: String.t()
        }

  defstruct project_id: "",
            history_id: ""

  field :project_id, 1, type: :string, json_name: "projectId"
  field :history_id, 2, type: :string, json_name: "historyId"
end
defmodule Google.Devtools.Testing.V1.ToolResultsExecution do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          history_id: String.t(),
          execution_id: String.t()
        }

  defstruct project_id: "",
            history_id: "",
            execution_id: ""

  field :project_id, 1, type: :string, json_name: "projectId"
  field :history_id, 2, type: :string, json_name: "historyId"
  field :execution_id, 3, type: :string, json_name: "executionId"
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

  defstruct project_id: "",
            history_id: "",
            execution_id: "",
            step_id: ""

  field :project_id, 1, type: :string, json_name: "projectId"
  field :history_id, 2, type: :string, json_name: "historyId"
  field :execution_id, 3, type: :string, json_name: "executionId"
  field :step_id, 4, type: :string, json_name: "stepId"
end
defmodule Google.Devtools.Testing.V1.GoogleCloudStorage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_path: String.t()
        }

  defstruct gcs_path: ""

  field :gcs_path, 1, type: :string, json_name: "gcsPath"
end
defmodule Google.Devtools.Testing.V1.FileReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file: {:gcs_path, String.t()}
        }

  defstruct file: nil

  oneof :file, 0

  field :gcs_path, 1, type: :string, json_name: "gcsPath", oneof: 0
end
defmodule Google.Devtools.Testing.V1.Environment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          environment:
            {:android_device, Google.Devtools.Testing.V1.AndroidDevice.t() | nil}
            | {:ios_device, Google.Devtools.Testing.V1.IosDevice.t() | nil}
        }

  defstruct environment: nil

  oneof :environment, 0

  field :android_device, 1,
    type: Google.Devtools.Testing.V1.AndroidDevice,
    json_name: "androidDevice",
    oneof: 0

  field :ios_device, 2,
    type: Google.Devtools.Testing.V1.IosDevice,
    json_name: "iosDevice",
    oneof: 0
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

  defstruct android_model_id: "",
            android_version_id: "",
            locale: "",
            orientation: ""

  field :android_model_id, 1, type: :string, json_name: "androidModelId"
  field :android_version_id, 2, type: :string, json_name: "androidVersionId"
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

  defstruct ios_model_id: "",
            ios_version_id: "",
            locale: "",
            orientation: ""

  field :ios_model_id, 1, type: :string, json_name: "iosModelId"
  field :ios_version_id, 2, type: :string, json_name: "iosVersionId"
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

  defstruct progress_messages: [],
            error_message: ""

  field :progress_messages, 3, repeated: true, type: :string, json_name: "progressMessages"
  field :error_message, 4, type: :string, json_name: "errorMessage"
end
defmodule Google.Devtools.Testing.V1.InvalidRequestDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reason: Google.Devtools.Testing.V1.InvalidRequestDetail.Reason.t()
        }

  defstruct reason: :REASON_UNSPECIFIED

  field :reason, 1, type: Google.Devtools.Testing.V1.InvalidRequestDetail.Reason, enum: true
end
defmodule Google.Devtools.Testing.V1.ShardingOption do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          option:
            {:uniform_sharding, Google.Devtools.Testing.V1.UniformSharding.t() | nil}
            | {:manual_sharding, Google.Devtools.Testing.V1.ManualSharding.t() | nil}
        }

  defstruct option: nil

  oneof :option, 0

  field :uniform_sharding, 1,
    type: Google.Devtools.Testing.V1.UniformSharding,
    json_name: "uniformSharding",
    oneof: 0

  field :manual_sharding, 2,
    type: Google.Devtools.Testing.V1.ManualSharding,
    json_name: "manualSharding",
    oneof: 0
end
defmodule Google.Devtools.Testing.V1.UniformSharding do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          num_shards: integer
        }

  defstruct num_shards: 0

  field :num_shards, 1, type: :int32, json_name: "numShards"
end
defmodule Google.Devtools.Testing.V1.ManualSharding do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          test_targets_for_shard: [Google.Devtools.Testing.V1.TestTargetsForShard.t()]
        }

  defstruct test_targets_for_shard: []

  field :test_targets_for_shard, 1,
    repeated: true,
    type: Google.Devtools.Testing.V1.TestTargetsForShard,
    json_name: "testTargetsForShard"
end
defmodule Google.Devtools.Testing.V1.TestTargetsForShard do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          test_targets: [String.t()]
        }

  defstruct test_targets: []

  field :test_targets, 1, repeated: true, type: :string, json_name: "testTargets"
end
defmodule Google.Devtools.Testing.V1.Shard do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          shard_index: integer,
          num_shards: integer,
          test_targets_for_shard: Google.Devtools.Testing.V1.TestTargetsForShard.t() | nil
        }

  defstruct shard_index: 0,
            num_shards: 0,
            test_targets_for_shard: nil

  field :shard_index, 1, type: :int32, json_name: "shardIndex"
  field :num_shards, 2, type: :int32, json_name: "numShards"

  field :test_targets_for_shard, 3,
    type: Google.Devtools.Testing.V1.TestTargetsForShard,
    json_name: "testTargetsForShard"
end
defmodule Google.Devtools.Testing.V1.CreateTestMatrixRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          test_matrix: Google.Devtools.Testing.V1.TestMatrix.t() | nil,
          request_id: String.t()
        }

  defstruct project_id: "",
            test_matrix: nil,
            request_id: ""

  field :project_id, 1, type: :string, json_name: "projectId"
  field :test_matrix, 2, type: Google.Devtools.Testing.V1.TestMatrix, json_name: "testMatrix"
  field :request_id, 3, type: :string, json_name: "requestId"
end
defmodule Google.Devtools.Testing.V1.GetTestMatrixRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          test_matrix_id: String.t()
        }

  defstruct project_id: "",
            test_matrix_id: ""

  field :project_id, 1, type: :string, json_name: "projectId"
  field :test_matrix_id, 2, type: :string, json_name: "testMatrixId"
end
defmodule Google.Devtools.Testing.V1.CancelTestMatrixRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          test_matrix_id: String.t()
        }

  defstruct project_id: "",
            test_matrix_id: ""

  field :project_id, 1, type: :string, json_name: "projectId"
  field :test_matrix_id, 2, type: :string, json_name: "testMatrixId"
end
defmodule Google.Devtools.Testing.V1.CancelTestMatrixResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          test_state: Google.Devtools.Testing.V1.TestState.t()
        }

  defstruct test_state: :TEST_STATE_UNSPECIFIED

  field :test_state, 1,
    type: Google.Devtools.Testing.V1.TestState,
    json_name: "testState",
    enum: true
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
