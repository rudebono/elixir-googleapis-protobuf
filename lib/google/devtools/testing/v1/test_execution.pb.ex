defmodule Google.Devtools.Testing.V1.OrchestratorOption do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :ORCHESTRATOR_OPTION_UNSPECIFIED, 0
  field :USE_ORCHESTRATOR, 1
  field :DO_NOT_USE_ORCHESTRATOR, 2
end
defmodule Google.Devtools.Testing.V1.RoboActionType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :ACTION_TYPE_UNSPECIFIED, 0
  field :SINGLE_CLICK, 1
  field :ENTER_TEXT, 2
  field :IGNORE, 3
end
defmodule Google.Devtools.Testing.V1.InvalidMatrixDetails do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :OUTCOME_SUMMARY_UNSPECIFIED, 0
  field :SUCCESS, 1
  field :FAILURE, 2
  field :INCONCLUSIVE, 3
  field :SKIPPED, 4
end
defmodule Google.Devtools.Testing.V1.InvalidRequestDetail.Reason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :REASON_UNSPECIFIED, 0
  field :REQUEST_INVALID, 1
  field :RESOURCE_TOO_BIG, 2
  field :RESOURCE_NOT_FOUND, 3
  field :UNSUPPORTED, 4
  field :NOT_IMPLEMENTED, 5
end
defmodule Google.Devtools.Testing.V1.TestMatrix do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :duration_seconds, 1, type: :int32, json_name: "durationSeconds"
end
defmodule Google.Devtools.Testing.V1.TestSetup do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Devtools.Testing.V1.Account do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :account_type, 0

  field :google_auto, 1,
    type: Google.Devtools.Testing.V1.GoogleAuto,
    json_name: "googleAuto",
    oneof: 0
end
defmodule Google.Devtools.Testing.V1.GoogleAuto do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Devtools.Testing.V1.Apk do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :location, 1, type: Google.Devtools.Testing.V1.FileReference
  field :package_name, 2, type: :string, json_name: "packageName"
end
defmodule Google.Devtools.Testing.V1.AppBundle do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :bundle, 0

  field :bundle_location, 1,
    type: Google.Devtools.Testing.V1.FileReference,
    json_name: "bundleLocation",
    oneof: 0
end
defmodule Google.Devtools.Testing.V1.DeviceFile do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :device_file, 0

  field :obb_file, 1, type: Google.Devtools.Testing.V1.ObbFile, json_name: "obbFile", oneof: 0

  field :regular_file, 2,
    type: Google.Devtools.Testing.V1.RegularFile,
    json_name: "regularFile",
    oneof: 0
end
defmodule Google.Devtools.Testing.V1.ObbFile do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :obb_file_name, 1, type: :string, json_name: "obbFileName"
  field :obb, 2, type: Google.Devtools.Testing.V1.FileReference
end
defmodule Google.Devtools.Testing.V1.RegularFile do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :content, 1, type: Google.Devtools.Testing.V1.FileReference
  field :device_path, 2, type: :string, json_name: "devicePath"
end
defmodule Google.Devtools.Testing.V1.IosDeviceFile do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :content, 1, type: Google.Devtools.Testing.V1.FileReference
  field :bundle_id, 2, type: :string, json_name: "bundleId"
  field :device_path, 3, type: :string, json_name: "devicePath"
end
defmodule Google.Devtools.Testing.V1.AndroidTestLoop do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :tests_zip, 1, type: Google.Devtools.Testing.V1.FileReference, json_name: "testsZip"
  field :xctestrun, 2, type: Google.Devtools.Testing.V1.FileReference
  field :xcode_version, 3, type: :string, json_name: "xcodeVersion"
  field :app_bundle_id, 4, type: :string, json_name: "appBundleId"
  field :test_special_entitlements, 6, type: :bool, json_name: "testSpecialEntitlements"
end
defmodule Google.Devtools.Testing.V1.IosTestLoop do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :app_ipa, 1, type: Google.Devtools.Testing.V1.FileReference, json_name: "appIpa"
  field :scenarios, 2, repeated: true, type: :int32
  field :app_bundle_id, 3, type: :string, json_name: "appBundleId"
end
defmodule Google.Devtools.Testing.V1.AndroidInstrumentationTest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :input_text, 2, type: :string, json_name: "inputText"

  field :action_type, 3,
    type: Google.Devtools.Testing.V1.RoboActionType,
    json_name: "actionType",
    enum: true
end
defmodule Google.Devtools.Testing.V1.RoboStartingIntent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Devtools.Testing.V1.StartActivityIntent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :action, 2, type: :string
  field :uri, 3, type: :string
  field :categories, 4, repeated: true, type: :string
end
defmodule Google.Devtools.Testing.V1.EnvironmentMatrix do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :android_devices, 1,
    repeated: true,
    type: Google.Devtools.Testing.V1.AndroidDevice,
    json_name: "androidDevices"
end
defmodule Google.Devtools.Testing.V1.IosDeviceList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :ios_devices, 1,
    repeated: true,
    type: Google.Devtools.Testing.V1.IosDevice,
    json_name: "iosDevices"
end
defmodule Google.Devtools.Testing.V1.AndroidMatrix do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :android_model_ids, 1, repeated: true, type: :string, json_name: "androidModelIds"
  field :android_version_ids, 2, repeated: true, type: :string, json_name: "androidVersionIds"
  field :locales, 3, repeated: true, type: :string
  field :orientations, 4, repeated: true, type: :string
end
defmodule Google.Devtools.Testing.V1.ClientInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string

  field :client_info_details, 2,
    repeated: true,
    type: Google.Devtools.Testing.V1.ClientInfoDetail,
    json_name: "clientInfoDetails"
end
defmodule Google.Devtools.Testing.V1.ClientInfoDetail do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Devtools.Testing.V1.ResultStorage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :history_id, 2, type: :string, json_name: "historyId"
end
defmodule Google.Devtools.Testing.V1.ToolResultsExecution do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :history_id, 2, type: :string, json_name: "historyId"
  field :execution_id, 3, type: :string, json_name: "executionId"
end
defmodule Google.Devtools.Testing.V1.ToolResultsStep do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :history_id, 2, type: :string, json_name: "historyId"
  field :execution_id, 3, type: :string, json_name: "executionId"
  field :step_id, 4, type: :string, json_name: "stepId"
end
defmodule Google.Devtools.Testing.V1.GoogleCloudStorage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :gcs_path, 1, type: :string, json_name: "gcsPath"
end
defmodule Google.Devtools.Testing.V1.FileReference do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :file, 0

  field :gcs_path, 1, type: :string, json_name: "gcsPath", oneof: 0
end
defmodule Google.Devtools.Testing.V1.Environment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :android_model_id, 1, type: :string, json_name: "androidModelId"
  field :android_version_id, 2, type: :string, json_name: "androidVersionId"
  field :locale, 3, type: :string
  field :orientation, 4, type: :string
end
defmodule Google.Devtools.Testing.V1.IosDevice do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :ios_model_id, 1, type: :string, json_name: "iosModelId"
  field :ios_version_id, 2, type: :string, json_name: "iosVersionId"
  field :locale, 3, type: :string
  field :orientation, 4, type: :string
end
defmodule Google.Devtools.Testing.V1.TestDetails do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :progress_messages, 3, repeated: true, type: :string, json_name: "progressMessages"
  field :error_message, 4, type: :string, json_name: "errorMessage"
end
defmodule Google.Devtools.Testing.V1.InvalidRequestDetail do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :reason, 1, type: Google.Devtools.Testing.V1.InvalidRequestDetail.Reason, enum: true
end
defmodule Google.Devtools.Testing.V1.ShardingOption do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :num_shards, 1, type: :int32, json_name: "numShards"
end
defmodule Google.Devtools.Testing.V1.ManualSharding do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :test_targets_for_shard, 1,
    repeated: true,
    type: Google.Devtools.Testing.V1.TestTargetsForShard,
    json_name: "testTargetsForShard"
end
defmodule Google.Devtools.Testing.V1.TestTargetsForShard do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :test_targets, 1, repeated: true, type: :string, json_name: "testTargets"
end
defmodule Google.Devtools.Testing.V1.Shard do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :shard_index, 1, type: :int32, json_name: "shardIndex"
  field :num_shards, 2, type: :int32, json_name: "numShards"

  field :test_targets_for_shard, 3,
    type: Google.Devtools.Testing.V1.TestTargetsForShard,
    json_name: "testTargetsForShard"
end
defmodule Google.Devtools.Testing.V1.CreateTestMatrixRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :test_matrix, 2, type: Google.Devtools.Testing.V1.TestMatrix, json_name: "testMatrix"
  field :request_id, 3, type: :string, json_name: "requestId"
end
defmodule Google.Devtools.Testing.V1.GetTestMatrixRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :test_matrix_id, 2, type: :string, json_name: "testMatrixId"
end
defmodule Google.Devtools.Testing.V1.CancelTestMatrixRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :test_matrix_id, 2, type: :string, json_name: "testMatrixId"
end
defmodule Google.Devtools.Testing.V1.CancelTestMatrixResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :test_state, 1,
    type: Google.Devtools.Testing.V1.TestState,
    json_name: "testState",
    enum: true
end
defmodule Google.Devtools.Testing.V1.TestExecutionService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.devtools.testing.v1.TestExecutionService",
    protoc_gen_elixir_version: "0.10.0"

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
