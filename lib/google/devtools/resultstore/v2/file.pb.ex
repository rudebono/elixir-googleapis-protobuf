defmodule Google.Devtools.Resultstore.V2.File.HashType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :HASH_TYPE_UNSPECIFIED | :MD5 | :SHA1 | :SHA256

  field :HASH_TYPE_UNSPECIFIED, 0
  field :MD5, 1
  field :SHA1, 2
  field :SHA256, 3
end

defmodule Google.Devtools.Resultstore.V2.File do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uid: String.t(),
          uri: String.t(),
          length: Google.Protobuf.Int64Value.t() | nil,
          content_type: String.t(),
          archive_entry: Google.Devtools.Resultstore.V2.ArchiveEntry.t() | nil,
          content_viewer: String.t(),
          hidden: boolean,
          description: String.t(),
          digest: String.t(),
          hash_type: Google.Devtools.Resultstore.V2.File.HashType.t()
        }

  defstruct [
    :uid,
    :uri,
    :length,
    :content_type,
    :archive_entry,
    :content_viewer,
    :hidden,
    :description,
    :digest,
    :hash_type
  ]

  field :uid, 1, type: :string
  field :uri, 2, type: :string
  field :length, 3, type: Google.Protobuf.Int64Value
  field :content_type, 4, type: :string, json_name: "contentType"

  field :archive_entry, 5,
    type: Google.Devtools.Resultstore.V2.ArchiveEntry,
    json_name: "archiveEntry"

  field :content_viewer, 6, type: :string, json_name: "contentViewer"
  field :hidden, 7, type: :bool
  field :description, 8, type: :string
  field :digest, 9, type: :string

  field :hash_type, 10,
    type: Google.Devtools.Resultstore.V2.File.HashType,
    enum: true,
    json_name: "hashType"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Resultstore.V2.ArchiveEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          path: String.t(),
          length: Google.Protobuf.Int64Value.t() | nil,
          content_type: String.t()
        }

  defstruct [:path, :length, :content_type]

  field :path, 1, type: :string
  field :length, 2, type: Google.Protobuf.Int64Value
  field :content_type, 3, type: :string, json_name: "contentType"

  def transform_module(), do: nil
end
