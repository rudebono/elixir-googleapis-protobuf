defmodule Google.Cloud.Apihub.V1.CreateApiRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :api_id, 2, type: :string, json_name: "apiId", deprecated: false
  field :api, 3, type: Google.Cloud.Apihub.V1.Api, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.GetApiRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.UpdateApiRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :api, 1, type: Google.Cloud.Apihub.V1.Api, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.DeleteApiRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ListApisRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ListApisResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :apis, 1, repeated: true, type: Google.Cloud.Apihub.V1.Api
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Apihub.V1.CreateVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :version_id, 2, type: :string, json_name: "versionId", deprecated: false
  field :version, 3, type: Google.Cloud.Apihub.V1.Version, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.GetVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.UpdateVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :version, 1, type: Google.Cloud.Apihub.V1.Version, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.DeleteVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ListVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ListVersionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :versions, 1, repeated: true, type: Google.Cloud.Apihub.V1.Version
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Apihub.V1.CreateSpecRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :spec_id, 2, type: :string, json_name: "specId", deprecated: false
  field :spec, 3, type: Google.Cloud.Apihub.V1.Spec, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.GetSpecRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.UpdateSpecRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :spec, 1, type: Google.Cloud.Apihub.V1.Spec, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.DeleteSpecRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ListSpecsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ListSpecsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :specs, 1, repeated: true, type: Google.Cloud.Apihub.V1.Spec
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Apihub.V1.GetSpecContentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.CreateApiOperationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :api_operation_id, 2, type: :string, json_name: "apiOperationId", deprecated: false

  field :api_operation, 3,
    type: Google.Cloud.Apihub.V1.ApiOperation,
    json_name: "apiOperation",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.GetApiOperationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.UpdateApiOperationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :api_operation, 1,
    type: Google.Cloud.Apihub.V1.ApiOperation,
    json_name: "apiOperation",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.DeleteApiOperationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ListApiOperationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ListApiOperationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :api_operations, 1,
    repeated: true,
    type: Google.Cloud.Apihub.V1.ApiOperation,
    json_name: "apiOperations"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Apihub.V1.GetDefinitionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.CreateDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :deployment_id, 2, type: :string, json_name: "deploymentId", deprecated: false
  field :deployment, 3, type: Google.Cloud.Apihub.V1.Deployment, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.GetDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.UpdateDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :deployment, 1, type: Google.Cloud.Apihub.V1.Deployment, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.DeleteDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ListDeploymentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ListDeploymentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :deployments, 1, repeated: true, type: Google.Cloud.Apihub.V1.Deployment
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Apihub.V1.CreateAttributeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :attribute_id, 2, type: :string, json_name: "attributeId", deprecated: false
  field :attribute, 3, type: Google.Cloud.Apihub.V1.Attribute, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.GetAttributeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.UpdateAttributeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :attribute, 1, type: Google.Cloud.Apihub.V1.Attribute, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.DeleteAttributeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ListAttributesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ListAttributesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :attributes, 1, repeated: true, type: Google.Cloud.Apihub.V1.Attribute
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Apihub.V1.SearchResourcesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :location, 1, type: :string, deprecated: false
  field :query, 2, type: :string, deprecated: false
  field :filter, 3, type: :string, deprecated: false
  field :page_size, 4, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 5, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ApiHubResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :resource, 0

  field :api, 1, type: Google.Cloud.Apihub.V1.Api, oneof: 0
  field :operation, 2, type: Google.Cloud.Apihub.V1.ApiOperation, oneof: 0
  field :deployment, 3, type: Google.Cloud.Apihub.V1.Deployment, oneof: 0
  field :spec, 4, type: Google.Cloud.Apihub.V1.Spec, oneof: 0
  field :definition, 5, type: Google.Cloud.Apihub.V1.Definition, oneof: 0
  field :version, 6, type: Google.Cloud.Apihub.V1.Version, oneof: 0
end

defmodule Google.Cloud.Apihub.V1.SearchResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource, 1, type: Google.Cloud.Apihub.V1.ApiHubResource
end

defmodule Google.Cloud.Apihub.V1.SearchResourcesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :search_results, 1,
    repeated: true,
    type: Google.Cloud.Apihub.V1.SearchResult,
    json_name: "searchResults"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Apihub.V1.CreateDependencyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :dependency_id, 2, type: :string, json_name: "dependencyId", deprecated: false
  field :dependency, 3, type: Google.Cloud.Apihub.V1.Dependency, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.GetDependencyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.UpdateDependencyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dependency, 1, type: Google.Cloud.Apihub.V1.Dependency, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.DeleteDependencyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ListDependenciesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ListDependenciesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dependencies, 1, repeated: true, type: Google.Cloud.Apihub.V1.Dependency
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Apihub.V1.CreateExternalApiRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :external_api_id, 2, type: :string, json_name: "externalApiId", deprecated: false

  field :external_api, 3,
    type: Google.Cloud.Apihub.V1.ExternalApi,
    json_name: "externalApi",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.GetExternalApiRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.UpdateExternalApiRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :external_api, 1,
    type: Google.Cloud.Apihub.V1.ExternalApi,
    json_name: "externalApi",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.DeleteExternalApiRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ListExternalApisRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ListExternalApisResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :external_apis, 1,
    repeated: true,
    type: Google.Cloud.Apihub.V1.ExternalApi,
    json_name: "externalApis"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Apihub.V1.ApiHub.Service do
  @moduledoc false

  use GRPC.Service, name: "google.cloud.apihub.v1.ApiHub", protoc_gen_elixir_version: "0.15.0"

  rpc :CreateApi, Google.Cloud.Apihub.V1.CreateApiRequest, Google.Cloud.Apihub.V1.Api

  rpc :GetApi, Google.Cloud.Apihub.V1.GetApiRequest, Google.Cloud.Apihub.V1.Api

  rpc :ListApis, Google.Cloud.Apihub.V1.ListApisRequest, Google.Cloud.Apihub.V1.ListApisResponse

  rpc :UpdateApi, Google.Cloud.Apihub.V1.UpdateApiRequest, Google.Cloud.Apihub.V1.Api

  rpc :DeleteApi, Google.Cloud.Apihub.V1.DeleteApiRequest, Google.Protobuf.Empty

  rpc :CreateVersion, Google.Cloud.Apihub.V1.CreateVersionRequest, Google.Cloud.Apihub.V1.Version

  rpc :GetVersion, Google.Cloud.Apihub.V1.GetVersionRequest, Google.Cloud.Apihub.V1.Version

  rpc :ListVersions,
      Google.Cloud.Apihub.V1.ListVersionsRequest,
      Google.Cloud.Apihub.V1.ListVersionsResponse

  rpc :UpdateVersion, Google.Cloud.Apihub.V1.UpdateVersionRequest, Google.Cloud.Apihub.V1.Version

  rpc :DeleteVersion, Google.Cloud.Apihub.V1.DeleteVersionRequest, Google.Protobuf.Empty

  rpc :CreateSpec, Google.Cloud.Apihub.V1.CreateSpecRequest, Google.Cloud.Apihub.V1.Spec

  rpc :GetSpec, Google.Cloud.Apihub.V1.GetSpecRequest, Google.Cloud.Apihub.V1.Spec

  rpc :GetSpecContents,
      Google.Cloud.Apihub.V1.GetSpecContentsRequest,
      Google.Cloud.Apihub.V1.SpecContents

  rpc :ListSpecs,
      Google.Cloud.Apihub.V1.ListSpecsRequest,
      Google.Cloud.Apihub.V1.ListSpecsResponse

  rpc :UpdateSpec, Google.Cloud.Apihub.V1.UpdateSpecRequest, Google.Cloud.Apihub.V1.Spec

  rpc :DeleteSpec, Google.Cloud.Apihub.V1.DeleteSpecRequest, Google.Protobuf.Empty

  rpc :CreateApiOperation,
      Google.Cloud.Apihub.V1.CreateApiOperationRequest,
      Google.Cloud.Apihub.V1.ApiOperation

  rpc :GetApiOperation,
      Google.Cloud.Apihub.V1.GetApiOperationRequest,
      Google.Cloud.Apihub.V1.ApiOperation

  rpc :ListApiOperations,
      Google.Cloud.Apihub.V1.ListApiOperationsRequest,
      Google.Cloud.Apihub.V1.ListApiOperationsResponse

  rpc :UpdateApiOperation,
      Google.Cloud.Apihub.V1.UpdateApiOperationRequest,
      Google.Cloud.Apihub.V1.ApiOperation

  rpc :DeleteApiOperation, Google.Cloud.Apihub.V1.DeleteApiOperationRequest, Google.Protobuf.Empty

  rpc :GetDefinition,
      Google.Cloud.Apihub.V1.GetDefinitionRequest,
      Google.Cloud.Apihub.V1.Definition

  rpc :CreateDeployment,
      Google.Cloud.Apihub.V1.CreateDeploymentRequest,
      Google.Cloud.Apihub.V1.Deployment

  rpc :GetDeployment,
      Google.Cloud.Apihub.V1.GetDeploymentRequest,
      Google.Cloud.Apihub.V1.Deployment

  rpc :ListDeployments,
      Google.Cloud.Apihub.V1.ListDeploymentsRequest,
      Google.Cloud.Apihub.V1.ListDeploymentsResponse

  rpc :UpdateDeployment,
      Google.Cloud.Apihub.V1.UpdateDeploymentRequest,
      Google.Cloud.Apihub.V1.Deployment

  rpc :DeleteDeployment, Google.Cloud.Apihub.V1.DeleteDeploymentRequest, Google.Protobuf.Empty

  rpc :CreateAttribute,
      Google.Cloud.Apihub.V1.CreateAttributeRequest,
      Google.Cloud.Apihub.V1.Attribute

  rpc :GetAttribute, Google.Cloud.Apihub.V1.GetAttributeRequest, Google.Cloud.Apihub.V1.Attribute

  rpc :UpdateAttribute,
      Google.Cloud.Apihub.V1.UpdateAttributeRequest,
      Google.Cloud.Apihub.V1.Attribute

  rpc :DeleteAttribute, Google.Cloud.Apihub.V1.DeleteAttributeRequest, Google.Protobuf.Empty

  rpc :ListAttributes,
      Google.Cloud.Apihub.V1.ListAttributesRequest,
      Google.Cloud.Apihub.V1.ListAttributesResponse

  rpc :SearchResources,
      Google.Cloud.Apihub.V1.SearchResourcesRequest,
      Google.Cloud.Apihub.V1.SearchResourcesResponse

  rpc :CreateExternalApi,
      Google.Cloud.Apihub.V1.CreateExternalApiRequest,
      Google.Cloud.Apihub.V1.ExternalApi

  rpc :GetExternalApi,
      Google.Cloud.Apihub.V1.GetExternalApiRequest,
      Google.Cloud.Apihub.V1.ExternalApi

  rpc :UpdateExternalApi,
      Google.Cloud.Apihub.V1.UpdateExternalApiRequest,
      Google.Cloud.Apihub.V1.ExternalApi

  rpc :DeleteExternalApi, Google.Cloud.Apihub.V1.DeleteExternalApiRequest, Google.Protobuf.Empty

  rpc :ListExternalApis,
      Google.Cloud.Apihub.V1.ListExternalApisRequest,
      Google.Cloud.Apihub.V1.ListExternalApisResponse
end

defmodule Google.Cloud.Apihub.V1.ApiHub.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Apihub.V1.ApiHub.Service
end

defmodule Google.Cloud.Apihub.V1.ApiHubDependencies.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.apihub.v1.ApiHubDependencies",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateDependency,
      Google.Cloud.Apihub.V1.CreateDependencyRequest,
      Google.Cloud.Apihub.V1.Dependency

  rpc :GetDependency,
      Google.Cloud.Apihub.V1.GetDependencyRequest,
      Google.Cloud.Apihub.V1.Dependency

  rpc :UpdateDependency,
      Google.Cloud.Apihub.V1.UpdateDependencyRequest,
      Google.Cloud.Apihub.V1.Dependency

  rpc :DeleteDependency, Google.Cloud.Apihub.V1.DeleteDependencyRequest, Google.Protobuf.Empty

  rpc :ListDependencies,
      Google.Cloud.Apihub.V1.ListDependenciesRequest,
      Google.Cloud.Apihub.V1.ListDependenciesResponse
end

defmodule Google.Cloud.Apihub.V1.ApiHubDependencies.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Apihub.V1.ApiHubDependencies.Service
end
