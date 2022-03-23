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

  defstruct name: "",
            uri: "",
            tags: [],
            image_size_bytes: 0,
            upload_time: nil,
            media_type: "",
            build_time: nil

  field :name, 1, type: :string, deprecated: false
  field :uri, 2, type: :string, deprecated: false
  field :tags, 3, repeated: true, type: :string
  field :image_size_bytes, 4, type: :int64, json_name: "imageSizeBytes"
  field :upload_time, 5, type: Google.Protobuf.Timestamp, json_name: "uploadTime"
  field :media_type, 6, type: :string, json_name: "mediaType"
  field :build_time, 7, type: Google.Protobuf.Timestamp, json_name: "buildTime"
end
defmodule Google.Devtools.Artifactregistry.V1.ListDockerImagesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Devtools.Artifactregistry.V1.ListDockerImagesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          docker_images: [Google.Devtools.Artifactregistry.V1.DockerImage.t()],
          next_page_token: String.t()
        }

  defstruct docker_images: [],
            next_page_token: ""

  field :docker_images, 1,
    repeated: true,
    type: Google.Devtools.Artifactregistry.V1.DockerImage,
    json_name: "dockerImages"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Devtools.Artifactregistry.V1.GetDockerImageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
