defmodule Google.Cloud.Apigeeregistry.V1.ListApisRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Apigeeregistry.V1.ListApisResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :apis, 1, repeated: true, type: Google.Cloud.Apigeeregistry.V1.Api
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Apigeeregistry.V1.GetApiRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apigeeregistry.V1.CreateApiRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :api, 2, type: Google.Cloud.Apigeeregistry.V1.Api, deprecated: false
  field :api_id, 3, type: :string, json_name: "apiId", deprecated: false
end

defmodule Google.Cloud.Apigeeregistry.V1.UpdateApiRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :api, 1, type: Google.Cloud.Apigeeregistry.V1.Api, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Apigeeregistry.V1.DeleteApiRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool
end

defmodule Google.Cloud.Apigeeregistry.V1.ListApiVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Apigeeregistry.V1.ListApiVersionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :api_versions, 1,
    repeated: true,
    type: Google.Cloud.Apigeeregistry.V1.ApiVersion,
    json_name: "apiVersions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Apigeeregistry.V1.GetApiVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apigeeregistry.V1.CreateApiVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :api_version, 2,
    type: Google.Cloud.Apigeeregistry.V1.ApiVersion,
    json_name: "apiVersion",
    deprecated: false

  field :api_version_id, 3, type: :string, json_name: "apiVersionId", deprecated: false
end

defmodule Google.Cloud.Apigeeregistry.V1.UpdateApiVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :api_version, 1,
    type: Google.Cloud.Apigeeregistry.V1.ApiVersion,
    json_name: "apiVersion",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Apigeeregistry.V1.DeleteApiVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool
end

defmodule Google.Cloud.Apigeeregistry.V1.ListApiSpecsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Apigeeregistry.V1.ListApiSpecsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :api_specs, 1,
    repeated: true,
    type: Google.Cloud.Apigeeregistry.V1.ApiSpec,
    json_name: "apiSpecs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Apigeeregistry.V1.GetApiSpecRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apigeeregistry.V1.GetApiSpecContentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apigeeregistry.V1.CreateApiSpecRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :api_spec, 2,
    type: Google.Cloud.Apigeeregistry.V1.ApiSpec,
    json_name: "apiSpec",
    deprecated: false

  field :api_spec_id, 3, type: :string, json_name: "apiSpecId", deprecated: false
end

defmodule Google.Cloud.Apigeeregistry.V1.UpdateApiSpecRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :api_spec, 1,
    type: Google.Cloud.Apigeeregistry.V1.ApiSpec,
    json_name: "apiSpec",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Apigeeregistry.V1.DeleteApiSpecRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool
end

defmodule Google.Cloud.Apigeeregistry.V1.TagApiSpecRevisionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :tag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Apigeeregistry.V1.ListApiSpecRevisionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Apigeeregistry.V1.ListApiSpecRevisionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :api_specs, 1,
    repeated: true,
    type: Google.Cloud.Apigeeregistry.V1.ApiSpec,
    json_name: "apiSpecs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Apigeeregistry.V1.RollbackApiSpecRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :revision_id, 2, type: :string, json_name: "revisionId", deprecated: false
end

defmodule Google.Cloud.Apigeeregistry.V1.DeleteApiSpecRevisionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apigeeregistry.V1.ListApiDeploymentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Apigeeregistry.V1.ListApiDeploymentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :api_deployments, 1,
    repeated: true,
    type: Google.Cloud.Apigeeregistry.V1.ApiDeployment,
    json_name: "apiDeployments"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Apigeeregistry.V1.GetApiDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apigeeregistry.V1.CreateApiDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :api_deployment, 2,
    type: Google.Cloud.Apigeeregistry.V1.ApiDeployment,
    json_name: "apiDeployment",
    deprecated: false

  field :api_deployment_id, 3, type: :string, json_name: "apiDeploymentId", deprecated: false
end

defmodule Google.Cloud.Apigeeregistry.V1.UpdateApiDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :api_deployment, 1,
    type: Google.Cloud.Apigeeregistry.V1.ApiDeployment,
    json_name: "apiDeployment",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Apigeeregistry.V1.DeleteApiDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool
end

defmodule Google.Cloud.Apigeeregistry.V1.TagApiDeploymentRevisionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :tag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Apigeeregistry.V1.ListApiDeploymentRevisionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Apigeeregistry.V1.ListApiDeploymentRevisionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :api_deployments, 1,
    repeated: true,
    type: Google.Cloud.Apigeeregistry.V1.ApiDeployment,
    json_name: "apiDeployments"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Apigeeregistry.V1.RollbackApiDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :revision_id, 2, type: :string, json_name: "revisionId", deprecated: false
end

defmodule Google.Cloud.Apigeeregistry.V1.DeleteApiDeploymentRevisionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apigeeregistry.V1.ListArtifactsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Apigeeregistry.V1.ListArtifactsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :artifacts, 1, repeated: true, type: Google.Cloud.Apigeeregistry.V1.Artifact
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Apigeeregistry.V1.GetArtifactRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apigeeregistry.V1.GetArtifactContentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apigeeregistry.V1.CreateArtifactRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :artifact, 2, type: Google.Cloud.Apigeeregistry.V1.Artifact, deprecated: false
  field :artifact_id, 3, type: :string, json_name: "artifactId", deprecated: false
end

defmodule Google.Cloud.Apigeeregistry.V1.ReplaceArtifactRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :artifact, 1, type: Google.Cloud.Apigeeregistry.V1.Artifact, deprecated: false
end

defmodule Google.Cloud.Apigeeregistry.V1.DeleteArtifactRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apigeeregistry.V1.Registry.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.apigeeregistry.v1.Registry",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListApis,
      Google.Cloud.Apigeeregistry.V1.ListApisRequest,
      Google.Cloud.Apigeeregistry.V1.ListApisResponse

  rpc :GetApi, Google.Cloud.Apigeeregistry.V1.GetApiRequest, Google.Cloud.Apigeeregistry.V1.Api

  rpc :CreateApi,
      Google.Cloud.Apigeeregistry.V1.CreateApiRequest,
      Google.Cloud.Apigeeregistry.V1.Api

  rpc :UpdateApi,
      Google.Cloud.Apigeeregistry.V1.UpdateApiRequest,
      Google.Cloud.Apigeeregistry.V1.Api

  rpc :DeleteApi, Google.Cloud.Apigeeregistry.V1.DeleteApiRequest, Google.Protobuf.Empty

  rpc :ListApiVersions,
      Google.Cloud.Apigeeregistry.V1.ListApiVersionsRequest,
      Google.Cloud.Apigeeregistry.V1.ListApiVersionsResponse

  rpc :GetApiVersion,
      Google.Cloud.Apigeeregistry.V1.GetApiVersionRequest,
      Google.Cloud.Apigeeregistry.V1.ApiVersion

  rpc :CreateApiVersion,
      Google.Cloud.Apigeeregistry.V1.CreateApiVersionRequest,
      Google.Cloud.Apigeeregistry.V1.ApiVersion

  rpc :UpdateApiVersion,
      Google.Cloud.Apigeeregistry.V1.UpdateApiVersionRequest,
      Google.Cloud.Apigeeregistry.V1.ApiVersion

  rpc :DeleteApiVersion,
      Google.Cloud.Apigeeregistry.V1.DeleteApiVersionRequest,
      Google.Protobuf.Empty

  rpc :ListApiSpecs,
      Google.Cloud.Apigeeregistry.V1.ListApiSpecsRequest,
      Google.Cloud.Apigeeregistry.V1.ListApiSpecsResponse

  rpc :GetApiSpec,
      Google.Cloud.Apigeeregistry.V1.GetApiSpecRequest,
      Google.Cloud.Apigeeregistry.V1.ApiSpec

  rpc :GetApiSpecContents,
      Google.Cloud.Apigeeregistry.V1.GetApiSpecContentsRequest,
      Google.Api.HttpBody

  rpc :CreateApiSpec,
      Google.Cloud.Apigeeregistry.V1.CreateApiSpecRequest,
      Google.Cloud.Apigeeregistry.V1.ApiSpec

  rpc :UpdateApiSpec,
      Google.Cloud.Apigeeregistry.V1.UpdateApiSpecRequest,
      Google.Cloud.Apigeeregistry.V1.ApiSpec

  rpc :DeleteApiSpec, Google.Cloud.Apigeeregistry.V1.DeleteApiSpecRequest, Google.Protobuf.Empty

  rpc :TagApiSpecRevision,
      Google.Cloud.Apigeeregistry.V1.TagApiSpecRevisionRequest,
      Google.Cloud.Apigeeregistry.V1.ApiSpec

  rpc :ListApiSpecRevisions,
      Google.Cloud.Apigeeregistry.V1.ListApiSpecRevisionsRequest,
      Google.Cloud.Apigeeregistry.V1.ListApiSpecRevisionsResponse

  rpc :RollbackApiSpec,
      Google.Cloud.Apigeeregistry.V1.RollbackApiSpecRequest,
      Google.Cloud.Apigeeregistry.V1.ApiSpec

  rpc :DeleteApiSpecRevision,
      Google.Cloud.Apigeeregistry.V1.DeleteApiSpecRevisionRequest,
      Google.Cloud.Apigeeregistry.V1.ApiSpec

  rpc :ListApiDeployments,
      Google.Cloud.Apigeeregistry.V1.ListApiDeploymentsRequest,
      Google.Cloud.Apigeeregistry.V1.ListApiDeploymentsResponse

  rpc :GetApiDeployment,
      Google.Cloud.Apigeeregistry.V1.GetApiDeploymentRequest,
      Google.Cloud.Apigeeregistry.V1.ApiDeployment

  rpc :CreateApiDeployment,
      Google.Cloud.Apigeeregistry.V1.CreateApiDeploymentRequest,
      Google.Cloud.Apigeeregistry.V1.ApiDeployment

  rpc :UpdateApiDeployment,
      Google.Cloud.Apigeeregistry.V1.UpdateApiDeploymentRequest,
      Google.Cloud.Apigeeregistry.V1.ApiDeployment

  rpc :DeleteApiDeployment,
      Google.Cloud.Apigeeregistry.V1.DeleteApiDeploymentRequest,
      Google.Protobuf.Empty

  rpc :TagApiDeploymentRevision,
      Google.Cloud.Apigeeregistry.V1.TagApiDeploymentRevisionRequest,
      Google.Cloud.Apigeeregistry.V1.ApiDeployment

  rpc :ListApiDeploymentRevisions,
      Google.Cloud.Apigeeregistry.V1.ListApiDeploymentRevisionsRequest,
      Google.Cloud.Apigeeregistry.V1.ListApiDeploymentRevisionsResponse

  rpc :RollbackApiDeployment,
      Google.Cloud.Apigeeregistry.V1.RollbackApiDeploymentRequest,
      Google.Cloud.Apigeeregistry.V1.ApiDeployment

  rpc :DeleteApiDeploymentRevision,
      Google.Cloud.Apigeeregistry.V1.DeleteApiDeploymentRevisionRequest,
      Google.Cloud.Apigeeregistry.V1.ApiDeployment

  rpc :ListArtifacts,
      Google.Cloud.Apigeeregistry.V1.ListArtifactsRequest,
      Google.Cloud.Apigeeregistry.V1.ListArtifactsResponse

  rpc :GetArtifact,
      Google.Cloud.Apigeeregistry.V1.GetArtifactRequest,
      Google.Cloud.Apigeeregistry.V1.Artifact

  rpc :GetArtifactContents,
      Google.Cloud.Apigeeregistry.V1.GetArtifactContentsRequest,
      Google.Api.HttpBody

  rpc :CreateArtifact,
      Google.Cloud.Apigeeregistry.V1.CreateArtifactRequest,
      Google.Cloud.Apigeeregistry.V1.Artifact

  rpc :ReplaceArtifact,
      Google.Cloud.Apigeeregistry.V1.ReplaceArtifactRequest,
      Google.Cloud.Apigeeregistry.V1.Artifact

  rpc :DeleteArtifact, Google.Cloud.Apigeeregistry.V1.DeleteArtifactRequest, Google.Protobuf.Empty
end

defmodule Google.Cloud.Apigeeregistry.V1.Registry.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Apigeeregistry.V1.Registry.Service
end
