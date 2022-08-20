defmodule Google.Cloud.Asset.V1.ContentType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :CONTENT_TYPE_UNSPECIFIED, 0
  field :RESOURCE, 1
  field :IAM_POLICY, 2
  field :ORG_POLICY, 4
  field :ACCESS_POLICY, 5
  field :OS_INVENTORY, 6
  field :RELATIONSHIP, 7
end

defmodule Google.Cloud.Asset.V1.PartitionSpec.PartitionKey do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :PARTITION_KEY_UNSPECIFIED, 0
  field :READ_TIME, 1
  field :REQUEST_TIME, 2
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisOutputConfig.BigQueryDestination.PartitionKey do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :PARTITION_KEY_UNSPECIFIED, 0
  field :REQUEST_TIME, 1
end

defmodule Google.Cloud.Asset.V1.AnalyzeMoveRequest.AnalysisView do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ANALYSIS_VIEW_UNSPECIFIED, 0
  field :FULL, 1
  field :BASIC, 2
end

defmodule Google.Cloud.Asset.V1.AnalyzeIamPolicyLongrunningMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end

defmodule Google.Cloud.Asset.V1.ExportAssetsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :read_time, 2, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :asset_types, 3, repeated: true, type: :string, json_name: "assetTypes"

  field :content_type, 4,
    type: Google.Cloud.Asset.V1.ContentType,
    json_name: "contentType",
    enum: true

  field :output_config, 5,
    type: Google.Cloud.Asset.V1.OutputConfig,
    json_name: "outputConfig",
    deprecated: false

  field :relationship_types, 6, repeated: true, type: :string, json_name: "relationshipTypes"
end

defmodule Google.Cloud.Asset.V1.ExportAssetsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :read_time, 1, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :output_config, 2, type: Google.Cloud.Asset.V1.OutputConfig, json_name: "outputConfig"
  field :output_result, 3, type: Google.Cloud.Asset.V1.OutputResult, json_name: "outputResult"
end

defmodule Google.Cloud.Asset.V1.ListAssetsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :read_time, 2, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :asset_types, 3, repeated: true, type: :string, json_name: "assetTypes"

  field :content_type, 4,
    type: Google.Cloud.Asset.V1.ContentType,
    json_name: "contentType",
    enum: true

  field :page_size, 5, type: :int32, json_name: "pageSize"
  field :page_token, 6, type: :string, json_name: "pageToken"
  field :relationship_types, 7, repeated: true, type: :string, json_name: "relationshipTypes"
end

defmodule Google.Cloud.Asset.V1.ListAssetsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :read_time, 1, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :assets, 2, repeated: true, type: Google.Cloud.Asset.V1.Asset
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Asset.V1.BatchGetAssetsHistoryRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :asset_names, 2, repeated: true, type: :string, json_name: "assetNames"

  field :content_type, 3,
    type: Google.Cloud.Asset.V1.ContentType,
    json_name: "contentType",
    enum: true,
    deprecated: false

  field :read_time_window, 4,
    type: Google.Cloud.Asset.V1.TimeWindow,
    json_name: "readTimeWindow",
    deprecated: false

  field :relationship_types, 5,
    repeated: true,
    type: :string,
    json_name: "relationshipTypes",
    deprecated: false
end

defmodule Google.Cloud.Asset.V1.BatchGetAssetsHistoryResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :assets, 1, repeated: true, type: Google.Cloud.Asset.V1.TemporalAsset
end

defmodule Google.Cloud.Asset.V1.CreateFeedRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :feed_id, 2, type: :string, json_name: "feedId", deprecated: false
  field :feed, 3, type: Google.Cloud.Asset.V1.Feed, deprecated: false
end

defmodule Google.Cloud.Asset.V1.GetFeedRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Asset.V1.ListFeedsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Asset.V1.ListFeedsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :feeds, 1, repeated: true, type: Google.Cloud.Asset.V1.Feed
end

defmodule Google.Cloud.Asset.V1.UpdateFeedRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :feed, 1, type: Google.Cloud.Asset.V1.Feed, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Asset.V1.DeleteFeedRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Asset.V1.OutputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Asset.V1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0

  field :bigquery_destination, 2,
    type: Google.Cloud.Asset.V1.BigQueryDestination,
    json_name: "bigqueryDestination",
    oneof: 0
end

defmodule Google.Cloud.Asset.V1.OutputResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :result, 0

  field :gcs_result, 1,
    type: Google.Cloud.Asset.V1.GcsOutputResult,
    json_name: "gcsResult",
    oneof: 0
end

defmodule Google.Cloud.Asset.V1.GcsOutputResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :uris, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Asset.V1.GcsDestination do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :object_uri, 0

  field :uri, 1, type: :string, oneof: 0
  field :uri_prefix, 2, type: :string, json_name: "uriPrefix", oneof: 0
end

defmodule Google.Cloud.Asset.V1.BigQueryDestination do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dataset, 1, type: :string, deprecated: false
  field :table, 2, type: :string, deprecated: false
  field :force, 3, type: :bool
  field :partition_spec, 4, type: Google.Cloud.Asset.V1.PartitionSpec, json_name: "partitionSpec"
  field :separate_tables_per_asset_type, 5, type: :bool, json_name: "separateTablesPerAssetType"
end

defmodule Google.Cloud.Asset.V1.PartitionSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :partition_key, 1,
    type: Google.Cloud.Asset.V1.PartitionSpec.PartitionKey,
    json_name: "partitionKey",
    enum: true
end

defmodule Google.Cloud.Asset.V1.PubsubDestination do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :topic, 1, type: :string
end

defmodule Google.Cloud.Asset.V1.FeedOutputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :destination, 0

  field :pubsub_destination, 1,
    type: Google.Cloud.Asset.V1.PubsubDestination,
    json_name: "pubsubDestination",
    oneof: 0
end

defmodule Google.Cloud.Asset.V1.Feed do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :asset_names, 2, repeated: true, type: :string, json_name: "assetNames"
  field :asset_types, 3, repeated: true, type: :string, json_name: "assetTypes"

  field :content_type, 4,
    type: Google.Cloud.Asset.V1.ContentType,
    json_name: "contentType",
    enum: true

  field :feed_output_config, 5,
    type: Google.Cloud.Asset.V1.FeedOutputConfig,
    json_name: "feedOutputConfig",
    deprecated: false

  field :condition, 6, type: Google.Type.Expr
  field :relationship_types, 7, repeated: true, type: :string, json_name: "relationshipTypes"
end

defmodule Google.Cloud.Asset.V1.SearchAllResourcesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :scope, 1, type: :string, deprecated: false
  field :query, 2, type: :string, deprecated: false
  field :asset_types, 3, repeated: true, type: :string, json_name: "assetTypes", deprecated: false
  field :page_size, 4, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 5, type: :string, json_name: "pageToken", deprecated: false
  field :order_by, 6, type: :string, json_name: "orderBy", deprecated: false
  field :read_mask, 8, type: Google.Protobuf.FieldMask, json_name: "readMask", deprecated: false
end

defmodule Google.Cloud.Asset.V1.SearchAllResourcesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :results, 1, repeated: true, type: Google.Cloud.Asset.V1.ResourceSearchResult
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Asset.V1.SearchAllIamPoliciesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :scope, 1, type: :string, deprecated: false
  field :query, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
  field :asset_types, 5, repeated: true, type: :string, json_name: "assetTypes", deprecated: false
  field :order_by, 7, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Asset.V1.SearchAllIamPoliciesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :results, 1, repeated: true, type: Google.Cloud.Asset.V1.IamPolicySearchResult
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisQuery.ResourceSelector do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :full_resource_name, 1, type: :string, json_name: "fullResourceName", deprecated: false
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisQuery.IdentitySelector do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :identity, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisQuery.AccessSelector do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :roles, 1, repeated: true, type: :string, deprecated: false
  field :permissions, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisQuery.Options do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :expand_groups, 1, type: :bool, json_name: "expandGroups", deprecated: false
  field :expand_roles, 2, type: :bool, json_name: "expandRoles", deprecated: false
  field :expand_resources, 3, type: :bool, json_name: "expandResources", deprecated: false

  field :output_resource_edges, 4,
    type: :bool,
    json_name: "outputResourceEdges",
    deprecated: false

  field :output_group_edges, 5, type: :bool, json_name: "outputGroupEdges", deprecated: false

  field :analyze_service_account_impersonation, 6,
    type: :bool,
    json_name: "analyzeServiceAccountImpersonation",
    deprecated: false
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisQuery.ConditionContext do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :TimeContext, 0

  field :access_time, 1, type: Google.Protobuf.Timestamp, json_name: "accessTime", oneof: 0
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisQuery do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :scope, 1, type: :string, deprecated: false

  field :resource_selector, 2,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisQuery.ResourceSelector,
    json_name: "resourceSelector",
    deprecated: false

  field :identity_selector, 3,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisQuery.IdentitySelector,
    json_name: "identitySelector",
    deprecated: false

  field :access_selector, 4,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisQuery.AccessSelector,
    json_name: "accessSelector",
    deprecated: false

  field :options, 5, type: Google.Cloud.Asset.V1.IamPolicyAnalysisQuery.Options, deprecated: false

  field :condition_context, 6,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisQuery.ConditionContext,
    json_name: "conditionContext",
    deprecated: false
end

defmodule Google.Cloud.Asset.V1.AnalyzeIamPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :analysis_query, 1,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisQuery,
    json_name: "analysisQuery",
    deprecated: false

  field :saved_analysis_query, 3,
    type: :string,
    json_name: "savedAnalysisQuery",
    deprecated: false

  field :execution_timeout, 2,
    type: Google.Protobuf.Duration,
    json_name: "executionTimeout",
    deprecated: false
end

defmodule Google.Cloud.Asset.V1.AnalyzeIamPolicyResponse.IamPolicyAnalysis do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :analysis_query, 1,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisQuery,
    json_name: "analysisQuery"

  field :analysis_results, 2,
    repeated: true,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisResult,
    json_name: "analysisResults"

  field :fully_explored, 3, type: :bool, json_name: "fullyExplored"

  field :non_critical_errors, 5,
    repeated: true,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisState,
    json_name: "nonCriticalErrors"
end

defmodule Google.Cloud.Asset.V1.AnalyzeIamPolicyResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :main_analysis, 1,
    type: Google.Cloud.Asset.V1.AnalyzeIamPolicyResponse.IamPolicyAnalysis,
    json_name: "mainAnalysis"

  field :service_account_impersonation_analysis, 2,
    repeated: true,
    type: Google.Cloud.Asset.V1.AnalyzeIamPolicyResponse.IamPolicyAnalysis,
    json_name: "serviceAccountImpersonationAnalysis"

  field :fully_explored, 3, type: :bool, json_name: "fullyExplored"
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisOutputConfig.GcsDestination do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisOutputConfig.BigQueryDestination do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dataset, 1, type: :string, deprecated: false
  field :table_prefix, 2, type: :string, json_name: "tablePrefix", deprecated: false

  field :partition_key, 3,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisOutputConfig.BigQueryDestination.PartitionKey,
    json_name: "partitionKey",
    enum: true

  field :write_disposition, 4, type: :string, json_name: "writeDisposition", deprecated: false
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisOutputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisOutputConfig.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0

  field :bigquery_destination, 2,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisOutputConfig.BigQueryDestination,
    json_name: "bigqueryDestination",
    oneof: 0
end

defmodule Google.Cloud.Asset.V1.AnalyzeIamPolicyLongrunningRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :analysis_query, 1,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisQuery,
    json_name: "analysisQuery",
    deprecated: false

  field :saved_analysis_query, 3,
    type: :string,
    json_name: "savedAnalysisQuery",
    deprecated: false

  field :output_config, 2,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisOutputConfig,
    json_name: "outputConfig",
    deprecated: false
end

defmodule Google.Cloud.Asset.V1.AnalyzeIamPolicyLongrunningResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Cloud.Asset.V1.SavedQuery.QueryContent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :query_content, 0

  field :iam_policy_analysis_query, 1,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisQuery,
    json_name: "iamPolicyAnalysisQuery",
    oneof: 0
end

defmodule Google.Cloud.Asset.V1.SavedQuery.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Asset.V1.SavedQuery do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :description, 2, type: :string

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :creator, 4, type: :string, deprecated: false

  field :last_update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "lastUpdateTime",
    deprecated: false

  field :last_updater, 6, type: :string, json_name: "lastUpdater", deprecated: false
  field :labels, 7, repeated: true, type: Google.Cloud.Asset.V1.SavedQuery.LabelsEntry, map: true
  field :content, 8, type: Google.Cloud.Asset.V1.SavedQuery.QueryContent
end

defmodule Google.Cloud.Asset.V1.CreateSavedQueryRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :saved_query, 2,
    type: Google.Cloud.Asset.V1.SavedQuery,
    json_name: "savedQuery",
    deprecated: false

  field :saved_query_id, 3, type: :string, json_name: "savedQueryId", deprecated: false
end

defmodule Google.Cloud.Asset.V1.GetSavedQueryRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Asset.V1.ListSavedQueriesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Asset.V1.ListSavedQueriesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :saved_queries, 1,
    repeated: true,
    type: Google.Cloud.Asset.V1.SavedQuery,
    json_name: "savedQueries"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Asset.V1.UpdateSavedQueryRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :saved_query, 1,
    type: Google.Cloud.Asset.V1.SavedQuery,
    json_name: "savedQuery",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Asset.V1.DeleteSavedQueryRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Asset.V1.AnalyzeMoveRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource, 1, type: :string, deprecated: false
  field :destination_parent, 2, type: :string, json_name: "destinationParent", deprecated: false
  field :view, 3, type: Google.Cloud.Asset.V1.AnalyzeMoveRequest.AnalysisView, enum: true
end

defmodule Google.Cloud.Asset.V1.AnalyzeMoveResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :move_analysis, 1,
    repeated: true,
    type: Google.Cloud.Asset.V1.MoveAnalysis,
    json_name: "moveAnalysis"
end

defmodule Google.Cloud.Asset.V1.MoveAnalysis do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :result, 0

  field :display_name, 1, type: :string, json_name: "displayName"
  field :analysis, 2, type: Google.Cloud.Asset.V1.MoveAnalysisResult, oneof: 0
  field :error, 3, type: Google.Rpc.Status, oneof: 0
end

defmodule Google.Cloud.Asset.V1.MoveAnalysisResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :blockers, 1, repeated: true, type: Google.Cloud.Asset.V1.MoveImpact
  field :warnings, 2, repeated: true, type: Google.Cloud.Asset.V1.MoveImpact
end

defmodule Google.Cloud.Asset.V1.MoveImpact do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :detail, 1, type: :string
end

defmodule Google.Cloud.Asset.V1.QueryAssetsOutputConfig.BigQueryDestination do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dataset, 1, type: :string, deprecated: false
  field :table, 2, type: :string, deprecated: false
  field :write_disposition, 3, type: :string, json_name: "writeDisposition"
end

defmodule Google.Cloud.Asset.V1.QueryAssetsOutputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :bigquery_destination, 1,
    type: Google.Cloud.Asset.V1.QueryAssetsOutputConfig.BigQueryDestination,
    json_name: "bigqueryDestination"
end

defmodule Google.Cloud.Asset.V1.QueryAssetsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :query, 0

  oneof :time, 1

  field :parent, 1, type: :string, deprecated: false
  field :statement, 2, type: :string, oneof: 0, deprecated: false
  field :job_reference, 3, type: :string, json_name: "jobReference", oneof: 0, deprecated: false
  field :page_size, 4, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 5, type: :string, json_name: "pageToken", deprecated: false
  field :timeout, 6, type: Google.Protobuf.Duration, deprecated: false

  field :read_time_window, 7,
    type: Google.Cloud.Asset.V1.TimeWindow,
    json_name: "readTimeWindow",
    oneof: 1,
    deprecated: false

  field :read_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "readTime",
    oneof: 1,
    deprecated: false

  field :output_config, 9,
    type: Google.Cloud.Asset.V1.QueryAssetsOutputConfig,
    json_name: "outputConfig",
    deprecated: false
end

defmodule Google.Cloud.Asset.V1.QueryAssetsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :response, 0

  field :job_reference, 1, type: :string, json_name: "jobReference"
  field :done, 2, type: :bool
  field :error, 3, type: Google.Rpc.Status, oneof: 0

  field :query_result, 4,
    type: Google.Cloud.Asset.V1.QueryResult,
    json_name: "queryResult",
    oneof: 0

  field :output_config, 5,
    type: Google.Cloud.Asset.V1.QueryAssetsOutputConfig,
    json_name: "outputConfig",
    oneof: 0
end

defmodule Google.Cloud.Asset.V1.QueryResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :rows, 1, repeated: true, type: Google.Protobuf.Struct
  field :schema, 2, type: Google.Cloud.Asset.V1.TableSchema
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
  field :total_rows, 4, type: :int64, json_name: "totalRows"
end

defmodule Google.Cloud.Asset.V1.TableSchema do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :fields, 1, repeated: true, type: Google.Cloud.Asset.V1.TableFieldSchema
end

defmodule Google.Cloud.Asset.V1.TableFieldSchema do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :field, 1, type: :string
  field :type, 2, type: :string
  field :mode, 3, type: :string
  field :fields, 4, repeated: true, type: Google.Cloud.Asset.V1.TableFieldSchema
end

defmodule Google.Cloud.Asset.V1.BatchGetEffectiveIamPoliciesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :scope, 1, type: :string, deprecated: false
  field :names, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Asset.V1.BatchGetEffectiveIamPoliciesResponse.EffectiveIamPolicy.PolicyInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :attached_resource, 1, type: :string, json_name: "attachedResource"
  field :policy, 2, type: Google.Iam.V1.Policy
end

defmodule Google.Cloud.Asset.V1.BatchGetEffectiveIamPoliciesResponse.EffectiveIamPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :full_resource_name, 1, type: :string, json_name: "fullResourceName"

  field :policies, 2,
    repeated: true,
    type: Google.Cloud.Asset.V1.BatchGetEffectiveIamPoliciesResponse.EffectiveIamPolicy.PolicyInfo
end

defmodule Google.Cloud.Asset.V1.BatchGetEffectiveIamPoliciesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :policy_results, 2,
    repeated: true,
    type: Google.Cloud.Asset.V1.BatchGetEffectiveIamPoliciesResponse.EffectiveIamPolicy,
    json_name: "policyResults"
end

defmodule Google.Cloud.Asset.V1.AssetService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.asset.v1.AssetService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ExportAssets, Google.Cloud.Asset.V1.ExportAssetsRequest, Google.Longrunning.Operation

  rpc :ListAssets,
      Google.Cloud.Asset.V1.ListAssetsRequest,
      Google.Cloud.Asset.V1.ListAssetsResponse

  rpc :BatchGetAssetsHistory,
      Google.Cloud.Asset.V1.BatchGetAssetsHistoryRequest,
      Google.Cloud.Asset.V1.BatchGetAssetsHistoryResponse

  rpc :CreateFeed, Google.Cloud.Asset.V1.CreateFeedRequest, Google.Cloud.Asset.V1.Feed

  rpc :GetFeed, Google.Cloud.Asset.V1.GetFeedRequest, Google.Cloud.Asset.V1.Feed

  rpc :ListFeeds, Google.Cloud.Asset.V1.ListFeedsRequest, Google.Cloud.Asset.V1.ListFeedsResponse

  rpc :UpdateFeed, Google.Cloud.Asset.V1.UpdateFeedRequest, Google.Cloud.Asset.V1.Feed

  rpc :DeleteFeed, Google.Cloud.Asset.V1.DeleteFeedRequest, Google.Protobuf.Empty

  rpc :SearchAllResources,
      Google.Cloud.Asset.V1.SearchAllResourcesRequest,
      Google.Cloud.Asset.V1.SearchAllResourcesResponse

  rpc :SearchAllIamPolicies,
      Google.Cloud.Asset.V1.SearchAllIamPoliciesRequest,
      Google.Cloud.Asset.V1.SearchAllIamPoliciesResponse

  rpc :AnalyzeIamPolicy,
      Google.Cloud.Asset.V1.AnalyzeIamPolicyRequest,
      Google.Cloud.Asset.V1.AnalyzeIamPolicyResponse

  rpc :AnalyzeIamPolicyLongrunning,
      Google.Cloud.Asset.V1.AnalyzeIamPolicyLongrunningRequest,
      Google.Longrunning.Operation

  rpc :AnalyzeMove,
      Google.Cloud.Asset.V1.AnalyzeMoveRequest,
      Google.Cloud.Asset.V1.AnalyzeMoveResponse

  rpc :QueryAssets,
      Google.Cloud.Asset.V1.QueryAssetsRequest,
      Google.Cloud.Asset.V1.QueryAssetsResponse

  rpc :CreateSavedQuery,
      Google.Cloud.Asset.V1.CreateSavedQueryRequest,
      Google.Cloud.Asset.V1.SavedQuery

  rpc :GetSavedQuery, Google.Cloud.Asset.V1.GetSavedQueryRequest, Google.Cloud.Asset.V1.SavedQuery

  rpc :ListSavedQueries,
      Google.Cloud.Asset.V1.ListSavedQueriesRequest,
      Google.Cloud.Asset.V1.ListSavedQueriesResponse

  rpc :UpdateSavedQuery,
      Google.Cloud.Asset.V1.UpdateSavedQueryRequest,
      Google.Cloud.Asset.V1.SavedQuery

  rpc :DeleteSavedQuery, Google.Cloud.Asset.V1.DeleteSavedQueryRequest, Google.Protobuf.Empty

  rpc :BatchGetEffectiveIamPolicies,
      Google.Cloud.Asset.V1.BatchGetEffectiveIamPoliciesRequest,
      Google.Cloud.Asset.V1.BatchGetEffectiveIamPoliciesResponse
end

defmodule Google.Cloud.Asset.V1.AssetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Asset.V1.AssetService.Service
end