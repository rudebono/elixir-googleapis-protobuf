defmodule Google.Cloud.Aiplatform.V1.CreateEndpointRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :endpoint, 2, type: Google.Cloud.Aiplatform.V1.Endpoint, deprecated: false
  field :endpoint_id, 4, type: :string, json_name: "endpointId", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.CreateEndpointOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1.GetEndpointRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ListEndpointsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask", deprecated: false
  field :order_by, 6, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Aiplatform.V1.ListEndpointsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :endpoints, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.Endpoint
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.UpdateEndpointRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :endpoint, 1, type: Google.Cloud.Aiplatform.V1.Endpoint, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.UpdateEndpointLongRunningRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :endpoint, 1, type: Google.Cloud.Aiplatform.V1.Endpoint, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.UpdateEndpointOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1.DeleteEndpointRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.DeployModelRequest.TrafficSplitEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :int32
end

defmodule Google.Cloud.Aiplatform.V1.DeployModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :endpoint, 1, type: :string, deprecated: false

  field :deployed_model, 2,
    type: Google.Cloud.Aiplatform.V1.DeployedModel,
    json_name: "deployedModel",
    deprecated: false

  field :traffic_split, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.DeployModelRequest.TrafficSplitEntry,
    json_name: "trafficSplit",
    map: true
end

defmodule Google.Cloud.Aiplatform.V1.DeployModelResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :deployed_model, 1,
    type: Google.Cloud.Aiplatform.V1.DeployedModel,
    json_name: "deployedModel"
end

defmodule Google.Cloud.Aiplatform.V1.DeployModelOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1.UndeployModelRequest.TrafficSplitEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :int32
end

defmodule Google.Cloud.Aiplatform.V1.UndeployModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :endpoint, 1, type: :string, deprecated: false
  field :deployed_model_id, 2, type: :string, json_name: "deployedModelId", deprecated: false

  field :traffic_split, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.UndeployModelRequest.TrafficSplitEntry,
    json_name: "trafficSplit",
    map: true
end

defmodule Google.Cloud.Aiplatform.V1.UndeployModelResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1.UndeployModelOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1.MutateDeployedModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :endpoint, 1, type: :string, deprecated: false

  field :deployed_model, 2,
    type: Google.Cloud.Aiplatform.V1.DeployedModel,
    json_name: "deployedModel",
    deprecated: false

  field :update_mask, 4,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.MutateDeployedModelResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :deployed_model, 1,
    type: Google.Cloud.Aiplatform.V1.DeployedModel,
    json_name: "deployedModel"
end

defmodule Google.Cloud.Aiplatform.V1.MutateDeployedModelOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1.EndpointService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1.EndpointService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :CreateEndpoint,
      Google.Cloud.Aiplatform.V1.CreateEndpointRequest,
      Google.Longrunning.Operation

  rpc :GetEndpoint,
      Google.Cloud.Aiplatform.V1.GetEndpointRequest,
      Google.Cloud.Aiplatform.V1.Endpoint

  rpc :ListEndpoints,
      Google.Cloud.Aiplatform.V1.ListEndpointsRequest,
      Google.Cloud.Aiplatform.V1.ListEndpointsResponse

  rpc :UpdateEndpoint,
      Google.Cloud.Aiplatform.V1.UpdateEndpointRequest,
      Google.Cloud.Aiplatform.V1.Endpoint

  rpc :UpdateEndpointLongRunning,
      Google.Cloud.Aiplatform.V1.UpdateEndpointLongRunningRequest,
      Google.Longrunning.Operation

  rpc :DeleteEndpoint,
      Google.Cloud.Aiplatform.V1.DeleteEndpointRequest,
      Google.Longrunning.Operation

  rpc :DeployModel, Google.Cloud.Aiplatform.V1.DeployModelRequest, Google.Longrunning.Operation

  rpc :UndeployModel,
      Google.Cloud.Aiplatform.V1.UndeployModelRequest,
      Google.Longrunning.Operation

  rpc :MutateDeployedModel,
      Google.Cloud.Aiplatform.V1.MutateDeployedModelRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Aiplatform.V1.EndpointService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1.EndpointService.Service
end
