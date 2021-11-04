defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ContinuousTestResult.AggregatedTestResult do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :AGGREGATED_TEST_RESULT_UNSPECIFIED | :PASSED | :FAILED

  field :AGGREGATED_TEST_RESULT_UNSPECIFIED, 0
  field :PASSED, 1
  field :FAILED, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Environment.VersionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: String.t()
        }

  defstruct [:version]

  field :version, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Environment.TestCasesConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          test_cases: [String.t()],
          enable_continuous_run: boolean,
          enable_predeployment_run: boolean
        }

  defstruct [:test_cases, :enable_continuous_run, :enable_predeployment_run]

  field :test_cases, 1, repeated: true, type: :string, json_name: "testCases"
  field :enable_continuous_run, 2, type: :bool, json_name: "enableContinuousRun"
  field :enable_predeployment_run, 3, type: :bool, json_name: "enablePredeploymentRun"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Environment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          version_configs: [Google.Cloud.Dialogflow.Cx.V3beta1.Environment.VersionConfig.t()],
          update_time: Google.Protobuf.Timestamp.t() | nil,
          test_cases_config:
            Google.Cloud.Dialogflow.Cx.V3beta1.Environment.TestCasesConfig.t() | nil
        }

  defstruct [
    :name,
    :display_name,
    :description,
    :version_configs,
    :update_time,
    :test_cases_config
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string

  field :version_configs, 6,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Environment.VersionConfig,
    json_name: "versionConfigs"

  field :update_time, 5, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :test_cases_config, 7,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Environment.TestCasesConfig,
    json_name: "testCasesConfig"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListEnvironmentsRequest do
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

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListEnvironmentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          environments: [Google.Cloud.Dialogflow.Cx.V3beta1.Environment.t()],
          next_page_token: String.t()
        }

  defstruct [:environments, :next_page_token]

  field :environments, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.Environment
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetEnvironmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CreateEnvironmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          environment: Google.Cloud.Dialogflow.Cx.V3beta1.Environment.t() | nil
        }

  defstruct [:parent, :environment]

  field :parent, 1, type: :string
  field :environment, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.Environment

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.UpdateEnvironmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          environment: Google.Cloud.Dialogflow.Cx.V3beta1.Environment.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:environment, :update_mask]

  field :environment, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.Environment
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeleteEnvironmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.LookupEnvironmentHistoryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:name, :page_size, :page_token]

  field :name, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.LookupEnvironmentHistoryResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          environments: [Google.Cloud.Dialogflow.Cx.V3beta1.Environment.t()],
          next_page_token: String.t()
        }

  defstruct [:environments, :next_page_token]

  field :environments, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.Environment
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ContinuousTestResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          result:
            Google.Cloud.Dialogflow.Cx.V3beta1.ContinuousTestResult.AggregatedTestResult.t(),
          test_case_results: [String.t()],
          run_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :result, :test_case_results, :run_time]

  field :name, 1, type: :string

  field :result, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ContinuousTestResult.AggregatedTestResult,
    enum: true

  field :test_case_results, 3, repeated: true, type: :string, json_name: "testCaseResults"
  field :run_time, 4, type: Google.Protobuf.Timestamp, json_name: "runTime"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.RunContinuousTestRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          environment: String.t()
        }

  defstruct [:environment]

  field :environment, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.RunContinuousTestResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          continuous_test_result:
            Google.Cloud.Dialogflow.Cx.V3beta1.ContinuousTestResult.t() | nil
        }

  defstruct [:continuous_test_result]

  field :continuous_test_result, 1,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ContinuousTestResult,
    json_name: "continuousTestResult"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.RunContinuousTestMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          errors: [Google.Cloud.Dialogflow.Cx.V3beta1.TestError.t()]
        }

  defstruct [:errors]

  field :errors, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.TestError

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListContinuousTestResultsRequest do
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

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListContinuousTestResultsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          continuous_test_results: [Google.Cloud.Dialogflow.Cx.V3beta1.ContinuousTestResult.t()],
          next_page_token: String.t()
        }

  defstruct [:continuous_test_results, :next_page_token]

  field :continuous_test_results, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ContinuousTestResult,
    json_name: "continuousTestResults"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeployFlowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          environment: String.t(),
          flow_version: String.t()
        }

  defstruct [:environment, :flow_version]

  field :environment, 1, type: :string
  field :flow_version, 2, type: :string, json_name: "flowVersion"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeployFlowResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          environment: Google.Cloud.Dialogflow.Cx.V3beta1.Environment.t() | nil,
          deployment: String.t()
        }

  defstruct [:environment, :deployment]

  field :environment, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.Environment
  field :deployment, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeployFlowMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          test_errors: [Google.Cloud.Dialogflow.Cx.V3beta1.TestError.t()]
        }

  defstruct [:test_errors]

  field :test_errors, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TestError,
    json_name: "testErrors"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Environments.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.cx.v3beta1.Environments"

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
