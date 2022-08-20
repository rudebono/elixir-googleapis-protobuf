defmodule Google.Devtools.Sourcerepo.V1.Repo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :size, 2, type: :int64
  field :url, 3, type: :string

  field :mirror_config, 4,
    type: Google.Devtools.Sourcerepo.V1.MirrorConfig,
    json_name: "mirrorConfig"
end

defmodule Google.Devtools.Sourcerepo.V1.MirrorConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :url, 1, type: :string
  field :webhook_id, 2, type: :string, json_name: "webhookId"
  field :deploy_key_id, 3, type: :string, json_name: "deployKeyId"
end

defmodule Google.Devtools.Sourcerepo.V1.GetRepoRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Devtools.Sourcerepo.V1.ListReposRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Devtools.Sourcerepo.V1.ListReposResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :repos, 1, repeated: true, type: Google.Devtools.Sourcerepo.V1.Repo
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Devtools.Sourcerepo.V1.CreateRepoRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string
  field :repo, 2, type: Google.Devtools.Sourcerepo.V1.Repo
end

defmodule Google.Devtools.Sourcerepo.V1.DeleteRepoRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Devtools.Sourcerepo.V1.SourceRepo.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.devtools.sourcerepo.v1.SourceRepo",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListRepos,
      Google.Devtools.Sourcerepo.V1.ListReposRequest,
      Google.Devtools.Sourcerepo.V1.ListReposResponse

  rpc :GetRepo, Google.Devtools.Sourcerepo.V1.GetRepoRequest, Google.Devtools.Sourcerepo.V1.Repo

  rpc :CreateRepo,
      Google.Devtools.Sourcerepo.V1.CreateRepoRequest,
      Google.Devtools.Sourcerepo.V1.Repo

  rpc :DeleteRepo, Google.Devtools.Sourcerepo.V1.DeleteRepoRequest, Google.Protobuf.Empty

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Devtools.Sourcerepo.V1.SourceRepo.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Devtools.Sourcerepo.V1.SourceRepo.Service
end