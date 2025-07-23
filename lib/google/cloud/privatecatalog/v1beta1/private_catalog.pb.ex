defmodule Google.Cloud.Privatecatalog.V1beta1.AssetReference.AssetValidationState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ASSET_VALIDATION_STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :VALID, 2
  field :INVALID, 3
end

defmodule Google.Cloud.Privatecatalog.V1beta1.SearchCatalogsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource, 1, type: :string, deprecated: false
  field :query, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Privatecatalog.V1beta1.SearchCatalogsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :catalogs, 1, repeated: true, type: Google.Cloud.Privatecatalog.V1beta1.Catalog
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Privatecatalog.V1beta1.SearchProductsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource, 1, type: :string, deprecated: false
  field :query, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Privatecatalog.V1beta1.SearchProductsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :products, 1, repeated: true, type: Google.Cloud.Privatecatalog.V1beta1.Product
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Privatecatalog.V1beta1.SearchVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource, 1, type: :string, deprecated: false
  field :query, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Privatecatalog.V1beta1.SearchVersionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :versions, 1, repeated: true, type: Google.Cloud.Privatecatalog.V1beta1.Version
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Privatecatalog.V1beta1.Catalog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Privatecatalog.V1beta1.Product do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :asset_type, 2, type: :string, json_name: "assetType", deprecated: false

  field :display_metadata, 3,
    type: Google.Protobuf.Struct,
    json_name: "displayMetadata",
    deprecated: false

  field :icon_uri, 4, type: :string, json_name: "iconUri", deprecated: false

  field :asset_references, 10,
    repeated: true,
    type: Google.Cloud.Privatecatalog.V1beta1.AssetReference,
    json_name: "assetReferences",
    deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Privatecatalog.V1beta1.AssetReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  field :id, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
  field :inputs, 6, type: Google.Cloud.Privatecatalog.V1beta1.Inputs, deprecated: false

  field :validation_status, 7,
    type: Google.Cloud.Privatecatalog.V1beta1.AssetReference.AssetValidationState,
    json_name: "validationStatus",
    enum: true,
    deprecated: false

  field :validation_operation, 8,
    type: Google.Longrunning.Operation,
    json_name: "validationOperation",
    deprecated: false

  field :asset, 10, type: :string, oneof: 0, deprecated: false
  field :gcs_path, 11, type: :string, json_name: "gcsPath", oneof: 0, deprecated: true

  field :git_source, 15,
    type: Google.Cloud.Privatecatalog.V1beta1.GitSource,
    json_name: "gitSource",
    oneof: 0,
    deprecated: false

  field :gcs_source, 16,
    type: Google.Cloud.Privatecatalog.V1beta1.GcsSource,
    json_name: "gcsSource",
    deprecated: false

  field :create_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :version, 14, type: :string, deprecated: true
end

defmodule Google.Cloud.Privatecatalog.V1beta1.Inputs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parameters, 1, type: Google.Protobuf.Struct, deprecated: false
end

defmodule Google.Cloud.Privatecatalog.V1beta1.GcsSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :gcs_path, 1, type: :string, json_name: "gcsPath", deprecated: false
  field :generation, 2, type: :int64, deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Privatecatalog.V1beta1.GitSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :ref, 0

  field :repo, 1, type: :string
  field :dir, 2, type: :string
  field :commit, 3, type: :string, oneof: 0
  field :branch, 4, type: :string, oneof: 0
  field :tag, 5, type: :string, oneof: 0
end

defmodule Google.Cloud.Privatecatalog.V1beta1.Version do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
  field :asset, 3, type: Google.Protobuf.Struct, deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Privatecatalog.V1beta1.PrivateCatalog.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.privatecatalog.v1beta1.PrivateCatalog",
    protoc_gen_elixir_version: "0.15.0"

  rpc :SearchCatalogs,
      Google.Cloud.Privatecatalog.V1beta1.SearchCatalogsRequest,
      Google.Cloud.Privatecatalog.V1beta1.SearchCatalogsResponse

  rpc :SearchProducts,
      Google.Cloud.Privatecatalog.V1beta1.SearchProductsRequest,
      Google.Cloud.Privatecatalog.V1beta1.SearchProductsResponse

  rpc :SearchVersions,
      Google.Cloud.Privatecatalog.V1beta1.SearchVersionsRequest,
      Google.Cloud.Privatecatalog.V1beta1.SearchVersionsResponse
end

defmodule Google.Cloud.Privatecatalog.V1beta1.PrivateCatalog.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Privatecatalog.V1beta1.PrivateCatalog.Service
end
