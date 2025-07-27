defmodule Google.Devtools.Artifactregistry.V1beta2.Hash.HashType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :HASH_TYPE_UNSPECIFIED, 0
  field :SHA256, 1
  field :MD5, 2
end

defmodule Google.Devtools.Artifactregistry.V1beta2.Hash do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: Google.Devtools.Artifactregistry.V1beta2.Hash.HashType, enum: true
  field :value, 2, type: :bytes
end

defmodule Google.Devtools.Artifactregistry.V1beta2.File do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :size_bytes, 3, type: :int64, json_name: "sizeBytes"
  field :hashes, 4, repeated: true, type: Google.Devtools.Artifactregistry.V1beta2.Hash
  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 6, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :owner, 7, type: :string
end

defmodule Google.Devtools.Artifactregistry.V1beta2.ListFilesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string
  field :filter, 4, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Devtools.Artifactregistry.V1beta2.ListFilesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :files, 1, repeated: true, type: Google.Devtools.Artifactregistry.V1beta2.File
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Devtools.Artifactregistry.V1beta2.GetFileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
end
