defmodule Google.Devtools.Artifactregistry.V1.DockerImage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Devtools.Artifactregistry.V1.ListDockerImagesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :docker_images, 1,
    repeated: true,
    type: Google.Devtools.Artifactregistry.V1.DockerImage,
    json_name: "dockerImages"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Devtools.Artifactregistry.V1.GetDockerImageRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
