defmodule Google.Devtools.Artifactregistry.V1.DockerImage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          uri: String.t(),
          tags: [String.t()],
          image_size_bytes: integer,
          upload_time: Google.Protobuf.Timestamp.t() | nil,
          media_type: String.t(),
          build_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :uri, :tags, :image_size_bytes, :upload_time, :media_type, :build_time]

  field :name, 1, type: :string
  field :uri, 2, type: :string
  field :tags, 3, repeated: true, type: :string
  field :image_size_bytes, 4, type: :int64
  field :upload_time, 5, type: Google.Protobuf.Timestamp
  field :media_type, 6, type: :string
  field :build_time, 7, type: Google.Protobuf.Timestamp
end

defmodule Google.Devtools.Artifactregistry.V1.ListDockerImagesRequest do
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

defmodule Google.Devtools.Artifactregistry.V1.ListDockerImagesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          docker_images: [Google.Devtools.Artifactregistry.V1.DockerImage.t()],
          next_page_token: String.t()
        }

  defstruct [:docker_images, :next_page_token]

  field :docker_images, 1, repeated: true, type: Google.Devtools.Artifactregistry.V1.DockerImage
  field :next_page_token, 2, type: :string
end
