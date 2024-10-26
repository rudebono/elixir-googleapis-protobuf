defmodule Google.Devtools.Artifactregistry.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Devtools.Artifactregistry.V1.ArtifactRegistry.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.devtools.artifactregistry.v1.ArtifactRegistry",
    protoc_gen_elixir_version: "0.13.0"

  rpc :ListDockerImages,
      Google.Devtools.Artifactregistry.V1.ListDockerImagesRequest,
      Google.Devtools.Artifactregistry.V1.ListDockerImagesResponse

  rpc :GetDockerImage,
      Google.Devtools.Artifactregistry.V1.GetDockerImageRequest,
      Google.Devtools.Artifactregistry.V1.DockerImage

  rpc :ListMavenArtifacts,
      Google.Devtools.Artifactregistry.V1.ListMavenArtifactsRequest,
      Google.Devtools.Artifactregistry.V1.ListMavenArtifactsResponse

  rpc :GetMavenArtifact,
      Google.Devtools.Artifactregistry.V1.GetMavenArtifactRequest,
      Google.Devtools.Artifactregistry.V1.MavenArtifact

  rpc :ListNpmPackages,
      Google.Devtools.Artifactregistry.V1.ListNpmPackagesRequest,
      Google.Devtools.Artifactregistry.V1.ListNpmPackagesResponse

  rpc :GetNpmPackage,
      Google.Devtools.Artifactregistry.V1.GetNpmPackageRequest,
      Google.Devtools.Artifactregistry.V1.NpmPackage

  rpc :ListPythonPackages,
      Google.Devtools.Artifactregistry.V1.ListPythonPackagesRequest,
      Google.Devtools.Artifactregistry.V1.ListPythonPackagesResponse

  rpc :GetPythonPackage,
      Google.Devtools.Artifactregistry.V1.GetPythonPackageRequest,
      Google.Devtools.Artifactregistry.V1.PythonPackage

  rpc :ImportAptArtifacts,
      Google.Devtools.Artifactregistry.V1.ImportAptArtifactsRequest,
      Google.Longrunning.Operation

  rpc :ImportYumArtifacts,
      Google.Devtools.Artifactregistry.V1.ImportYumArtifactsRequest,
      Google.Longrunning.Operation

  rpc :ListRepositories,
      Google.Devtools.Artifactregistry.V1.ListRepositoriesRequest,
      Google.Devtools.Artifactregistry.V1.ListRepositoriesResponse

  rpc :GetRepository,
      Google.Devtools.Artifactregistry.V1.GetRepositoryRequest,
      Google.Devtools.Artifactregistry.V1.Repository

  rpc :CreateRepository,
      Google.Devtools.Artifactregistry.V1.CreateRepositoryRequest,
      Google.Longrunning.Operation

  rpc :UpdateRepository,
      Google.Devtools.Artifactregistry.V1.UpdateRepositoryRequest,
      Google.Devtools.Artifactregistry.V1.Repository

  rpc :DeleteRepository,
      Google.Devtools.Artifactregistry.V1.DeleteRepositoryRequest,
      Google.Longrunning.Operation

  rpc :ListPackages,
      Google.Devtools.Artifactregistry.V1.ListPackagesRequest,
      Google.Devtools.Artifactregistry.V1.ListPackagesResponse

  rpc :GetPackage,
      Google.Devtools.Artifactregistry.V1.GetPackageRequest,
      Google.Devtools.Artifactregistry.V1.Package

  rpc :DeletePackage,
      Google.Devtools.Artifactregistry.V1.DeletePackageRequest,
      Google.Longrunning.Operation

  rpc :ListVersions,
      Google.Devtools.Artifactregistry.V1.ListVersionsRequest,
      Google.Devtools.Artifactregistry.V1.ListVersionsResponse

  rpc :GetVersion,
      Google.Devtools.Artifactregistry.V1.GetVersionRequest,
      Google.Devtools.Artifactregistry.V1.Version

  rpc :DeleteVersion,
      Google.Devtools.Artifactregistry.V1.DeleteVersionRequest,
      Google.Longrunning.Operation

  rpc :BatchDeleteVersions,
      Google.Devtools.Artifactregistry.V1.BatchDeleteVersionsRequest,
      Google.Longrunning.Operation

  rpc :UpdateVersion,
      Google.Devtools.Artifactregistry.V1.UpdateVersionRequest,
      Google.Devtools.Artifactregistry.V1.Version

  rpc :ListFiles,
      Google.Devtools.Artifactregistry.V1.ListFilesRequest,
      Google.Devtools.Artifactregistry.V1.ListFilesResponse

  rpc :GetFile,
      Google.Devtools.Artifactregistry.V1.GetFileRequest,
      Google.Devtools.Artifactregistry.V1.File

  rpc :DeleteFile,
      Google.Devtools.Artifactregistry.V1.DeleteFileRequest,
      Google.Longrunning.Operation

  rpc :UpdateFile,
      Google.Devtools.Artifactregistry.V1.UpdateFileRequest,
      Google.Devtools.Artifactregistry.V1.File

  rpc :ListTags,
      Google.Devtools.Artifactregistry.V1.ListTagsRequest,
      Google.Devtools.Artifactregistry.V1.ListTagsResponse

  rpc :GetTag,
      Google.Devtools.Artifactregistry.V1.GetTagRequest,
      Google.Devtools.Artifactregistry.V1.Tag

  rpc :CreateTag,
      Google.Devtools.Artifactregistry.V1.CreateTagRequest,
      Google.Devtools.Artifactregistry.V1.Tag

  rpc :UpdateTag,
      Google.Devtools.Artifactregistry.V1.UpdateTagRequest,
      Google.Devtools.Artifactregistry.V1.Tag

  rpc :DeleteTag, Google.Devtools.Artifactregistry.V1.DeleteTagRequest, Google.Protobuf.Empty

  rpc :CreateRule,
      Google.Devtools.Artifactregistry.V1.CreateRuleRequest,
      Google.Devtools.Artifactregistry.V1.Rule

  rpc :ListRules,
      Google.Devtools.Artifactregistry.V1.ListRulesRequest,
      Google.Devtools.Artifactregistry.V1.ListRulesResponse

  rpc :GetRule,
      Google.Devtools.Artifactregistry.V1.GetRuleRequest,
      Google.Devtools.Artifactregistry.V1.Rule

  rpc :UpdateRule,
      Google.Devtools.Artifactregistry.V1.UpdateRuleRequest,
      Google.Devtools.Artifactregistry.V1.Rule

  rpc :DeleteRule, Google.Devtools.Artifactregistry.V1.DeleteRuleRequest, Google.Protobuf.Empty

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse

  rpc :GetProjectSettings,
      Google.Devtools.Artifactregistry.V1.GetProjectSettingsRequest,
      Google.Devtools.Artifactregistry.V1.ProjectSettings

  rpc :UpdateProjectSettings,
      Google.Devtools.Artifactregistry.V1.UpdateProjectSettingsRequest,
      Google.Devtools.Artifactregistry.V1.ProjectSettings

  rpc :GetVPCSCConfig,
      Google.Devtools.Artifactregistry.V1.GetVPCSCConfigRequest,
      Google.Devtools.Artifactregistry.V1.VPCSCConfig

  rpc :UpdateVPCSCConfig,
      Google.Devtools.Artifactregistry.V1.UpdateVPCSCConfigRequest,
      Google.Devtools.Artifactregistry.V1.VPCSCConfig

  rpc :UpdatePackage,
      Google.Devtools.Artifactregistry.V1.UpdatePackageRequest,
      Google.Devtools.Artifactregistry.V1.Package

  rpc :ListAttachments,
      Google.Devtools.Artifactregistry.V1.ListAttachmentsRequest,
      Google.Devtools.Artifactregistry.V1.ListAttachmentsResponse

  rpc :GetAttachment,
      Google.Devtools.Artifactregistry.V1.GetAttachmentRequest,
      Google.Devtools.Artifactregistry.V1.Attachment

  rpc :CreateAttachment,
      Google.Devtools.Artifactregistry.V1.CreateAttachmentRequest,
      Google.Longrunning.Operation

  rpc :DeleteAttachment,
      Google.Devtools.Artifactregistry.V1.DeleteAttachmentRequest,
      Google.Longrunning.Operation
end

defmodule Google.Devtools.Artifactregistry.V1.ArtifactRegistry.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Devtools.Artifactregistry.V1.ArtifactRegistry.Service
end