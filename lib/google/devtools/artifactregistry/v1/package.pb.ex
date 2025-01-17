defmodule Google.Devtools.Artifactregistry.V1.Package.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Devtools.Artifactregistry.V1.Package do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 6, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :annotations, 7,
    repeated: true,
    type: Google.Devtools.Artifactregistry.V1.Package.AnnotationsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Devtools.Artifactregistry.V1.ListPackagesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Devtools.Artifactregistry.V1.ListPackagesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :packages, 1, repeated: true, type: Google.Devtools.Artifactregistry.V1.Package
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Devtools.Artifactregistry.V1.GetPackageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Devtools.Artifactregistry.V1.DeletePackageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Devtools.Artifactregistry.V1.UpdatePackageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :package, 1, type: Google.Devtools.Artifactregistry.V1.Package
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
