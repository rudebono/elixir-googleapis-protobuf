defmodule Google.Cloud.Dialogflow.Cx.V3.ContinuousTestResult.AggregatedTestResult do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :AGGREGATED_TEST_RESULT_UNSPECIFIED, 0
  field :PASSED, 1
  field :FAILED, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Environment.VersionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :version, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Environment.TestCasesConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :test_cases, 1, repeated: true, type: :string, json_name: "testCases", deprecated: false
  field :enable_continuous_run, 2, type: :bool, json_name: "enableContinuousRun"
  field :enable_predeployment_run, 3, type: :bool, json_name: "enablePredeploymentRun"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Environment.WebhookConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :webhook_overrides, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.Webhook,
    json_name: "webhookOverrides"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Environment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string

  field :version_configs, 6,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.Environment.VersionConfig,
    json_name: "versionConfigs"

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :test_cases_config, 7,
    type: Google.Cloud.Dialogflow.Cx.V3.Environment.TestCasesConfig,
    json_name: "testCasesConfig"

  field :webhook_config, 10,
    type: Google.Cloud.Dialogflow.Cx.V3.Environment.WebhookConfig,
    json_name: "webhookConfig"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListEnvironmentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListEnvironmentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :environments, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.Environment
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.GetEnvironmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.CreateEnvironmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :environment, 2, type: Google.Cloud.Dialogflow.Cx.V3.Environment, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.UpdateEnvironmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :environment, 1, type: Google.Cloud.Dialogflow.Cx.V3.Environment, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.DeleteEnvironmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.LookupEnvironmentHistoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.LookupEnvironmentHistoryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :environments, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.Environment
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ContinuousTestResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string

  field :result, 2,
    type: Google.Cloud.Dialogflow.Cx.V3.ContinuousTestResult.AggregatedTestResult,
    enum: true

  field :test_case_results, 3,
    repeated: true,
    type: :string,
    json_name: "testCaseResults",
    deprecated: false

  field :run_time, 4, type: Google.Protobuf.Timestamp, json_name: "runTime"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.RunContinuousTestRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :environment, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.RunContinuousTestResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :continuous_test_result, 1,
    type: Google.Cloud.Dialogflow.Cx.V3.ContinuousTestResult,
    json_name: "continuousTestResult"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.RunContinuousTestMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :errors, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.TestError
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListContinuousTestResultsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListContinuousTestResultsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :continuous_test_results, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.ContinuousTestResult,
    json_name: "continuousTestResults"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.DeployFlowRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :environment, 1, type: :string, deprecated: false
  field :flow_version, 2, type: :string, json_name: "flowVersion", deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.DeployFlowResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :environment, 1, type: Google.Cloud.Dialogflow.Cx.V3.Environment
  field :deployment, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.DeployFlowMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :test_errors, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.TestError,
    json_name: "testErrors"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Environments.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.cx.v3.Environments",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListEnvironments,
      Google.Cloud.Dialogflow.Cx.V3.ListEnvironmentsRequest,
      Google.Cloud.Dialogflow.Cx.V3.ListEnvironmentsResponse

  rpc :GetEnvironment,
      Google.Cloud.Dialogflow.Cx.V3.GetEnvironmentRequest,
      Google.Cloud.Dialogflow.Cx.V3.Environment

  rpc :CreateEnvironment,
      Google.Cloud.Dialogflow.Cx.V3.CreateEnvironmentRequest,
      Google.Longrunning.Operation

  rpc :UpdateEnvironment,
      Google.Cloud.Dialogflow.Cx.V3.UpdateEnvironmentRequest,
      Google.Longrunning.Operation

  rpc :DeleteEnvironment,
      Google.Cloud.Dialogflow.Cx.V3.DeleteEnvironmentRequest,
      Google.Protobuf.Empty

  rpc :LookupEnvironmentHistory,
      Google.Cloud.Dialogflow.Cx.V3.LookupEnvironmentHistoryRequest,
      Google.Cloud.Dialogflow.Cx.V3.LookupEnvironmentHistoryResponse

  rpc :RunContinuousTest,
      Google.Cloud.Dialogflow.Cx.V3.RunContinuousTestRequest,
      Google.Longrunning.Operation

  rpc :ListContinuousTestResults,
      Google.Cloud.Dialogflow.Cx.V3.ListContinuousTestResultsRequest,
      Google.Cloud.Dialogflow.Cx.V3.ListContinuousTestResultsResponse

  rpc :DeployFlow, Google.Cloud.Dialogflow.Cx.V3.DeployFlowRequest, Google.Longrunning.Operation
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Environments.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3.Environments.Service
end