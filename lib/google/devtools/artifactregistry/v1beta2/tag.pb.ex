defmodule Google.Devtools.Artifactregistry.V1beta2.Tag do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          version: String.t()
        }

  defstruct [:name, :version]

  field :name, 1, type: :string
  field :version, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Devtools.Artifactregistry.V1beta2.ListTagsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :filter, :page_size, :page_token]

  field :parent, 1, type: :string
  field :filter, 4, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Artifactregistry.V1beta2.ListTagsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tags: [Google.Devtools.Artifactregistry.V1beta2.Tag.t()],
          next_page_token: String.t()
        }

  defstruct [:tags, :next_page_token]

  field :tags, 1, repeated: true, type: Google.Devtools.Artifactregistry.V1beta2.Tag
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Artifactregistry.V1beta2.GetTagRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Devtools.Artifactregistry.V1beta2.CreateTagRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          tag_id: String.t(),
          tag: Google.Devtools.Artifactregistry.V1beta2.Tag.t() | nil
        }

  defstruct [:parent, :tag_id, :tag]

  field :parent, 1, type: :string
  field :tag_id, 2, type: :string, json_name: "tagId"
  field :tag, 3, type: Google.Devtools.Artifactregistry.V1beta2.Tag

  def transform_module(), do: nil
end

defmodule Google.Devtools.Artifactregistry.V1beta2.UpdateTagRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tag: Google.Devtools.Artifactregistry.V1beta2.Tag.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:tag, :update_mask]

  field :tag, 1, type: Google.Devtools.Artifactregistry.V1beta2.Tag
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Artifactregistry.V1beta2.DeleteTagRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end
