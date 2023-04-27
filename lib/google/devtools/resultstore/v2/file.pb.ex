defmodule Google.Devtools.Resultstore.V2.File.HashType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :HASH_TYPE_UNSPECIFIED, 0
  field :MD5, 1
  field :SHA1, 2
  field :SHA256, 3
end

defmodule Google.Devtools.Resultstore.V2.File do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
    json_name: "hashType",
    enum: true
end

defmodule Google.Devtools.Resultstore.V2.ArchiveEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :path, 1, type: :string
  field :length, 2, type: Google.Protobuf.Int64Value
  field :content_type, 3, type: :string, json_name: "contentType"
end