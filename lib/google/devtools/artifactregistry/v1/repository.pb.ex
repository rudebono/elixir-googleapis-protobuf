defmodule Google.Devtools.Artifactregistry.V1.Repository.Format do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :FORMAT_UNSPECIFIED | :DOCKER | :MAVEN | :NPM | :APT | :YUM | :PYTHON

  field :FORMAT_UNSPECIFIED, 0

  field :DOCKER, 1

  field :MAVEN, 2

  field :NPM, 3

  field :APT, 5

  field :YUM, 6

  field :PYTHON, 8
end

defmodule Google.Devtools.Artifactregistry.V1.Repository.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Devtools.Artifactregistry.V1.Repository do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          format: Google.Devtools.Artifactregistry.V1.Repository.Format.t(),
          description: String.t(),
          labels: %{String.t() => String.t()},
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          kms_key_name: String.t()
        }

  defstruct [:name, :format, :description, :labels, :create_time, :update_time, :kms_key_name]

  field :name, 1, type: :string
  field :format, 2, type: Google.Devtools.Artifactregistry.V1.Repository.Format, enum: true
  field :description, 3, type: :string

  field :labels, 4,
    repeated: true,
    type: Google.Devtools.Artifactregistry.V1.Repository.LabelsEntry,
    map: true

  field :create_time, 5, type: Google.Protobuf.Timestamp
  field :update_time, 6, type: Google.Protobuf.Timestamp
  field :kms_key_name, 8, type: :string
end

defmodule Google.Devtools.Artifactregistry.V1.ListRepositoriesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Devtools.Artifactregistry.V1.ListRepositoriesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          repositories: [Google.Devtools.Artifactregistry.V1.Repository.t()],
          next_page_token: String.t()
        }

  defstruct [:repositories, :next_page_token]

  field :repositories, 1, repeated: true, type: Google.Devtools.Artifactregistry.V1.Repository
  field :next_page_token, 2, type: :string
end

defmodule Google.Devtools.Artifactregistry.V1.GetRepositoryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end
