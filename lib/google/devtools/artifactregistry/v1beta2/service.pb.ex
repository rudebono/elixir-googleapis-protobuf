defmodule Google.Devtools.Artifactregistry.V1beta2.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Devtools.Artifactregistry.V1beta2.ArtifactRegistry.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.devtools.artifactregistry.v1beta2.ArtifactRegistry",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ImportAptArtifacts,
      Google.Devtools.Artifactregistry.V1beta2.ImportAptArtifactsRequest,
      Google.Longrunning.Operation

  rpc :ImportYumArtifacts,
      Google.Devtools.Artifactregistry.V1beta2.ImportYumArtifactsRequest,
      Google.Longrunning.Operation

  rpc :ListRepositories,
      Google.Devtools.Artifactregistry.V1beta2.ListRepositoriesRequest,
      Google.Devtools.Artifactregistry.V1beta2.ListRepositoriesResponse

  rpc :GetRepository,
      Google.Devtools.Artifactregistry.V1beta2.GetRepositoryRequest,
      Google.Devtools.Artifactregistry.V1beta2.Repository

  rpc :CreateRepository,
      Google.Devtools.Artifactregistry.V1beta2.CreateRepositoryRequest,
      Google.Longrunning.Operation

  rpc :UpdateRepository,
      Google.Devtools.Artifactregistry.V1beta2.UpdateRepositoryRequest,
      Google.Devtools.Artifactregistry.V1beta2.Repository

  rpc :DeleteRepository,
      Google.Devtools.Artifactregistry.V1beta2.DeleteRepositoryRequest,
      Google.Longrunning.Operation

  rpc :ListPackages,
      Google.Devtools.Artifactregistry.V1beta2.ListPackagesRequest,
      Google.Devtools.Artifactregistry.V1beta2.ListPackagesResponse

  rpc :GetPackage,
      Google.Devtools.Artifactregistry.V1beta2.GetPackageRequest,
      Google.Devtools.Artifactregistry.V1beta2.Package

  rpc :DeletePackage,
      Google.Devtools.Artifactregistry.V1beta2.DeletePackageRequest,
      Google.Longrunning.Operation

  rpc :ListVersions,
      Google.Devtools.Artifactregistry.V1beta2.ListVersionsRequest,
      Google.Devtools.Artifactregistry.V1beta2.ListVersionsResponse

  rpc :GetVersion,
      Google.Devtools.Artifactregistry.V1beta2.GetVersionRequest,
      Google.Devtools.Artifactregistry.V1beta2.Version

  rpc :DeleteVersion,
      Google.Devtools.Artifactregistry.V1beta2.DeleteVersionRequest,
      Google.Longrunning.Operation

  rpc :ListFiles,
      Google.Devtools.Artifactregistry.V1beta2.ListFilesRequest,
      Google.Devtools.Artifactregistry.V1beta2.ListFilesResponse

  rpc :GetFile,
      Google.Devtools.Artifactregistry.V1beta2.GetFileRequest,
      Google.Devtools.Artifactregistry.V1beta2.File

  rpc :ListTags,
      Google.Devtools.Artifactregistry.V1beta2.ListTagsRequest,
      Google.Devtools.Artifactregistry.V1beta2.ListTagsResponse

  rpc :GetTag,
      Google.Devtools.Artifactregistry.V1beta2.GetTagRequest,
      Google.Devtools.Artifactregistry.V1beta2.Tag

  rpc :CreateTag,
      Google.Devtools.Artifactregistry.V1beta2.CreateTagRequest,
      Google.Devtools.Artifactregistry.V1beta2.Tag

  rpc :UpdateTag,
      Google.Devtools.Artifactregistry.V1beta2.UpdateTagRequest,
      Google.Devtools.Artifactregistry.V1beta2.Tag

  rpc :DeleteTag, Google.Devtools.Artifactregistry.V1beta2.DeleteTagRequest, Google.Protobuf.Empty

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse

  rpc :GetProjectSettings,
      Google.Devtools.Artifactregistry.V1beta2.GetProjectSettingsRequest,
      Google.Devtools.Artifactregistry.V1beta2.ProjectSettings

  rpc :UpdateProjectSettings,
      Google.Devtools.Artifactregistry.V1beta2.UpdateProjectSettingsRequest,
      Google.Devtools.Artifactregistry.V1beta2.ProjectSettings
end

defmodule Google.Devtools.Artifactregistry.V1beta2.ArtifactRegistry.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Devtools.Artifactregistry.V1beta2.ArtifactRegistry.Service
end
