defmodule Google.Cloud.Datacatalog.V1.EntryType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ENTRY_TYPE_UNSPECIFIED, 0
  field :TABLE, 2
  field :MODEL, 5
  field :DATA_STREAM, 3
  field :FILESET, 4
  field :CLUSTER, 6
  field :DATABASE, 7
  field :DATA_SOURCE_CONNECTION, 8
  field :ROUTINE, 9
  field :LAKE, 10
  field :ZONE, 11
  field :SERVICE, 14
  field :DATABASE_SCHEMA, 15
  field :DASHBOARD, 16
  field :EXPLORE, 17
  field :LOOK, 18
  field :FEATURE_ONLINE_STORE, 19
  field :FEATURE_VIEW, 20
  field :FEATURE_GROUP, 21
end

defmodule Google.Cloud.Datacatalog.V1.TagTemplateMigration do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TAG_TEMPLATE_MIGRATION_UNSPECIFIED, 0
  field :TAG_TEMPLATE_MIGRATION_ENABLED, 1
  field :TAG_TEMPLATE_MIGRATION_DISABLED, 2
end

defmodule Google.Cloud.Datacatalog.V1.CatalogUIExperience do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CATALOG_UI_EXPERIENCE_UNSPECIFIED, 0
  field :CATALOG_UI_EXPERIENCE_ENABLED, 1
  field :CATALOG_UI_EXPERIENCE_DISABLED, 2
end

defmodule Google.Cloud.Datacatalog.V1.DatabaseTableSpec.TableType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TABLE_TYPE_UNSPECIFIED, 0
  field :NATIVE, 1
  field :EXTERNAL, 2
end

defmodule Google.Cloud.Datacatalog.V1.DatabaseTableSpec.DatabaseViewSpec.ViewType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :VIEW_TYPE_UNSPECIFIED, 0
  field :STANDARD_VIEW, 1
  field :MATERIALIZED_VIEW, 2
end

defmodule Google.Cloud.Datacatalog.V1.RoutineSpec.RoutineType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ROUTINE_TYPE_UNSPECIFIED, 0
  field :SCALAR_FUNCTION, 1
  field :PROCEDURE, 2
end

defmodule Google.Cloud.Datacatalog.V1.RoutineSpec.Argument.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :IN, 1
  field :OUT, 2
  field :INOUT, 3
end

defmodule Google.Cloud.Datacatalog.V1.VertexModelSourceInfo.ModelSourceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MODEL_SOURCE_TYPE_UNSPECIFIED, 0
  field :AUTOML, 1
  field :CUSTOM, 2
  field :BQML, 3
  field :MODEL_GARDEN, 4
  field :GENIE, 5
  field :CUSTOM_TEXT_EMBEDDING, 6
  field :MARKETPLACE, 7
end

defmodule Google.Cloud.Datacatalog.V1.VertexDatasetSpec.DataType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DATA_TYPE_UNSPECIFIED, 0
  field :TABLE, 1
  field :IMAGE, 2
  field :TEXT, 3
  field :VIDEO, 4
  field :CONVERSATION, 5
  field :TIME_SERIES, 6
  field :DOCUMENT, 7
  field :TEXT_TO_SPEECH, 8
  field :TRANSLATION, 9
  field :STORE_VISION, 10
  field :ENTERPRISE_KNOWLEDGE_GRAPH, 11
  field :TEXT_PROMPT, 12
end

defmodule Google.Cloud.Datacatalog.V1.FeatureOnlineStoreSpec.StorageType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STORAGE_TYPE_UNSPECIFIED, 0
  field :BIGTABLE, 1
  field :OPTIMIZED, 2
end

defmodule Google.Cloud.Datacatalog.V1.ReconcileTagsMetadata.ReconciliationState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RECONCILIATION_STATE_UNSPECIFIED, 0
  field :RECONCILIATION_QUEUED, 1
  field :RECONCILIATION_IN_PROGRESS, 2
  field :RECONCILIATION_DONE, 3
end

defmodule Google.Cloud.Datacatalog.V1.ImportEntriesMetadata.ImportState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :IMPORT_STATE_UNSPECIFIED, 0
  field :IMPORT_QUEUED, 1
  field :IMPORT_IN_PROGRESS, 2
  field :IMPORT_DONE, 3
  field :IMPORT_OBSOLETE, 4
end

defmodule Google.Cloud.Datacatalog.V1.SearchCatalogRequest.Scope do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :include_org_ids, 2, repeated: true, type: :string, json_name: "includeOrgIds"
  field :include_project_ids, 3, repeated: true, type: :string, json_name: "includeProjectIds"
  field :include_gcp_public_datasets, 7, type: :bool, json_name: "includeGcpPublicDatasets"

  field :restricted_locations, 16,
    repeated: true,
    type: :string,
    json_name: "restrictedLocations",
    deprecated: false

  field :starred_only, 18, type: :bool, json_name: "starredOnly", deprecated: false

  field :include_public_tag_templates, 19,
    type: :bool,
    json_name: "includePublicTagTemplates",
    deprecated: true
end

defmodule Google.Cloud.Datacatalog.V1.SearchCatalogRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :scope, 6, type: Google.Cloud.Datacatalog.V1.SearchCatalogRequest.Scope, deprecated: false
  field :query, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy"
  field :admin_search, 17, type: :bool, json_name: "adminSearch", deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.SearchCatalogResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :results, 1, repeated: true, type: Google.Cloud.Datacatalog.V1.SearchCatalogResult
  field :total_size, 2, type: :int32, json_name: "totalSize"
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
  field :unreachable, 6, repeated: true, type: :string
end

defmodule Google.Cloud.Datacatalog.V1.CreateEntryGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :entry_group_id, 3, type: :string, json_name: "entryGroupId", deprecated: false
  field :entry_group, 2, type: Google.Cloud.Datacatalog.V1.EntryGroup, json_name: "entryGroup"
end

defmodule Google.Cloud.Datacatalog.V1.UpdateEntryGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entry_group, 1,
    type: Google.Cloud.Datacatalog.V1.EntryGroup,
    json_name: "entryGroup",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Datacatalog.V1.GetEntryGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :read_mask, 2, type: Google.Protobuf.FieldMask, json_name: "readMask"
end

defmodule Google.Cloud.Datacatalog.V1.DeleteEntryGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool, deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.ListEntryGroupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.ListEntryGroupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entry_groups, 1,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1.EntryGroup,
    json_name: "entryGroups"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Datacatalog.V1.CreateEntryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :entry_id, 3, type: :string, json_name: "entryId", deprecated: false
  field :entry, 2, type: Google.Cloud.Datacatalog.V1.Entry, deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.UpdateEntryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entry, 1, type: Google.Cloud.Datacatalog.V1.Entry, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Datacatalog.V1.DeleteEntryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.GetEntryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.LookupEntryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :target_name, 0

  field :linked_resource, 1, type: :string, json_name: "linkedResource", oneof: 0
  field :sql_resource, 3, type: :string, json_name: "sqlResource", oneof: 0
  field :fully_qualified_name, 5, type: :string, json_name: "fullyQualifiedName", oneof: 0
  field :project, 6, type: :string
  field :location, 7, type: :string
end

defmodule Google.Cloud.Datacatalog.V1.Entry.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Datacatalog.V1.Entry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :entry_type, 0

  oneof :system, 1

  oneof :system_spec, 2

  oneof :type_spec, 3

  oneof :spec, 4

  field :name, 1, type: :string, deprecated: false
  field :linked_resource, 9, type: :string, json_name: "linkedResource"
  field :fully_qualified_name, 29, type: :string, json_name: "fullyQualifiedName"
  field :type, 2, type: Google.Cloud.Datacatalog.V1.EntryType, enum: true, oneof: 0
  field :user_specified_type, 16, type: :string, json_name: "userSpecifiedType", oneof: 0

  field :integrated_system, 17,
    type: Google.Cloud.Datacatalog.V1.IntegratedSystem,
    json_name: "integratedSystem",
    enum: true,
    oneof: 1,
    deprecated: false

  field :user_specified_system, 18, type: :string, json_name: "userSpecifiedSystem", oneof: 1

  field :sql_database_system_spec, 39,
    type: Google.Cloud.Datacatalog.V1.SqlDatabaseSystemSpec,
    json_name: "sqlDatabaseSystemSpec",
    oneof: 2

  field :looker_system_spec, 40,
    type: Google.Cloud.Datacatalog.V1.LookerSystemSpec,
    json_name: "lookerSystemSpec",
    oneof: 2

  field :cloud_bigtable_system_spec, 41,
    type: Google.Cloud.Datacatalog.V1.CloudBigtableSystemSpec,
    json_name: "cloudBigtableSystemSpec",
    oneof: 2

  field :gcs_fileset_spec, 6,
    type: Google.Cloud.Datacatalog.V1.GcsFilesetSpec,
    json_name: "gcsFilesetSpec",
    oneof: 3

  field :bigquery_table_spec, 12,
    type: Google.Cloud.Datacatalog.V1.BigQueryTableSpec,
    json_name: "bigqueryTableSpec",
    oneof: 3,
    deprecated: false

  field :bigquery_date_sharded_spec, 15,
    type: Google.Cloud.Datacatalog.V1.BigQueryDateShardedSpec,
    json_name: "bigqueryDateShardedSpec",
    oneof: 3,
    deprecated: false

  field :database_table_spec, 24,
    type: Google.Cloud.Datacatalog.V1.DatabaseTableSpec,
    json_name: "databaseTableSpec",
    oneof: 4

  field :data_source_connection_spec, 27,
    type: Google.Cloud.Datacatalog.V1.DataSourceConnectionSpec,
    json_name: "dataSourceConnectionSpec",
    oneof: 4

  field :routine_spec, 28,
    type: Google.Cloud.Datacatalog.V1.RoutineSpec,
    json_name: "routineSpec",
    oneof: 4

  field :dataset_spec, 32,
    type: Google.Cloud.Datacatalog.V1.DatasetSpec,
    json_name: "datasetSpec",
    oneof: 4

  field :fileset_spec, 33,
    type: Google.Cloud.Datacatalog.V1.FilesetSpec,
    json_name: "filesetSpec",
    oneof: 4

  field :service_spec, 42,
    type: Google.Cloud.Datacatalog.V1.ServiceSpec,
    json_name: "serviceSpec",
    oneof: 4

  field :model_spec, 43,
    type: Google.Cloud.Datacatalog.V1.ModelSpec,
    json_name: "modelSpec",
    oneof: 4

  field :feature_online_store_spec, 45,
    type: Google.Cloud.Datacatalog.V1.FeatureOnlineStoreSpec,
    json_name: "featureOnlineStoreSpec",
    oneof: 4

  field :display_name, 3, type: :string, json_name: "displayName"
  field :description, 4, type: :string

  field :business_context, 37,
    type: Google.Cloud.Datacatalog.V1.BusinessContext,
    json_name: "businessContext"

  field :schema, 5, type: Google.Cloud.Datacatalog.V1.Schema

  field :source_system_timestamps, 7,
    type: Google.Cloud.Datacatalog.V1.SystemTimestamps,
    json_name: "sourceSystemTimestamps"

  field :usage_signal, 13, type: Google.Cloud.Datacatalog.V1.UsageSignal, json_name: "usageSignal"

  field :labels, 14,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1.Entry.LabelsEntry,
    map: true

  field :data_source, 20,
    type: Google.Cloud.Datacatalog.V1.DataSource,
    json_name: "dataSource",
    deprecated: false

  field :personal_details, 26,
    type: Google.Cloud.Datacatalog.V1.PersonalDetails,
    json_name: "personalDetails",
    deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.DatabaseTableSpec.DatabaseViewSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source_definition, 0

  field :view_type, 1,
    type: Google.Cloud.Datacatalog.V1.DatabaseTableSpec.DatabaseViewSpec.ViewType,
    json_name: "viewType",
    enum: true

  field :base_table, 2, type: :string, json_name: "baseTable", oneof: 0
  field :sql_query, 3, type: :string, json_name: "sqlQuery", oneof: 0
end

defmodule Google.Cloud.Datacatalog.V1.DatabaseTableSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :type, 1, type: Google.Cloud.Datacatalog.V1.DatabaseTableSpec.TableType, enum: true

  field :dataplex_table, 2,
    type: Google.Cloud.Datacatalog.V1.DataplexTableSpec,
    json_name: "dataplexTable",
    deprecated: false

  field :database_view_spec, 3,
    type: Google.Cloud.Datacatalog.V1.DatabaseTableSpec.DatabaseViewSpec,
    json_name: "databaseViewSpec"
end

defmodule Google.Cloud.Datacatalog.V1.FilesetSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :dataplex_fileset, 1,
    type: Google.Cloud.Datacatalog.V1.DataplexFilesetSpec,
    json_name: "dataplexFileset"
end

defmodule Google.Cloud.Datacatalog.V1.DataSourceConnectionSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :bigquery_connection_spec, 1,
    type: Google.Cloud.Datacatalog.V1.BigQueryConnectionSpec,
    json_name: "bigqueryConnectionSpec"
end

defmodule Google.Cloud.Datacatalog.V1.RoutineSpec.Argument do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :mode, 2, type: Google.Cloud.Datacatalog.V1.RoutineSpec.Argument.Mode, enum: true
  field :type, 3, type: :string
end

defmodule Google.Cloud.Datacatalog.V1.RoutineSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :system_spec, 0

  field :routine_type, 1,
    type: Google.Cloud.Datacatalog.V1.RoutineSpec.RoutineType,
    json_name: "routineType",
    enum: true

  field :language, 2, type: :string

  field :routine_arguments, 3,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1.RoutineSpec.Argument,
    json_name: "routineArguments"

  field :return_type, 4, type: :string, json_name: "returnType"
  field :definition_body, 5, type: :string, json_name: "definitionBody"

  field :bigquery_routine_spec, 6,
    type: Google.Cloud.Datacatalog.V1.BigQueryRoutineSpec,
    json_name: "bigqueryRoutineSpec",
    oneof: 0
end

defmodule Google.Cloud.Datacatalog.V1.DatasetSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :system_spec, 0

  field :vertex_dataset_spec, 2,
    type: Google.Cloud.Datacatalog.V1.VertexDatasetSpec,
    json_name: "vertexDatasetSpec",
    oneof: 0
end

defmodule Google.Cloud.Datacatalog.V1.SqlDatabaseSystemSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :sql_engine, 1, type: :string, json_name: "sqlEngine"
  field :database_version, 2, type: :string, json_name: "databaseVersion"
  field :instance_host, 3, type: :string, json_name: "instanceHost"
end

defmodule Google.Cloud.Datacatalog.V1.LookerSystemSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent_instance_id, 1, type: :string, json_name: "parentInstanceId"
  field :parent_instance_display_name, 2, type: :string, json_name: "parentInstanceDisplayName"
  field :parent_model_id, 3, type: :string, json_name: "parentModelId"
  field :parent_model_display_name, 4, type: :string, json_name: "parentModelDisplayName"
  field :parent_view_id, 5, type: :string, json_name: "parentViewId"
  field :parent_view_display_name, 6, type: :string, json_name: "parentViewDisplayName"
end

defmodule Google.Cloud.Datacatalog.V1.CloudBigtableSystemSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instance_display_name, 1, type: :string, json_name: "instanceDisplayName"
end

defmodule Google.Cloud.Datacatalog.V1.CloudBigtableInstanceSpec.CloudBigtableClusterSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :location, 2, type: :string
  field :type, 3, type: :string
  field :linked_resource, 4, type: :string, json_name: "linkedResource"
end

defmodule Google.Cloud.Datacatalog.V1.CloudBigtableInstanceSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :cloud_bigtable_cluster_specs, 1,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1.CloudBigtableInstanceSpec.CloudBigtableClusterSpec,
    json_name: "cloudBigtableClusterSpecs"
end

defmodule Google.Cloud.Datacatalog.V1.ServiceSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :system_spec, 0

  field :cloud_bigtable_instance_spec, 1,
    type: Google.Cloud.Datacatalog.V1.CloudBigtableInstanceSpec,
    json_name: "cloudBigtableInstanceSpec",
    oneof: 0
end

defmodule Google.Cloud.Datacatalog.V1.VertexModelSourceInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :source_type, 1,
    type: Google.Cloud.Datacatalog.V1.VertexModelSourceInfo.ModelSourceType,
    json_name: "sourceType",
    enum: true

  field :copy, 2, type: :bool
end

defmodule Google.Cloud.Datacatalog.V1.VertexModelSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :version_id, 1, type: :string, json_name: "versionId"
  field :version_aliases, 2, repeated: true, type: :string, json_name: "versionAliases"
  field :version_description, 3, type: :string, json_name: "versionDescription"

  field :vertex_model_source_info, 4,
    type: Google.Cloud.Datacatalog.V1.VertexModelSourceInfo,
    json_name: "vertexModelSourceInfo"

  field :container_image_uri, 5, type: :string, json_name: "containerImageUri"
end

defmodule Google.Cloud.Datacatalog.V1.VertexDatasetSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :data_item_count, 1, type: :int64, json_name: "dataItemCount"

  field :data_type, 2,
    type: Google.Cloud.Datacatalog.V1.VertexDatasetSpec.DataType,
    json_name: "dataType",
    enum: true
end

defmodule Google.Cloud.Datacatalog.V1.ModelSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :system_spec, 0

  field :vertex_model_spec, 1,
    type: Google.Cloud.Datacatalog.V1.VertexModelSpec,
    json_name: "vertexModelSpec",
    oneof: 0
end

defmodule Google.Cloud.Datacatalog.V1.FeatureOnlineStoreSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :storage_type, 1,
    type: Google.Cloud.Datacatalog.V1.FeatureOnlineStoreSpec.StorageType,
    json_name: "storageType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.BusinessContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entry_overview, 1,
    type: Google.Cloud.Datacatalog.V1.EntryOverview,
    json_name: "entryOverview"

  field :contacts, 2, type: Google.Cloud.Datacatalog.V1.Contacts
end

defmodule Google.Cloud.Datacatalog.V1.EntryOverview do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :overview, 1, type: :string
end

defmodule Google.Cloud.Datacatalog.V1.Contacts.Person do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :designation, 1, type: :string
  field :email, 2, type: :string
end

defmodule Google.Cloud.Datacatalog.V1.Contacts do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :people, 1, repeated: true, type: Google.Cloud.Datacatalog.V1.Contacts.Person
end

defmodule Google.Cloud.Datacatalog.V1.EntryGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string

  field :data_catalog_timestamps, 4,
    type: Google.Cloud.Datacatalog.V1.SystemTimestamps,
    json_name: "dataCatalogTimestamps",
    deprecated: false

  field :transferred_to_dataplex, 9,
    type: :bool,
    json_name: "transferredToDataplex",
    deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.CreateTagTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :tag_template_id, 3, type: :string, json_name: "tagTemplateId", deprecated: false

  field :tag_template, 2,
    type: Google.Cloud.Datacatalog.V1.TagTemplate,
    json_name: "tagTemplate",
    deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.GetTagTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.UpdateTagTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tag_template, 1,
    type: Google.Cloud.Datacatalog.V1.TagTemplate,
    json_name: "tagTemplate",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Datacatalog.V1.DeleteTagTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool, deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.CreateTagRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :tag, 2, type: Google.Cloud.Datacatalog.V1.Tag, deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.UpdateTagRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tag, 1, type: Google.Cloud.Datacatalog.V1.Tag, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Datacatalog.V1.DeleteTagRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.CreateTagTemplateFieldRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :tag_template_field_id, 2,
    type: :string,
    json_name: "tagTemplateFieldId",
    deprecated: false

  field :tag_template_field, 3,
    type: Google.Cloud.Datacatalog.V1.TagTemplateField,
    json_name: "tagTemplateField",
    deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.UpdateTagTemplateFieldRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :tag_template_field, 2,
    type: Google.Cloud.Datacatalog.V1.TagTemplateField,
    json_name: "tagTemplateField",
    deprecated: false

  field :update_mask, 3,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.RenameTagTemplateFieldRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :new_tag_template_field_id, 2,
    type: :string,
    json_name: "newTagTemplateFieldId",
    deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.RenameTagTemplateFieldEnumValueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :new_enum_value_display_name, 2,
    type: :string,
    json_name: "newEnumValueDisplayName",
    deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.DeleteTagTemplateFieldRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool, deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.ListTagsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Datacatalog.V1.ListTagsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tags, 1, repeated: true, type: Google.Cloud.Datacatalog.V1.Tag
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Datacatalog.V1.ReconcileTagsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :tag_template, 2, type: :string, json_name: "tagTemplate", deprecated: false
  field :force_delete_missing, 3, type: :bool, json_name: "forceDeleteMissing"
  field :tags, 4, repeated: true, type: Google.Cloud.Datacatalog.V1.Tag
end

defmodule Google.Cloud.Datacatalog.V1.ReconcileTagsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :created_tags_count, 1, type: :int64, json_name: "createdTagsCount"
  field :updated_tags_count, 2, type: :int64, json_name: "updatedTagsCount"
  field :deleted_tags_count, 3, type: :int64, json_name: "deletedTagsCount"
end

defmodule Google.Cloud.Datacatalog.V1.ReconcileTagsMetadata.ErrorsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Rpc.Status
end

defmodule Google.Cloud.Datacatalog.V1.ReconcileTagsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Datacatalog.V1.ReconcileTagsMetadata.ReconciliationState,
    enum: true

  field :errors, 2,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1.ReconcileTagsMetadata.ErrorsEntry,
    map: true
end

defmodule Google.Cloud.Datacatalog.V1.ListEntriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :read_mask, 4, type: Google.Protobuf.FieldMask, json_name: "readMask"
end

defmodule Google.Cloud.Datacatalog.V1.ListEntriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entries, 1, repeated: true, type: Google.Cloud.Datacatalog.V1.Entry
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Datacatalog.V1.StarEntryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.StarEntryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Datacatalog.V1.UnstarEntryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.UnstarEntryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Datacatalog.V1.ImportEntriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source, 0

  field :parent, 1, type: :string, deprecated: false
  field :gcs_bucket_path, 2, type: :string, json_name: "gcsBucketPath", oneof: 0
  field :job_id, 3, type: :string, json_name: "jobId", deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.ImportEntriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :upserted_entries_count, 5,
    proto3_optional: true,
    type: :int64,
    json_name: "upsertedEntriesCount"

  field :deleted_entries_count, 6,
    proto3_optional: true,
    type: :int64,
    json_name: "deletedEntriesCount"
end

defmodule Google.Cloud.Datacatalog.V1.ImportEntriesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :state, 1, type: Google.Cloud.Datacatalog.V1.ImportEntriesMetadata.ImportState, enum: true
  field :errors, 2, repeated: true, type: Google.Rpc.Status
end

defmodule Google.Cloud.Datacatalog.V1.ModifyEntryOverviewRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :entry_overview, 2,
    type: Google.Cloud.Datacatalog.V1.EntryOverview,
    json_name: "entryOverview",
    deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.ModifyEntryContactsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :contacts, 2, type: Google.Cloud.Datacatalog.V1.Contacts, deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.SetConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :configuration, 0

  field :name, 1, type: :string, deprecated: false

  field :tag_template_migration, 2,
    type: Google.Cloud.Datacatalog.V1.TagTemplateMigration,
    json_name: "tagTemplateMigration",
    enum: true,
    oneof: 0

  field :catalog_ui_experience, 3,
    type: Google.Cloud.Datacatalog.V1.CatalogUIExperience,
    json_name: "catalogUiExperience",
    enum: true,
    oneof: 0
end

defmodule Google.Cloud.Datacatalog.V1.RetrieveConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.RetrieveEffectiveConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.OrganizationConfig.ConfigEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Datacatalog.V1.MigrationConfig
end

defmodule Google.Cloud.Datacatalog.V1.OrganizationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :config, 1,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1.OrganizationConfig.ConfigEntry,
    map: true
end

defmodule Google.Cloud.Datacatalog.V1.MigrationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tag_template_migration, 1,
    type: Google.Cloud.Datacatalog.V1.TagTemplateMigration,
    json_name: "tagTemplateMigration",
    enum: true

  field :catalog_ui_experience, 2,
    type: Google.Cloud.Datacatalog.V1.CatalogUIExperience,
    json_name: "catalogUiExperience",
    enum: true

  field :template_migration_enabled_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "templateMigrationEnabledTime"
end

defmodule Google.Cloud.Datacatalog.V1.DataCatalog.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.datacatalog.v1.DataCatalog",
    protoc_gen_elixir_version: "0.14.1"

  rpc :SearchCatalog,
      Google.Cloud.Datacatalog.V1.SearchCatalogRequest,
      Google.Cloud.Datacatalog.V1.SearchCatalogResponse

  rpc :CreateEntryGroup,
      Google.Cloud.Datacatalog.V1.CreateEntryGroupRequest,
      Google.Cloud.Datacatalog.V1.EntryGroup

  rpc :GetEntryGroup,
      Google.Cloud.Datacatalog.V1.GetEntryGroupRequest,
      Google.Cloud.Datacatalog.V1.EntryGroup

  rpc :UpdateEntryGroup,
      Google.Cloud.Datacatalog.V1.UpdateEntryGroupRequest,
      Google.Cloud.Datacatalog.V1.EntryGroup

  rpc :DeleteEntryGroup,
      Google.Cloud.Datacatalog.V1.DeleteEntryGroupRequest,
      Google.Protobuf.Empty

  rpc :ListEntryGroups,
      Google.Cloud.Datacatalog.V1.ListEntryGroupsRequest,
      Google.Cloud.Datacatalog.V1.ListEntryGroupsResponse

  rpc :CreateEntry,
      Google.Cloud.Datacatalog.V1.CreateEntryRequest,
      Google.Cloud.Datacatalog.V1.Entry

  rpc :UpdateEntry,
      Google.Cloud.Datacatalog.V1.UpdateEntryRequest,
      Google.Cloud.Datacatalog.V1.Entry

  rpc :DeleteEntry, Google.Cloud.Datacatalog.V1.DeleteEntryRequest, Google.Protobuf.Empty

  rpc :GetEntry, Google.Cloud.Datacatalog.V1.GetEntryRequest, Google.Cloud.Datacatalog.V1.Entry

  rpc :LookupEntry,
      Google.Cloud.Datacatalog.V1.LookupEntryRequest,
      Google.Cloud.Datacatalog.V1.Entry

  rpc :ListEntries,
      Google.Cloud.Datacatalog.V1.ListEntriesRequest,
      Google.Cloud.Datacatalog.V1.ListEntriesResponse

  rpc :ModifyEntryOverview,
      Google.Cloud.Datacatalog.V1.ModifyEntryOverviewRequest,
      Google.Cloud.Datacatalog.V1.EntryOverview

  rpc :ModifyEntryContacts,
      Google.Cloud.Datacatalog.V1.ModifyEntryContactsRequest,
      Google.Cloud.Datacatalog.V1.Contacts

  rpc :CreateTagTemplate,
      Google.Cloud.Datacatalog.V1.CreateTagTemplateRequest,
      Google.Cloud.Datacatalog.V1.TagTemplate

  rpc :GetTagTemplate,
      Google.Cloud.Datacatalog.V1.GetTagTemplateRequest,
      Google.Cloud.Datacatalog.V1.TagTemplate

  rpc :UpdateTagTemplate,
      Google.Cloud.Datacatalog.V1.UpdateTagTemplateRequest,
      Google.Cloud.Datacatalog.V1.TagTemplate

  rpc :DeleteTagTemplate,
      Google.Cloud.Datacatalog.V1.DeleteTagTemplateRequest,
      Google.Protobuf.Empty

  rpc :CreateTagTemplateField,
      Google.Cloud.Datacatalog.V1.CreateTagTemplateFieldRequest,
      Google.Cloud.Datacatalog.V1.TagTemplateField

  rpc :UpdateTagTemplateField,
      Google.Cloud.Datacatalog.V1.UpdateTagTemplateFieldRequest,
      Google.Cloud.Datacatalog.V1.TagTemplateField

  rpc :RenameTagTemplateField,
      Google.Cloud.Datacatalog.V1.RenameTagTemplateFieldRequest,
      Google.Cloud.Datacatalog.V1.TagTemplateField

  rpc :RenameTagTemplateFieldEnumValue,
      Google.Cloud.Datacatalog.V1.RenameTagTemplateFieldEnumValueRequest,
      Google.Cloud.Datacatalog.V1.TagTemplateField

  rpc :DeleteTagTemplateField,
      Google.Cloud.Datacatalog.V1.DeleteTagTemplateFieldRequest,
      Google.Protobuf.Empty

  rpc :CreateTag, Google.Cloud.Datacatalog.V1.CreateTagRequest, Google.Cloud.Datacatalog.V1.Tag

  rpc :UpdateTag, Google.Cloud.Datacatalog.V1.UpdateTagRequest, Google.Cloud.Datacatalog.V1.Tag

  rpc :DeleteTag, Google.Cloud.Datacatalog.V1.DeleteTagRequest, Google.Protobuf.Empty

  rpc :ListTags,
      Google.Cloud.Datacatalog.V1.ListTagsRequest,
      Google.Cloud.Datacatalog.V1.ListTagsResponse

  rpc :ReconcileTags,
      Google.Cloud.Datacatalog.V1.ReconcileTagsRequest,
      Google.Longrunning.Operation

  rpc :StarEntry,
      Google.Cloud.Datacatalog.V1.StarEntryRequest,
      Google.Cloud.Datacatalog.V1.StarEntryResponse

  rpc :UnstarEntry,
      Google.Cloud.Datacatalog.V1.UnstarEntryRequest,
      Google.Cloud.Datacatalog.V1.UnstarEntryResponse

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse

  rpc :ImportEntries,
      Google.Cloud.Datacatalog.V1.ImportEntriesRequest,
      Google.Longrunning.Operation

  rpc :SetConfig,
      Google.Cloud.Datacatalog.V1.SetConfigRequest,
      Google.Cloud.Datacatalog.V1.MigrationConfig

  rpc :RetrieveConfig,
      Google.Cloud.Datacatalog.V1.RetrieveConfigRequest,
      Google.Cloud.Datacatalog.V1.OrganizationConfig

  rpc :RetrieveEffectiveConfig,
      Google.Cloud.Datacatalog.V1.RetrieveEffectiveConfigRequest,
      Google.Cloud.Datacatalog.V1.MigrationConfig
end

defmodule Google.Cloud.Datacatalog.V1.DataCatalog.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Datacatalog.V1.DataCatalog.Service
end
