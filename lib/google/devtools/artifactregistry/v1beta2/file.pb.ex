defmodule Google.Devtools.Artifactregistry.V1beta2.Hash.HashType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :HASH_TYPE_UNSPECIFIED | :SHA256

  field :HASH_TYPE_UNSPECIFIED, 0
  field :SHA256, 1
end

defmodule Google.Devtools.Artifactregistry.V1beta2.Hash do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Devtools.Artifactregistry.V1beta2.Hash.HashType.t(),
          value: binary
        }

  defstruct [:type, :value]

  field :type, 1, type: Google.Devtools.Artifactregistry.V1beta2.Hash.HashType, enum: true
  field :value, 2, type: :bytes

  def transform_module(), do: nil
end

defmodule Google.Devtools.Artifactregistry.V1beta2.File do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          size_bytes: integer,
          hashes: [Google.Devtools.Artifactregistry.V1beta2.Hash.t()],
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          owner: String.t()
        }

  defstruct [:name, :size_bytes, :hashes, :create_time, :update_time, :owner]

  field :name, 1, type: :string
  field :size_bytes, 3, type: :int64, json_name: "sizeBytes"
  field :hashes, 4, repeated: true, type: Google.Devtools.Artifactregistry.V1beta2.Hash
  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 6, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :owner, 7, type: :string

  def transform_module(), do: nil
end

defmodule Google.Devtools.Artifactregistry.V1beta2.ListFilesRequest do
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

defmodule Google.Devtools.Artifactregistry.V1beta2.ListFilesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          files: [Google.Devtools.Artifactregistry.V1beta2.File.t()],
          next_page_token: String.t()
        }

  defstruct [:files, :next_page_token]

  field :files, 1, repeated: true, type: Google.Devtools.Artifactregistry.V1beta2.File
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Artifactregistry.V1beta2.GetFileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end
