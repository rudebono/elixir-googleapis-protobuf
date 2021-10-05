defmodule Google.Cloud.Dialogflow.Cx.V3.Deployment.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :RUNNING | :SUCCEEDED | :FAILED

  field :STATE_UNSPECIFIED, 0

  field :RUNNING, 1

  field :SUCCEEDED, 2

  field :FAILED, 3
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Deployment.Result do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          deployment_test_results: [String.t()],
          experiment: String.t()
        }

  defstruct [:deployment_test_results, :experiment]

  field :deployment_test_results, 1, repeated: true, type: :string
  field :experiment, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Deployment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          flow_version: String.t(),
          state: Google.Cloud.Dialogflow.Cx.V3.Deployment.State.t(),
          result: Google.Cloud.Dialogflow.Cx.V3.Deployment.Result.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :flow_version, :state, :result, :start_time, :end_time]

  field :name, 1, type: :string
  field :flow_version, 2, type: :string
  field :state, 3, type: Google.Cloud.Dialogflow.Cx.V3.Deployment.State, enum: true
  field :result, 4, type: Google.Cloud.Dialogflow.Cx.V3.Deployment.Result
  field :start_time, 5, type: Google.Protobuf.Timestamp
  field :end_time, 6, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListDeploymentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListDeploymentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          deployments: [Google.Cloud.Dialogflow.Cx.V3.Deployment.t()],
          next_page_token: String.t()
        }

  defstruct [:deployments, :next_page_token]

  field :deployments, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.Deployment
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.GetDeploymentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Deployments.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.cx.v3.Deployments"

  rpc :ListDeployments,
      Google.Cloud.Dialogflow.Cx.V3.ListDeploymentsRequest,
      Google.Cloud.Dialogflow.Cx.V3.ListDeploymentsResponse

  rpc :GetDeployment,
      Google.Cloud.Dialogflow.Cx.V3.GetDeploymentRequest,
      Google.Cloud.Dialogflow.Cx.V3.Deployment
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Deployments.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3.Deployments.Service
end
