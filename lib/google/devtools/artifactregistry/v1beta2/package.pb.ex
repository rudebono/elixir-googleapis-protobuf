defmodule Google.Devtools.Artifactregistry.V1beta2.Package do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 6, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Devtools.Artifactregistry.V1beta2.ListPackagesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Devtools.Artifactregistry.V1beta2.ListPackagesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :packages, 1, repeated: true, type: Google.Devtools.Artifactregistry.V1beta2.Package
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Devtools.Artifactregistry.V1beta2.GetPackageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Devtools.Artifactregistry.V1beta2.DeletePackageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
end
