defmodule Google.Devtools.Artifactregistry.V1.Tag do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :version, 2, type: :string
end

defmodule Google.Devtools.Artifactregistry.V1.ListTagsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string
  field :filter, 4, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Devtools.Artifactregistry.V1.ListTagsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :tags, 1, repeated: true, type: Google.Devtools.Artifactregistry.V1.Tag
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Devtools.Artifactregistry.V1.GetTagRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Devtools.Artifactregistry.V1.CreateTagRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string
  field :tag_id, 2, type: :string, json_name: "tagId"
  field :tag, 3, type: Google.Devtools.Artifactregistry.V1.Tag
end

defmodule Google.Devtools.Artifactregistry.V1.UpdateTagRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :tag, 1, type: Google.Devtools.Artifactregistry.V1.Tag
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Devtools.Artifactregistry.V1.DeleteTagRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
end