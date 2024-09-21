defmodule Google.Appengine.V1.Deployment.FilesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Appengine.V1.FileInfo
end

defmodule Google.Appengine.V1.Deployment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :files, 1, repeated: true, type: Google.Appengine.V1.Deployment.FilesEntry, map: true
  field :container, 2, type: Google.Appengine.V1.ContainerInfo
  field :zip, 3, type: Google.Appengine.V1.ZipInfo

  field :cloud_build_options, 6,
    type: Google.Appengine.V1.CloudBuildOptions,
    json_name: "cloudBuildOptions"
end

defmodule Google.Appengine.V1.FileInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :source_url, 1, type: :string, json_name: "sourceUrl"
  field :sha1_sum, 2, type: :string, json_name: "sha1Sum"
  field :mime_type, 3, type: :string, json_name: "mimeType"
end

defmodule Google.Appengine.V1.ContainerInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :image, 1, type: :string
end

defmodule Google.Appengine.V1.CloudBuildOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :app_yaml_path, 1, type: :string, json_name: "appYamlPath"
  field :cloud_build_timeout, 2, type: Google.Protobuf.Duration, json_name: "cloudBuildTimeout"
end

defmodule Google.Appengine.V1.ZipInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :source_url, 3, type: :string, json_name: "sourceUrl"
  field :files_count, 4, type: :int32, json_name: "filesCount"
end