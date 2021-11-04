defmodule Google.Devtools.Sourcerepo.V1.Repo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          size: integer,
          url: String.t(),
          mirror_config: Google.Devtools.Sourcerepo.V1.MirrorConfig.t() | nil
        }

  defstruct [:name, :size, :url, :mirror_config]

  field :name, 1, type: :string
  field :size, 2, type: :int64
  field :url, 3, type: :string

  field :mirror_config, 4,
    type: Google.Devtools.Sourcerepo.V1.MirrorConfig,
    json_name: "mirrorConfig"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Sourcerepo.V1.MirrorConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t(),
          webhook_id: String.t(),
          deploy_key_id: String.t()
        }

  defstruct [:url, :webhook_id, :deploy_key_id]

  field :url, 1, type: :string
  field :webhook_id, 2, type: :string, json_name: "webhookId"
  field :deploy_key_id, 3, type: :string, json_name: "deployKeyId"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Sourcerepo.V1.GetRepoRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Devtools.Sourcerepo.V1.ListReposRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:name, :page_size, :page_token]

  field :name, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Sourcerepo.V1.ListReposResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          repos: [Google.Devtools.Sourcerepo.V1.Repo.t()],
          next_page_token: String.t()
        }

  defstruct [:repos, :next_page_token]

  field :repos, 1, repeated: true, type: Google.Devtools.Sourcerepo.V1.Repo
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Sourcerepo.V1.CreateRepoRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          repo: Google.Devtools.Sourcerepo.V1.Repo.t() | nil
        }

  defstruct [:parent, :repo]

  field :parent, 1, type: :string
  field :repo, 2, type: Google.Devtools.Sourcerepo.V1.Repo

  def transform_module(), do: nil
end

defmodule Google.Devtools.Sourcerepo.V1.DeleteRepoRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Devtools.Sourcerepo.V1.SourceRepo.Service do
  @moduledoc false
  use GRPC.Service, name: "google.devtools.sourcerepo.v1.SourceRepo"

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
