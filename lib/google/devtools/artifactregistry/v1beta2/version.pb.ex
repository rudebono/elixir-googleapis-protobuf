defmodule Google.Devtools.Artifactregistry.V1beta2.VersionView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :VERSION_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end

defmodule Google.Devtools.Artifactregistry.V1beta2.Version do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :description, 3, type: :string
  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 6, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :related_tags, 7,
    repeated: true,
    type: Google.Devtools.Artifactregistry.V1beta2.Tag,
    json_name: "relatedTags"

  field :metadata, 8, type: Google.Protobuf.Struct, deprecated: false
end

defmodule Google.Devtools.Artifactregistry.V1beta2.ListVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :view, 4, type: Google.Devtools.Artifactregistry.V1beta2.VersionView, enum: true
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Devtools.Artifactregistry.V1beta2.ListVersionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :versions, 1, repeated: true, type: Google.Devtools.Artifactregistry.V1beta2.Version
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Devtools.Artifactregistry.V1beta2.GetVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :view, 2, type: Google.Devtools.Artifactregistry.V1beta2.VersionView, enum: true
end

defmodule Google.Devtools.Artifactregistry.V1beta2.DeleteVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :force, 2, type: :bool
end
