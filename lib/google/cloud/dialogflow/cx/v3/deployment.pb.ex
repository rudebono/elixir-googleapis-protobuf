defmodule Google.Cloud.Dialogflow.Cx.V3.Deployment.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Deployment.Result do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :deployment_test_results, 1,
    repeated: true,
    type: :string,
    json_name: "deploymentTestResults",
    deprecated: false

  field :experiment, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Deployment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :flow_version, 2, type: :string, json_name: "flowVersion", deprecated: false
  field :state, 3, type: Google.Cloud.Dialogflow.Cx.V3.Deployment.State, enum: true
  field :result, 4, type: Google.Cloud.Dialogflow.Cx.V3.Deployment.Result
  field :start_time, 5, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 6, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListDeploymentsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListDeploymentsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :deployments, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.Deployment
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.GetDeploymentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Deployments.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.dialogflow.cx.v3.Deployments",
    protoc_gen_elixir_version: "0.11.0"

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