defmodule Google.Devtools.Artifactregistry.V1beta2.VersionView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :VERSION_VIEW_UNSPECIFIED | :BASIC | :FULL

  field :VERSION_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end

defmodule Google.Devtools.Artifactregistry.V1beta2.Version do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          related_tags: [Google.Devtools.Artifactregistry.V1beta2.Tag.t()]
        }

  defstruct [:name, :description, :create_time, :update_time, :related_tags]

  field :name, 1, type: :string
  field :description, 3, type: :string
  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 6, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :related_tags, 7,
    repeated: true,
    type: Google.Devtools.Artifactregistry.V1beta2.Tag,
    json_name: "relatedTags"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Artifactregistry.V1beta2.ListVersionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          view: Google.Devtools.Artifactregistry.V1beta2.VersionView.t()
        }

  defstruct [:parent, :page_size, :page_token, :view]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :view, 4, type: Google.Devtools.Artifactregistry.V1beta2.VersionView, enum: true

  def transform_module(), do: nil
end

defmodule Google.Devtools.Artifactregistry.V1beta2.ListVersionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          versions: [Google.Devtools.Artifactregistry.V1beta2.Version.t()],
          next_page_token: String.t()
        }

  defstruct [:versions, :next_page_token]

  field :versions, 1, repeated: true, type: Google.Devtools.Artifactregistry.V1beta2.Version
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Artifactregistry.V1beta2.GetVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          view: Google.Devtools.Artifactregistry.V1beta2.VersionView.t()
        }

  defstruct [:name, :view]

  field :name, 1, type: :string
  field :view, 2, type: Google.Devtools.Artifactregistry.V1beta2.VersionView, enum: true

  def transform_module(), do: nil
end

defmodule Google.Devtools.Artifactregistry.V1beta2.DeleteVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean
        }

  defstruct [:name, :force]

  field :name, 1, type: :string
  field :force, 2, type: :bool

  def transform_module(), do: nil
end
