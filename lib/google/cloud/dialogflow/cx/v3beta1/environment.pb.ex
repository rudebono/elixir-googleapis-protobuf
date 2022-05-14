defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ContinuousTestResult.AggregatedTestResult do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :AGGREGATED_TEST_RESULT_UNSPECIFIED, 0
  field :PASSED, 1
  field :FAILED, 2
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Environment.VersionConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :version, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Environment.TestCasesConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :test_cases, 1, repeated: true, type: :string, json_name: "testCases", deprecated: false
  field :enable_continuous_run, 2, type: :bool, json_name: "enableContinuousRun"
  field :enable_predeployment_run, 3, type: :bool, json_name: "enablePredeploymentRun"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Environment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string

  field :version_configs, 6,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Environment.VersionConfig,
    json_name: "versionConfigs",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :test_cases_config, 7,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Environment.TestCasesConfig,
    json_name: "testCasesConfig"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListEnvironmentsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListEnvironmentsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :environments, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.Environment
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetEnvironmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CreateEnvironmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :environment, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.Environment, deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.UpdateEnvironmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :environment, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.Environment, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeleteEnvironmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.LookupEnvironmentHistoryRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.LookupEnvironmentHistoryResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :environments, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.Environment
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ContinuousTestResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string

  field :result, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ContinuousTestResult.AggregatedTestResult,
    enum: true

  field :test_case_results, 3,
    repeated: true,
    type: :string,
    json_name: "testCaseResults",
    deprecated: false

  field :run_time, 4, type: Google.Protobuf.Timestamp, json_name: "runTime"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.RunContinuousTestRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :environment, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.RunContinuousTestResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :continuous_test_result, 1,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ContinuousTestResult,
    json_name: "continuousTestResult"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.RunContinuousTestMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :errors, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.TestError
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListContinuousTestResultsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListContinuousTestResultsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :continuous_test_results, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ContinuousTestResult,
    json_name: "continuousTestResults"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeployFlowRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :environment, 1, type: :string, deprecated: false
  field :flow_version, 2, type: :string, json_name: "flowVersion", deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeployFlowResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :environment, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.Environment
  field :deployment, 2, type: :string
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeployFlowMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :test_errors, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TestError,
    json_name: "testErrors"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Environments.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.dialogflow.cx.v3beta1.Environments",
    protoc_gen_elixir_version: "0.10.0"

  rpc :ListEnvironments,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListEnvironmentsRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListEnvironmentsResponse

  rpc :GetEnvironment,
      Google.Cloud.Dialogflow.Cx.V3beta1.GetEnvironmentRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Environment

  rpc :CreateEnvironment,
      Google.Cloud.Dialogflow.Cx.V3beta1.CreateEnvironmentRequest,
      Google.Longrunning.Operation

  rpc :UpdateEnvironment,
      Google.Cloud.Dialogflow.Cx.V3beta1.UpdateEnvironmentRequest,
      Google.Longrunning.Operation

  rpc :DeleteEnvironment,
      Google.Cloud.Dialogflow.Cx.V3beta1.DeleteEnvironmentRequest,
      Google.Protobuf.Empty

  rpc :LookupEnvironmentHistory,
      Google.Cloud.Dialogflow.Cx.V3beta1.LookupEnvironmentHistoryRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.LookupEnvironmentHistoryResponse

  rpc :RunContinuousTest,
      Google.Cloud.Dialogflow.Cx.V3beta1.RunContinuousTestRequest,
      Google.Longrunning.Operation

  rpc :ListContinuousTestResults,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListContinuousTestResultsRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListContinuousTestResultsResponse

  rpc :DeployFlow,
      Google.Cloud.Dialogflow.Cx.V3beta1.DeployFlowRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Environments.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3beta1.Environments.Service
end
