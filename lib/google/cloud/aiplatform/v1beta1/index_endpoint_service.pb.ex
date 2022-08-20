defmodule Google.Cloud.Aiplatform.V1beta1.CreateIndexEndpointRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :index_endpoint, 2,
    type: Google.Cloud.Aiplatform.V1beta1.IndexEndpoint,
    json_name: "indexEndpoint",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateIndexEndpointOperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetIndexEndpointRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListIndexEndpointsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListIndexEndpointsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :index_endpoints, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.IndexEndpoint,
    json_name: "indexEndpoints"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateIndexEndpointRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :index_endpoint, 1,
    type: Google.Cloud.Aiplatform.V1beta1.IndexEndpoint,
    json_name: "indexEndpoint",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteIndexEndpointRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeployIndexRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :index_endpoint, 1, type: :string, json_name: "indexEndpoint", deprecated: false

  field :deployed_index, 2,
    type: Google.Cloud.Aiplatform.V1beta1.DeployedIndex,
    json_name: "deployedIndex",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeployIndexResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :deployed_index, 1,
    type: Google.Cloud.Aiplatform.V1beta1.DeployedIndex,
    json_name: "deployedIndex"
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeployIndexOperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :deployed_index_id, 2, type: :string, json_name: "deployedIndexId"
end

defmodule Google.Cloud.Aiplatform.V1beta1.UndeployIndexRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :index_endpoint, 1, type: :string, json_name: "indexEndpoint", deprecated: false
  field :deployed_index_id, 2, type: :string, json_name: "deployedIndexId", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.UndeployIndexResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.UndeployIndexOperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.MutateDeployedIndexRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :index_endpoint, 1, type: :string, json_name: "indexEndpoint", deprecated: false

  field :deployed_index, 2,
    type: Google.Cloud.Aiplatform.V1beta1.DeployedIndex,
    json_name: "deployedIndex",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.MutateDeployedIndexResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :deployed_index, 1,
    type: Google.Cloud.Aiplatform.V1beta1.DeployedIndex,
    json_name: "deployedIndex"
end

defmodule Google.Cloud.Aiplatform.V1beta1.MutateDeployedIndexOperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :deployed_index_id, 2, type: :string, json_name: "deployedIndexId"
end

defmodule Google.Cloud.Aiplatform.V1beta1.IndexEndpointService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.aiplatform.v1beta1.IndexEndpointService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :CreateIndexEndpoint,
      Google.Cloud.Aiplatform.V1beta1.CreateIndexEndpointRequest,
      Google.Longrunning.Operation

  rpc :GetIndexEndpoint,
      Google.Cloud.Aiplatform.V1beta1.GetIndexEndpointRequest,
      Google.Cloud.Aiplatform.V1beta1.IndexEndpoint

  rpc :ListIndexEndpoints,
      Google.Cloud.Aiplatform.V1beta1.ListIndexEndpointsRequest,
      Google.Cloud.Aiplatform.V1beta1.ListIndexEndpointsResponse

  rpc :UpdateIndexEndpoint,
      Google.Cloud.Aiplatform.V1beta1.UpdateIndexEndpointRequest,
      Google.Cloud.Aiplatform.V1beta1.IndexEndpoint

  rpc :DeleteIndexEndpoint,
      Google.Cloud.Aiplatform.V1beta1.DeleteIndexEndpointRequest,
      Google.Longrunning.Operation

  rpc :DeployIndex,
      Google.Cloud.Aiplatform.V1beta1.DeployIndexRequest,
      Google.Longrunning.Operation

  rpc :UndeployIndex,
      Google.Cloud.Aiplatform.V1beta1.UndeployIndexRequest,
      Google.Longrunning.Operation

  rpc :MutateDeployedIndex,
      Google.Cloud.Aiplatform.V1beta1.MutateDeployedIndexRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Aiplatform.V1beta1.IndexEndpointService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.IndexEndpointService.Service
end