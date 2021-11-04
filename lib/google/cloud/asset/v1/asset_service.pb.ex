defmodule Google.Cloud.Asset.V1.ContentType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CONTENT_TYPE_UNSPECIFIED
          | :RESOURCE
          | :IAM_POLICY
          | :ORG_POLICY
          | :ACCESS_POLICY
          | :OS_INVENTORY
          | :RELATIONSHIP

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
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :PARTITION_KEY_UNSPECIFIED | :READ_TIME | :REQUEST_TIME

  field :PARTITION_KEY_UNSPECIFIED, 0
  field :READ_TIME, 1
  field :REQUEST_TIME, 2
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisOutputConfig.BigQueryDestination.PartitionKey do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :PARTITION_KEY_UNSPECIFIED | :REQUEST_TIME

  field :PARTITION_KEY_UNSPECIFIED, 0
  field :REQUEST_TIME, 1
end

defmodule Google.Cloud.Asset.V1.AnalyzeMoveRequest.AnalysisView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ANALYSIS_VIEW_UNSPECIFIED | :FULL | :BASIC

  field :ANALYSIS_VIEW_UNSPECIFIED, 0
  field :FULL, 1
  field :BASIC, 2
end

defmodule Google.Cloud.Asset.V1.AnalyzeIamPolicyLongrunningMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:create_time]

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.ExportAssetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          read_time: Google.Protobuf.Timestamp.t() | nil,
          asset_types: [String.t()],
          content_type: Google.Cloud.Asset.V1.ContentType.t(),
          output_config: Google.Cloud.Asset.V1.OutputConfig.t() | nil,
          relationship_types: [String.t()]
        }

  defstruct [
    :parent,
    :read_time,
    :asset_types,
    :content_type,
    :output_config,
    :relationship_types
  ]

  field :parent, 1, type: :string
  field :read_time, 2, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :asset_types, 3, repeated: true, type: :string, json_name: "assetTypes"

  field :content_type, 4,
    type: Google.Cloud.Asset.V1.ContentType,
    enum: true,
    json_name: "contentType"

  field :output_config, 5, type: Google.Cloud.Asset.V1.OutputConfig, json_name: "outputConfig"
  field :relationship_types, 6, repeated: true, type: :string, json_name: "relationshipTypes"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.ExportAssetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          read_time: Google.Protobuf.Timestamp.t() | nil,
          output_config: Google.Cloud.Asset.V1.OutputConfig.t() | nil,
          output_result: Google.Cloud.Asset.V1.OutputResult.t() | nil
        }

  defstruct [:read_time, :output_config, :output_result]

  field :read_time, 1, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :output_config, 2, type: Google.Cloud.Asset.V1.OutputConfig, json_name: "outputConfig"
  field :output_result, 3, type: Google.Cloud.Asset.V1.OutputResult, json_name: "outputResult"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.ListAssetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          read_time: Google.Protobuf.Timestamp.t() | nil,
          asset_types: [String.t()],
          content_type: Google.Cloud.Asset.V1.ContentType.t(),
          page_size: integer,
          page_token: String.t(),
          relationship_types: [String.t()]
        }

  defstruct [
    :parent,
    :read_time,
    :asset_types,
    :content_type,
    :page_size,
    :page_token,
    :relationship_types
  ]

  field :parent, 1, type: :string
  field :read_time, 2, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :asset_types, 3, repeated: true, type: :string, json_name: "assetTypes"

  field :content_type, 4,
    type: Google.Cloud.Asset.V1.ContentType,
    enum: true,
    json_name: "contentType"

  field :page_size, 5, type: :int32, json_name: "pageSize"
  field :page_token, 6, type: :string, json_name: "pageToken"
  field :relationship_types, 7, repeated: true, type: :string, json_name: "relationshipTypes"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.ListAssetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          read_time: Google.Protobuf.Timestamp.t() | nil,
          assets: [Google.Cloud.Asset.V1.Asset.t()],
          next_page_token: String.t()
        }

  defstruct [:read_time, :assets, :next_page_token]

  field :read_time, 1, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :assets, 2, repeated: true, type: Google.Cloud.Asset.V1.Asset
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.BatchGetAssetsHistoryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          asset_names: [String.t()],
          content_type: Google.Cloud.Asset.V1.ContentType.t(),
          read_time_window: Google.Cloud.Asset.V1.TimeWindow.t() | nil,
          relationship_types: [String.t()]
        }

  defstruct [:parent, :asset_names, :content_type, :read_time_window, :relationship_types]

  field :parent, 1, type: :string
  field :asset_names, 2, repeated: true, type: :string, json_name: "assetNames"

  field :content_type, 3,
    type: Google.Cloud.Asset.V1.ContentType,
    enum: true,
    json_name: "contentType"

  field :read_time_window, 4, type: Google.Cloud.Asset.V1.TimeWindow, json_name: "readTimeWindow"
  field :relationship_types, 5, repeated: true, type: :string, json_name: "relationshipTypes"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.BatchGetAssetsHistoryResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          assets: [Google.Cloud.Asset.V1.TemporalAsset.t()]
        }

  defstruct [:assets]

  field :assets, 1, repeated: true, type: Google.Cloud.Asset.V1.TemporalAsset

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.CreateFeedRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          feed_id: String.t(),
          feed: Google.Cloud.Asset.V1.Feed.t() | nil
        }

  defstruct [:parent, :feed_id, :feed]

  field :parent, 1, type: :string
  field :feed_id, 2, type: :string, json_name: "feedId"
  field :feed, 3, type: Google.Cloud.Asset.V1.Feed

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.GetFeedRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.ListFeedsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t()
        }

  defstruct [:parent]

  field :parent, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.ListFeedsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          feeds: [Google.Cloud.Asset.V1.Feed.t()]
        }

  defstruct [:feeds]

  field :feeds, 1, repeated: true, type: Google.Cloud.Asset.V1.Feed

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.UpdateFeedRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          feed: Google.Cloud.Asset.V1.Feed.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:feed, :update_mask]

  field :feed, 1, type: Google.Cloud.Asset.V1.Feed
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.DeleteFeedRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.OutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination:
            {:gcs_destination, Google.Cloud.Asset.V1.GcsDestination.t() | nil}
            | {:bigquery_destination, Google.Cloud.Asset.V1.BigQueryDestination.t() | nil}
        }

  defstruct [:destination]

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Asset.V1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0

  field :bigquery_destination, 2,
    type: Google.Cloud.Asset.V1.BigQueryDestination,
    json_name: "bigqueryDestination",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.OutputResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: {:gcs_result, Google.Cloud.Asset.V1.GcsOutputResult.t() | nil}
        }

  defstruct [:result]

  oneof :result, 0

  field :gcs_result, 1,
    type: Google.Cloud.Asset.V1.GcsOutputResult,
    json_name: "gcsResult",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.GcsOutputResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uris: [String.t()]
        }

  defstruct [:uris]

  field :uris, 1, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.GcsDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          object_uri: {:uri, String.t()} | {:uri_prefix, String.t()}
        }

  defstruct [:object_uri]

  oneof :object_uri, 0

  field :uri, 1, type: :string, oneof: 0
  field :uri_prefix, 2, type: :string, json_name: "uriPrefix", oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.BigQueryDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset: String.t(),
          table: String.t(),
          force: boolean,
          partition_spec: Google.Cloud.Asset.V1.PartitionSpec.t() | nil,
          separate_tables_per_asset_type: boolean
        }

  defstruct [:dataset, :table, :force, :partition_spec, :separate_tables_per_asset_type]

  field :dataset, 1, type: :string
  field :table, 2, type: :string
  field :force, 3, type: :bool
  field :partition_spec, 4, type: Google.Cloud.Asset.V1.PartitionSpec, json_name: "partitionSpec"
  field :separate_tables_per_asset_type, 5, type: :bool, json_name: "separateTablesPerAssetType"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.PartitionSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partition_key: Google.Cloud.Asset.V1.PartitionSpec.PartitionKey.t()
        }

  defstruct [:partition_key]

  field :partition_key, 1,
    type: Google.Cloud.Asset.V1.PartitionSpec.PartitionKey,
    enum: true,
    json_name: "partitionKey"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.PubsubDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t()
        }

  defstruct [:topic]

  field :topic, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.FeedOutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {:pubsub_destination, Google.Cloud.Asset.V1.PubsubDestination.t() | nil}
        }

  defstruct [:destination]

  oneof :destination, 0

  field :pubsub_destination, 1,
    type: Google.Cloud.Asset.V1.PubsubDestination,
    json_name: "pubsubDestination",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.Feed do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          asset_names: [String.t()],
          asset_types: [String.t()],
          content_type: Google.Cloud.Asset.V1.ContentType.t(),
          feed_output_config: Google.Cloud.Asset.V1.FeedOutputConfig.t() | nil,
          condition: Google.Type.Expr.t() | nil,
          relationship_types: [String.t()]
        }

  defstruct [
    :name,
    :asset_names,
    :asset_types,
    :content_type,
    :feed_output_config,
    :condition,
    :relationship_types
  ]

  field :name, 1, type: :string
  field :asset_names, 2, repeated: true, type: :string, json_name: "assetNames"
  field :asset_types, 3, repeated: true, type: :string, json_name: "assetTypes"

  field :content_type, 4,
    type: Google.Cloud.Asset.V1.ContentType,
    enum: true,
    json_name: "contentType"

  field :feed_output_config, 5,
    type: Google.Cloud.Asset.V1.FeedOutputConfig,
    json_name: "feedOutputConfig"

  field :condition, 6, type: Google.Type.Expr
  field :relationship_types, 7, repeated: true, type: :string, json_name: "relationshipTypes"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.SearchAllResourcesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: String.t(),
          query: String.t(),
          asset_types: [String.t()],
          page_size: integer,
          page_token: String.t(),
          order_by: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:scope, :query, :asset_types, :page_size, :page_token, :order_by, :read_mask]

  field :scope, 1, type: :string
  field :query, 2, type: :string
  field :asset_types, 3, repeated: true, type: :string, json_name: "assetTypes"
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 5, type: :string, json_name: "pageToken"
  field :order_by, 6, type: :string, json_name: "orderBy"
  field :read_mask, 8, type: Google.Protobuf.FieldMask, json_name: "readMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.SearchAllResourcesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Cloud.Asset.V1.ResourceSearchResult.t()],
          next_page_token: String.t()
        }

  defstruct [:results, :next_page_token]

  field :results, 1, repeated: true, type: Google.Cloud.Asset.V1.ResourceSearchResult
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.SearchAllIamPoliciesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: String.t(),
          query: String.t(),
          page_size: integer,
          page_token: String.t(),
          asset_types: [String.t()],
          order_by: String.t()
        }

  defstruct [:scope, :query, :page_size, :page_token, :asset_types, :order_by]

  field :scope, 1, type: :string
  field :query, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :asset_types, 5, repeated: true, type: :string, json_name: "assetTypes"
  field :order_by, 7, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.SearchAllIamPoliciesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Cloud.Asset.V1.IamPolicySearchResult.t()],
          next_page_token: String.t()
        }

  defstruct [:results, :next_page_token]

  field :results, 1, repeated: true, type: Google.Cloud.Asset.V1.IamPolicySearchResult
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisQuery.ResourceSelector do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          full_resource_name: String.t()
        }

  defstruct [:full_resource_name]

  field :full_resource_name, 1, type: :string, json_name: "fullResourceName"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisQuery.IdentitySelector do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          identity: String.t()
        }

  defstruct [:identity]

  field :identity, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisQuery.AccessSelector do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          roles: [String.t()],
          permissions: [String.t()]
        }

  defstruct [:roles, :permissions]

  field :roles, 1, repeated: true, type: :string
  field :permissions, 2, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisQuery.Options do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          expand_groups: boolean,
          expand_roles: boolean,
          expand_resources: boolean,
          output_resource_edges: boolean,
          output_group_edges: boolean,
          analyze_service_account_impersonation: boolean
        }

  defstruct [
    :expand_groups,
    :expand_roles,
    :expand_resources,
    :output_resource_edges,
    :output_group_edges,
    :analyze_service_account_impersonation
  ]

  field :expand_groups, 1, type: :bool, json_name: "expandGroups"
  field :expand_roles, 2, type: :bool, json_name: "expandRoles"
  field :expand_resources, 3, type: :bool, json_name: "expandResources"
  field :output_resource_edges, 4, type: :bool, json_name: "outputResourceEdges"
  field :output_group_edges, 5, type: :bool, json_name: "outputGroupEdges"

  field :analyze_service_account_impersonation, 6,
    type: :bool,
    json_name: "analyzeServiceAccountImpersonation"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisQuery.ConditionContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          TimeContext: {:access_time, Google.Protobuf.Timestamp.t() | nil}
        }

  defstruct [:TimeContext]

  oneof :TimeContext, 0

  field :access_time, 1, type: Google.Protobuf.Timestamp, json_name: "accessTime", oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisQuery do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: String.t(),
          resource_selector:
            Google.Cloud.Asset.V1.IamPolicyAnalysisQuery.ResourceSelector.t() | nil,
          identity_selector:
            Google.Cloud.Asset.V1.IamPolicyAnalysisQuery.IdentitySelector.t() | nil,
          access_selector: Google.Cloud.Asset.V1.IamPolicyAnalysisQuery.AccessSelector.t() | nil,
          options: Google.Cloud.Asset.V1.IamPolicyAnalysisQuery.Options.t() | nil,
          condition_context:
            Google.Cloud.Asset.V1.IamPolicyAnalysisQuery.ConditionContext.t() | nil
        }

  defstruct [
    :scope,
    :resource_selector,
    :identity_selector,
    :access_selector,
    :options,
    :condition_context
  ]

  field :scope, 1, type: :string

  field :resource_selector, 2,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisQuery.ResourceSelector,
    json_name: "resourceSelector"

  field :identity_selector, 3,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisQuery.IdentitySelector,
    json_name: "identitySelector"

  field :access_selector, 4,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisQuery.AccessSelector,
    json_name: "accessSelector"

  field :options, 5, type: Google.Cloud.Asset.V1.IamPolicyAnalysisQuery.Options

  field :condition_context, 6,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisQuery.ConditionContext,
    json_name: "conditionContext"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.AnalyzeIamPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          analysis_query: Google.Cloud.Asset.V1.IamPolicyAnalysisQuery.t() | nil,
          execution_timeout: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:analysis_query, :execution_timeout]

  field :analysis_query, 1,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisQuery,
    json_name: "analysisQuery"

  field :execution_timeout, 2, type: Google.Protobuf.Duration, json_name: "executionTimeout"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.AnalyzeIamPolicyResponse.IamPolicyAnalysis do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          analysis_query: Google.Cloud.Asset.V1.IamPolicyAnalysisQuery.t() | nil,
          analysis_results: [Google.Cloud.Asset.V1.IamPolicyAnalysisResult.t()],
          fully_explored: boolean,
          non_critical_errors: [Google.Cloud.Asset.V1.IamPolicyAnalysisState.t()]
        }

  defstruct [:analysis_query, :analysis_results, :fully_explored, :non_critical_errors]

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

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.AnalyzeIamPolicyResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          main_analysis:
            Google.Cloud.Asset.V1.AnalyzeIamPolicyResponse.IamPolicyAnalysis.t() | nil,
          service_account_impersonation_analysis: [
            Google.Cloud.Asset.V1.AnalyzeIamPolicyResponse.IamPolicyAnalysis.t()
          ],
          fully_explored: boolean
        }

  defstruct [:main_analysis, :service_account_impersonation_analysis, :fully_explored]

  field :main_analysis, 1,
    type: Google.Cloud.Asset.V1.AnalyzeIamPolicyResponse.IamPolicyAnalysis,
    json_name: "mainAnalysis"

  field :service_account_impersonation_analysis, 2,
    repeated: true,
    type: Google.Cloud.Asset.V1.AnalyzeIamPolicyResponse.IamPolicyAnalysis,
    json_name: "serviceAccountImpersonationAnalysis"

  field :fully_explored, 3, type: :bool, json_name: "fullyExplored"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisOutputConfig.GcsDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t()
        }

  defstruct [:uri]

  field :uri, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisOutputConfig.BigQueryDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset: String.t(),
          table_prefix: String.t(),
          partition_key:
            Google.Cloud.Asset.V1.IamPolicyAnalysisOutputConfig.BigQueryDestination.PartitionKey.t(),
          write_disposition: String.t()
        }

  defstruct [:dataset, :table_prefix, :partition_key, :write_disposition]

  field :dataset, 1, type: :string
  field :table_prefix, 2, type: :string, json_name: "tablePrefix"

  field :partition_key, 3,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisOutputConfig.BigQueryDestination.PartitionKey,
    enum: true,
    json_name: "partitionKey"

  field :write_disposition, 4, type: :string, json_name: "writeDisposition"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisOutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination:
            {:gcs_destination,
             Google.Cloud.Asset.V1.IamPolicyAnalysisOutputConfig.GcsDestination.t() | nil}
            | {:bigquery_destination,
               Google.Cloud.Asset.V1.IamPolicyAnalysisOutputConfig.BigQueryDestination.t() | nil}
        }

  defstruct [:destination]

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisOutputConfig.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0

  field :bigquery_destination, 2,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisOutputConfig.BigQueryDestination,
    json_name: "bigqueryDestination",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.AnalyzeIamPolicyLongrunningRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          analysis_query: Google.Cloud.Asset.V1.IamPolicyAnalysisQuery.t() | nil,
          output_config: Google.Cloud.Asset.V1.IamPolicyAnalysisOutputConfig.t() | nil
        }

  defstruct [:analysis_query, :output_config]

  field :analysis_query, 1,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisQuery,
    json_name: "analysisQuery"

  field :output_config, 2,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisOutputConfig,
    json_name: "outputConfig"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.AnalyzeIamPolicyLongrunningResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.AnalyzeMoveRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: String.t(),
          destination_parent: String.t(),
          view: Google.Cloud.Asset.V1.AnalyzeMoveRequest.AnalysisView.t()
        }

  defstruct [:resource, :destination_parent, :view]

  field :resource, 1, type: :string
  field :destination_parent, 2, type: :string, json_name: "destinationParent"
  field :view, 3, type: Google.Cloud.Asset.V1.AnalyzeMoveRequest.AnalysisView, enum: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.AnalyzeMoveResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          move_analysis: [Google.Cloud.Asset.V1.MoveAnalysis.t()]
        }

  defstruct [:move_analysis]

  field :move_analysis, 1,
    repeated: true,
    type: Google.Cloud.Asset.V1.MoveAnalysis,
    json_name: "moveAnalysis"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.MoveAnalysis do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result:
            {:analysis, Google.Cloud.Asset.V1.MoveAnalysisResult.t() | nil}
            | {:error, Google.Rpc.Status.t() | nil},
          display_name: String.t()
        }

  defstruct [:result, :display_name]

  oneof :result, 0

  field :display_name, 1, type: :string, json_name: "displayName"
  field :analysis, 2, type: Google.Cloud.Asset.V1.MoveAnalysisResult, oneof: 0
  field :error, 3, type: Google.Rpc.Status, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.MoveAnalysisResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          blockers: [Google.Cloud.Asset.V1.MoveImpact.t()],
          warnings: [Google.Cloud.Asset.V1.MoveImpact.t()]
        }

  defstruct [:blockers, :warnings]

  field :blockers, 1, repeated: true, type: Google.Cloud.Asset.V1.MoveImpact
  field :warnings, 2, repeated: true, type: Google.Cloud.Asset.V1.MoveImpact

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.MoveImpact do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          detail: String.t()
        }

  defstruct [:detail]

  field :detail, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Asset.V1.AssetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.asset.v1.AssetService"

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
end

defmodule Google.Cloud.Asset.V1.AssetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Asset.V1.AssetService.Service
end
