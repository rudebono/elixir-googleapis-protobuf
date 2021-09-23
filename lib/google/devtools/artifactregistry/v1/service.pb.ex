defmodule Google.Devtools.Artifactregistry.V1.ArtifactRegistry.Service do
  @moduledoc false
  use GRPC.Service, name: "google.devtools.artifactregistry.v1.ArtifactRegistry"

  rpc :ListDockerImages,
      Google.Devtools.Artifactregistry.V1.ListDockerImagesRequest,
      Google.Devtools.Artifactregistry.V1.ListDockerImagesResponse

  rpc :ListRepositories,
      Google.Devtools.Artifactregistry.V1.ListRepositoriesRequest,
      Google.Devtools.Artifactregistry.V1.ListRepositoriesResponse

  rpc :GetRepository,
      Google.Devtools.Artifactregistry.V1.GetRepositoryRequest,
      Google.Devtools.Artifactregistry.V1.Repository
end

defmodule Google.Devtools.Artifactregistry.V1.ArtifactRegistry.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Devtools.Artifactregistry.V1.ArtifactRegistry.Service
end
