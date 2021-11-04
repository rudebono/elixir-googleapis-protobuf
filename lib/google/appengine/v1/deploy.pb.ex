defmodule Google.Appengine.V1.Deployment.FilesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Appengine.V1.FileInfo.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Appengine.V1.FileInfo

  def transform_module(), do: nil
end

defmodule Google.Appengine.V1.Deployment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          files: %{String.t() => Google.Appengine.V1.FileInfo.t() | nil},
          container: Google.Appengine.V1.ContainerInfo.t() | nil,
          zip: Google.Appengine.V1.ZipInfo.t() | nil,
          cloud_build_options: Google.Appengine.V1.CloudBuildOptions.t() | nil
        }

  defstruct [:files, :container, :zip, :cloud_build_options]

  field :files, 1, repeated: true, type: Google.Appengine.V1.Deployment.FilesEntry, map: true
  field :container, 2, type: Google.Appengine.V1.ContainerInfo
  field :zip, 3, type: Google.Appengine.V1.ZipInfo

  field :cloud_build_options, 6,
    type: Google.Appengine.V1.CloudBuildOptions,
    json_name: "cloudBuildOptions"

  def transform_module(), do: nil
end

defmodule Google.Appengine.V1.FileInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source_url: String.t(),
          sha1_sum: String.t(),
          mime_type: String.t()
        }

  defstruct [:source_url, :sha1_sum, :mime_type]

  field :source_url, 1, type: :string, json_name: "sourceUrl"
  field :sha1_sum, 2, type: :string, json_name: "sha1Sum"
  field :mime_type, 3, type: :string, json_name: "mimeType"

  def transform_module(), do: nil
end

defmodule Google.Appengine.V1.ContainerInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image: String.t()
        }

  defstruct [:image]

  field :image, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Appengine.V1.CloudBuildOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          app_yaml_path: String.t(),
          cloud_build_timeout: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:app_yaml_path, :cloud_build_timeout]

  field :app_yaml_path, 1, type: :string, json_name: "appYamlPath"
  field :cloud_build_timeout, 2, type: Google.Protobuf.Duration, json_name: "cloudBuildTimeout"

  def transform_module(), do: nil
end

defmodule Google.Appengine.V1.ZipInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source_url: String.t(),
          files_count: integer
        }

  defstruct [:source_url, :files_count]

  field :source_url, 3, type: :string, json_name: "sourceUrl"
  field :files_count, 4, type: :int32, json_name: "filesCount"

  def transform_module(), do: nil
end
