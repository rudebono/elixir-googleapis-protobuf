defmodule Google.Cloud.Biglake.V1.IcebergCatalog.CatalogType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CATALOG_TYPE_UNSPECIFIED, 0
  field :CATALOG_TYPE_GCS_BUCKET, 1
end

defmodule Google.Cloud.Biglake.V1.IcebergCatalog.CredentialMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CREDENTIAL_MODE_UNSPECIFIED, 0
  field :CREDENTIAL_MODE_END_USER, 1
  field :CREDENTIAL_MODE_VENDED_CREDENTIALS, 2
end

defmodule Google.Cloud.Biglake.V1.ListIcebergCatalogsRequest.CatalogView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CATALOG_VIEW_UNSPECIFIED, 0
  field :CATALOG_VIEW_BASIC, 1
  field :CATALOG_VIEW_FULL, 2
end

defmodule Google.Cloud.Biglake.V1.RegisterIcebergTableRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :name, 2, type: :string, deprecated: false
  field :metadata_location, 3, type: :string, json_name: "metadata-location", deprecated: false
  field :overwrite, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Biglake.V1.IcebergCatalog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :credential_mode, 2,
    type: Google.Cloud.Biglake.V1.IcebergCatalog.CredentialMode,
    json_name: "credential-mode",
    enum: true,
    deprecated: false

  field :biglake_service_account, 3,
    type: :string,
    json_name: "biglake-service-account",
    deprecated: false

  field :catalog_type, 4,
    type: Google.Cloud.Biglake.V1.IcebergCatalog.CatalogType,
    json_name: "catalog-type",
    enum: true,
    deprecated: false

  field :default_location, 5, type: :string, json_name: "default-location", deprecated: false

  field :catalog_regions, 6,
    repeated: true,
    type: :string,
    json_name: "catalog-regions",
    deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "create-time",
    deprecated: false

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "update-time",
    deprecated: false
end

defmodule Google.Cloud.Biglake.V1.CreateIcebergCatalogRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :iceberg_catalog_id, 3, type: :string, json_name: "iceberg-catalog-id", deprecated: false

  field :iceberg_catalog, 2,
    type: Google.Cloud.Biglake.V1.IcebergCatalog,
    json_name: "icebergCatalog",
    deprecated: false
end

defmodule Google.Cloud.Biglake.V1.DeleteIcebergCatalogRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Biglake.V1.UpdateIcebergCatalogRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :iceberg_catalog, 1,
    type: Google.Cloud.Biglake.V1.IcebergCatalog,
    json_name: "icebergCatalog",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Biglake.V1.GetIcebergCatalogRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Biglake.V1.ListIcebergCatalogsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :view, 2,
    type: Google.Cloud.Biglake.V1.ListIcebergCatalogsRequest.CatalogView,
    enum: true,
    deprecated: false

  field :page_size, 3, type: :int32, json_name: "page-size", deprecated: false
  field :page_token, 4, type: :string, json_name: "page-token", deprecated: false
end

defmodule Google.Cloud.Biglake.V1.ListIcebergCatalogsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :iceberg_catalogs, 1,
    repeated: true,
    type: Google.Cloud.Biglake.V1.IcebergCatalog,
    json_name: "iceberg-catalogs",
    deprecated: false

  field :next_page_token, 2, type: :string, json_name: "next-page-token", deprecated: false
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Biglake.V1.FailoverIcebergCatalogRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :primary_replica, 2, type: :string, json_name: "primaryReplica", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false

  field :conditional_failover_replication_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "conditionalFailoverReplicationTime",
    deprecated: false
end

defmodule Google.Cloud.Biglake.V1.FailoverIcebergCatalogResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :replication_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "replicationTime",
    deprecated: false
end

defmodule Google.Cloud.Biglake.V1.UpdateIcebergTableRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :http_body, 2, type: Google.Api.HttpBody, json_name: "updates", deprecated: false
end

defmodule Google.Cloud.Biglake.V1.GetIcebergTableRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :snapshots, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Biglake.V1.DeleteIcebergTableRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :purge_requested, 2, type: :bool, json_name: "purgeRequested", deprecated: false
end

defmodule Google.Cloud.Biglake.V1.CreateIcebergTableRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :http_body, 3, type: Google.Api.HttpBody, json_name: "httpBody", deprecated: false
end

defmodule Google.Cloud.Biglake.V1.ListIcebergTableIdentifiersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :page_token, 1, type: :string, json_name: "pageToken", deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :parent, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Biglake.V1.TableIdentifier do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :namespace, 1, repeated: true, type: :string, deprecated: false
  field :name, 2, type: :string
end

defmodule Google.Cloud.Biglake.V1.ListIcebergTableIdentifiersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :identifiers, 1,
    repeated: true,
    type: Google.Cloud.Biglake.V1.TableIdentifier,
    deprecated: false

  field :next_page_token, 2, type: :string, json_name: "next-page-token", deprecated: false
end

defmodule Google.Cloud.Biglake.V1.IcebergNamespaceUpdate.UpdatesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Biglake.V1.IcebergNamespaceUpdate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :removals, 2, repeated: true, type: :string, deprecated: false

  field :updates, 3,
    repeated: true,
    type: Google.Cloud.Biglake.V1.IcebergNamespaceUpdate.UpdatesEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Biglake.V1.UpdateIcebergNamespaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :iceberg_namespace_update, 2,
    type: Google.Cloud.Biglake.V1.IcebergNamespaceUpdate,
    json_name: "icebergNamespaceUpdate",
    deprecated: false
end

defmodule Google.Cloud.Biglake.V1.UpdateIcebergNamespaceResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :removed, 1, repeated: true, type: :string, deprecated: false
  field :updated, 2, repeated: true, type: :string, json_name: "added", deprecated: false
  field :missing, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Biglake.V1.DeleteIcebergNamespaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Biglake.V1.IcebergNamespace.PropertiesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Biglake.V1.IcebergNamespace do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :namespace, 1, repeated: true, type: :string, deprecated: false

  field :properties, 2,
    repeated: true,
    type: Google.Cloud.Biglake.V1.IcebergNamespace.PropertiesEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Biglake.V1.CreateIcebergNamespaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :iceberg_namespace, 2,
    type: Google.Cloud.Biglake.V1.IcebergNamespace,
    json_name: "namespace",
    deprecated: false
end

defmodule Google.Cloud.Biglake.V1.GetIcebergCatalogConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :warehouse, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Biglake.V1.IcebergCatalogConfig.OverridesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Biglake.V1.IcebergCatalogConfig.DefaultsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Biglake.V1.IcebergCatalogConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :overrides, 1,
    repeated: true,
    type: Google.Cloud.Biglake.V1.IcebergCatalogConfig.OverridesEntry,
    map: true,
    deprecated: false

  field :defaults, 2,
    repeated: true,
    type: Google.Cloud.Biglake.V1.IcebergCatalogConfig.DefaultsEntry,
    map: true,
    deprecated: false

  field :endpoints, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Biglake.V1.GetIcebergNamespaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Biglake.V1.ListIcebergNamespacesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :page_token, 1, type: :string, json_name: "pageToken", deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :api_parent, 3, type: :string, json_name: "apiParent", deprecated: false
  field :parent, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Biglake.V1.ListIcebergNamespacesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :namespaces, 1, repeated: true, type: Google.Protobuf.ListValue
  field :next_page_token, 2, type: :string, json_name: "next-page-token"
end

defmodule Google.Cloud.Biglake.V1.StorageCredential.ConfigEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Biglake.V1.StorageCredential do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :prefix, 1, type: :string

  field :config, 2,
    repeated: true,
    type: Google.Cloud.Biglake.V1.StorageCredential.ConfigEntry,
    map: true
end

defmodule Google.Cloud.Biglake.V1.LoadIcebergTableCredentialsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :storage_credentials, 1,
    repeated: true,
    type: Google.Cloud.Biglake.V1.StorageCredential,
    json_name: "storage-credentials"
end

defmodule Google.Cloud.Biglake.V1.IcebergCatalogService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.biglake.v1.IcebergCatalogService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetIcebergCatalogConfig,
      Google.Cloud.Biglake.V1.GetIcebergCatalogConfigRequest,
      Google.Cloud.Biglake.V1.IcebergCatalogConfig

  rpc :ListIcebergNamespaces,
      Google.Cloud.Biglake.V1.ListIcebergNamespacesRequest,
      Google.Cloud.Biglake.V1.ListIcebergNamespacesResponse

  rpc :CheckIcebergNamespaceExists,
      Google.Cloud.Biglake.V1.GetIcebergNamespaceRequest,
      Google.Protobuf.Empty

  rpc :GetIcebergNamespace,
      Google.Cloud.Biglake.V1.GetIcebergNamespaceRequest,
      Google.Cloud.Biglake.V1.IcebergNamespace

  rpc :CreateIcebergNamespace,
      Google.Cloud.Biglake.V1.CreateIcebergNamespaceRequest,
      Google.Cloud.Biglake.V1.IcebergNamespace

  rpc :DeleteIcebergNamespace,
      Google.Cloud.Biglake.V1.DeleteIcebergNamespaceRequest,
      Google.Protobuf.Empty

  rpc :UpdateIcebergNamespace,
      Google.Cloud.Biglake.V1.UpdateIcebergNamespaceRequest,
      Google.Cloud.Biglake.V1.UpdateIcebergNamespaceResponse

  rpc :ListIcebergTableIdentifiers,
      Google.Cloud.Biglake.V1.ListIcebergTableIdentifiersRequest,
      Google.Cloud.Biglake.V1.ListIcebergTableIdentifiersResponse

  rpc :CreateIcebergTable, Google.Cloud.Biglake.V1.CreateIcebergTableRequest, Google.Api.HttpBody

  rpc :CheckIcebergTableExists,
      Google.Cloud.Biglake.V1.GetIcebergTableRequest,
      Google.Protobuf.Empty

  rpc :DeleteIcebergTable,
      Google.Cloud.Biglake.V1.DeleteIcebergTableRequest,
      Google.Protobuf.Empty

  rpc :GetIcebergTable, Google.Cloud.Biglake.V1.GetIcebergTableRequest, Google.Api.HttpBody

  rpc :LoadIcebergTableCredentials,
      Google.Cloud.Biglake.V1.GetIcebergTableRequest,
      Google.Cloud.Biglake.V1.LoadIcebergTableCredentialsResponse

  rpc :UpdateIcebergTable, Google.Cloud.Biglake.V1.UpdateIcebergTableRequest, Google.Api.HttpBody

  rpc :RegisterIcebergTable,
      Google.Cloud.Biglake.V1.RegisterIcebergTableRequest,
      Google.Api.HttpBody

  rpc :GetIcebergCatalog,
      Google.Cloud.Biglake.V1.GetIcebergCatalogRequest,
      Google.Cloud.Biglake.V1.IcebergCatalog

  rpc :ListIcebergCatalogs,
      Google.Cloud.Biglake.V1.ListIcebergCatalogsRequest,
      Google.Cloud.Biglake.V1.ListIcebergCatalogsResponse

  rpc :DeleteIcebergCatalog,
      Google.Cloud.Biglake.V1.DeleteIcebergCatalogRequest,
      Google.Protobuf.Empty

  rpc :UpdateIcebergCatalog,
      Google.Cloud.Biglake.V1.UpdateIcebergCatalogRequest,
      Google.Cloud.Biglake.V1.IcebergCatalog

  rpc :CreateIcebergCatalog,
      Google.Cloud.Biglake.V1.CreateIcebergCatalogRequest,
      Google.Cloud.Biglake.V1.IcebergCatalog

  rpc :FailoverIcebergCatalog,
      Google.Cloud.Biglake.V1.FailoverIcebergCatalogRequest,
      Google.Cloud.Biglake.V1.FailoverIcebergCatalogResponse
end

defmodule Google.Cloud.Biglake.V1.IcebergCatalogService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Biglake.V1.IcebergCatalogService.Service
end
