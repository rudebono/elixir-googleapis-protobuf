defmodule Google.Cloud.Aiplatform.V1beta1.CreateDeploymentResourcePoolRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :deployment_resource_pool, 2,
    type: Google.Cloud.Aiplatform.V1beta1.DeploymentResourcePool,
    json_name: "deploymentResourcePool",
    deprecated: false

  field :deployment_resource_pool_id, 3,
    type: :string,
    json_name: "deploymentResourcePoolId",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateDeploymentResourcePoolOperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetDeploymentResourcePoolRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListDeploymentResourcePoolsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListDeploymentResourcePoolsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :deployment_resource_pools, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.DeploymentResourcePool,
    json_name: "deploymentResourcePools"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateDeploymentResourcePoolOperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteDeploymentResourcePoolRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.QueryDeployedModelsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :deployment_resource_pool, 1,
    type: :string,
    json_name: "deploymentResourcePool",
    deprecated: false

  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.QueryDeployedModelsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :deployed_models, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.DeployedModel,
    json_name: "deployedModels",
    deprecated: true

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  field :deployed_model_refs, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.DeployedModelRef,
    json_name: "deployedModelRefs"
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeploymentResourcePoolService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.aiplatform.v1beta1.DeploymentResourcePoolService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :CreateDeploymentResourcePool,
      Google.Cloud.Aiplatform.V1beta1.CreateDeploymentResourcePoolRequest,
      Google.Longrunning.Operation

  rpc :GetDeploymentResourcePool,
      Google.Cloud.Aiplatform.V1beta1.GetDeploymentResourcePoolRequest,
      Google.Cloud.Aiplatform.V1beta1.DeploymentResourcePool

  rpc :ListDeploymentResourcePools,
      Google.Cloud.Aiplatform.V1beta1.ListDeploymentResourcePoolsRequest,
      Google.Cloud.Aiplatform.V1beta1.ListDeploymentResourcePoolsResponse

  rpc :DeleteDeploymentResourcePool,
      Google.Cloud.Aiplatform.V1beta1.DeleteDeploymentResourcePoolRequest,
      Google.Longrunning.Operation

  rpc :QueryDeployedModels,
      Google.Cloud.Aiplatform.V1beta1.QueryDeployedModelsRequest,
      Google.Cloud.Aiplatform.V1beta1.QueryDeployedModelsResponse
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeploymentResourcePoolService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.DeploymentResourcePoolService.Service
end