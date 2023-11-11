defmodule Google.Cloud.Visionai.V1.FacetBucketType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :FACET_BUCKET_TYPE_UNSPECIFIED, 0
  field :FACET_BUCKET_TYPE_VALUE, 1
  field :FACET_BUCKET_TYPE_DATETIME, 2
  field :FACET_BUCKET_TYPE_FIXED_RANGE, 3
  field :FACET_BUCKET_TYPE_CUSTOM_RANGE, 4
end

defmodule Google.Cloud.Visionai.V1.AnalyzeAssetMetadata.AnalysisStatus.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :IN_PROGRESS, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
end

defmodule Google.Cloud.Visionai.V1.IndexingStatus.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :IN_PROGRESS, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
end

defmodule Google.Cloud.Visionai.V1.SearchCapability.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :EMBEDDING_SEARCH, 1
end

defmodule Google.Cloud.Visionai.V1.CollectionItem.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :ASSET, 1
end

defmodule Google.Cloud.Visionai.V1.Index.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :CREATED, 2
  field :UPDATING, 3
end

defmodule Google.Cloud.Visionai.V1.Corpus.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :STREAM_VIDEO, 1
  field :IMAGE, 2
  field :VIDEO_ON_DEMAND, 3
end

defmodule Google.Cloud.Visionai.V1.DataSchemaDetails.DataType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DATA_TYPE_UNSPECIFIED, 0
  field :INTEGER, 1
  field :FLOAT, 2
  field :STRING, 3
  field :DATETIME, 5
  field :GEO_COORDINATE, 7
  field :PROTO_ANY, 8
  field :BOOLEAN, 9
  field :LIST, 10
  field :CUSTOMIZED_STRUCT, 6
end

defmodule Google.Cloud.Visionai.V1.DataSchemaDetails.Granularity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :GRANULARITY_UNSPECIFIED, 0
  field :GRANULARITY_ASSET_LEVEL, 1
  field :GRANULARITY_PARTITION_LEVEL, 2
end

defmodule Google.Cloud.Visionai.V1.DataSchemaDetails.SearchStrategy.SearchStrategyType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :NO_SEARCH, 0
  field :EXACT_SEARCH, 1
  field :SMART_SEARCH, 2
end

defmodule Google.Cloud.Visionai.V1.IndexEndpoint.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :CREATED, 2
  field :UPDATING, 3
  field :FAILED, 4
end

defmodule Google.Cloud.Visionai.V1.FacetProperty.DateTimeBucketSpec.Granularity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :GRANULARITY_UNSPECIFIED, 0
  field :YEAR, 1
  field :MONTH, 2
  field :DAY, 3
end

defmodule Google.Cloud.Visionai.V1.IngestAssetRequest.Config.VideoType.ContainerFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CONTAINER_FORMAT_UNSPECIFIED, 0
  field :CONTAINER_FORMAT_MP4, 1
end

defmodule Google.Cloud.Visionai.V1.SchemaKeySortingStrategy.Option.AggregateMethod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :AGGREGATE_METHOD_UNSPECIFIED, 0
  field :AGGREGATE_METHOD_LARGEST, 1
  field :AGGREGATE_METHOD_SMALLEST, 2
end

defmodule Google.Cloud.Visionai.V1.CreateAssetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :asset, 2, type: Google.Cloud.Visionai.V1.Asset, deprecated: false

  field :asset_id, 3,
    proto3_optional: true,
    type: :string,
    json_name: "assetId",
    deprecated: false
end

defmodule Google.Cloud.Visionai.V1.GetAssetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.ListAssetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 5, type: :string
end

defmodule Google.Cloud.Visionai.V1.ListAssetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :assets, 1, repeated: true, type: Google.Cloud.Visionai.V1.Asset
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Visionai.V1.UpdateAssetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :asset, 1, type: Google.Cloud.Visionai.V1.Asset, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Visionai.V1.DeleteAssetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.AssetSource.AssetGcsSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :gcs_uri, 1, type: :string, json_name: "gcsUri"
end

defmodule Google.Cloud.Visionai.V1.AssetSource.AssetContentData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :asset_content_data, 1, type: :bytes, json_name: "assetContentData"
end

defmodule Google.Cloud.Visionai.V1.AssetSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source_form, 0

  field :asset_gcs_source, 1,
    type: Google.Cloud.Visionai.V1.AssetSource.AssetGcsSource,
    json_name: "assetGcsSource",
    oneof: 0

  field :asset_content_data, 2,
    type: Google.Cloud.Visionai.V1.AssetSource.AssetContentData,
    json_name: "assetContentData",
    oneof: 0
end

defmodule Google.Cloud.Visionai.V1.UploadAssetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :asset_source, 2, type: Google.Cloud.Visionai.V1.AssetSource, json_name: "assetSource"
end

defmodule Google.Cloud.Visionai.V1.UploadAssetResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1.UploadAssetMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Visionai.V1.GenerateRetrievalUrlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.GenerateRetrievalUrlResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :signed_uri, 1, type: :string, json_name: "signedUri"
end

defmodule Google.Cloud.Visionai.V1.Asset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :ttl, 2, type: Google.Protobuf.Duration

  field :asset_gcs_source, 4,
    type: Google.Cloud.Visionai.V1.AssetSource.AssetGcsSource,
    json_name: "assetGcsSource",
    deprecated: false
end

defmodule Google.Cloud.Visionai.V1.AnalyzeAssetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.AnalyzeAssetMetadata.AnalysisStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :state, 2,
    type: Google.Cloud.Visionai.V1.AnalyzeAssetMetadata.AnalysisStatus.State,
    enum: true

  field :status_message, 3, type: :string, json_name: "statusMessage"

  field :search_capability, 4,
    type: Google.Cloud.Visionai.V1.SearchCapability,
    json_name: "searchCapability"
end

defmodule Google.Cloud.Visionai.V1.AnalyzeAssetMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :analysis_status, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1.AnalyzeAssetMetadata.AnalysisStatus,
    json_name: "analysisStatus"

  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Visionai.V1.AnalyzeAssetResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1.IndexingStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :state, 2,
    type: Google.Cloud.Visionai.V1.IndexingStatus.State,
    enum: true,
    deprecated: false

  field :status_message, 3, type: :string, json_name: "statusMessage"
end

defmodule Google.Cloud.Visionai.V1.IndexAssetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :index, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.IndexAssetMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :status, 4, type: Google.Cloud.Visionai.V1.IndexingStatus
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Visionai.V1.IndexAssetResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1.RemoveIndexAssetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :index, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.RemoveIndexAssetMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :indexing_status, 1,
    type: Google.Cloud.Visionai.V1.IndexingStatus,
    json_name: "indexingStatus"

  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Visionai.V1.RemoveIndexAssetResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1.IndexedAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :index, 1, type: :string, deprecated: false
  field :asset, 2, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Visionai.V1.ViewIndexedAssetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :index, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Visionai.V1.ViewIndexedAssetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :indexed_assets, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1.IndexedAsset,
    json_name: "indexedAssets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Visionai.V1.CreateCorpusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :corpus, 2, type: Google.Cloud.Visionai.V1.Corpus, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.CreateCorpusMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Visionai.V1.SearchCapability do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Visionai.V1.SearchCapability.Type, enum: true
end

defmodule Google.Cloud.Visionai.V1.SearchCapabilitySetting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :search_capabilities, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1.SearchCapability,
    json_name: "searchCapabilities"
end

defmodule Google.Cloud.Visionai.V1.CreateCollectionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :operation_metadata, 1,
    type: Google.Cloud.Visionai.V1.OperationMetadata,
    json_name: "operationMetadata"
end

defmodule Google.Cloud.Visionai.V1.CreateCollectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :collection, 2, type: Google.Cloud.Visionai.V1.Collection, deprecated: false

  field :collection_id, 3,
    proto3_optional: true,
    type: :string,
    json_name: "collectionId",
    deprecated: false
end

defmodule Google.Cloud.Visionai.V1.DeleteCollectionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :operation_metadata, 1,
    type: Google.Cloud.Visionai.V1.OperationMetadata,
    json_name: "operationMetadata"
end

defmodule Google.Cloud.Visionai.V1.DeleteCollectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.GetCollectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.UpdateCollectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :collection, 1, type: Google.Cloud.Visionai.V1.Collection, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Visionai.V1.ListCollectionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Visionai.V1.ListCollectionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :collections, 1, repeated: true, type: Google.Cloud.Visionai.V1.Collection
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Visionai.V1.AddCollectionItemRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :item, 1, type: Google.Cloud.Visionai.V1.CollectionItem, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.AddCollectionItemResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :item, 1, type: Google.Cloud.Visionai.V1.CollectionItem
end

defmodule Google.Cloud.Visionai.V1.RemoveCollectionItemRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :item, 1, type: Google.Cloud.Visionai.V1.CollectionItem, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.RemoveCollectionItemResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :item, 1, type: Google.Cloud.Visionai.V1.CollectionItem
end

defmodule Google.Cloud.Visionai.V1.ViewCollectionItemsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :collection, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Visionai.V1.ViewCollectionItemsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :items, 1, repeated: true, type: Google.Cloud.Visionai.V1.CollectionItem
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Visionai.V1.Collection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.CollectionItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :collection, 1, type: :string, deprecated: false

  field :type, 2,
    type: Google.Cloud.Visionai.V1.CollectionItem.Type,
    enum: true,
    deprecated: false

  field :item_resource, 3, type: :string, json_name: "itemResource", deprecated: false
end

defmodule Google.Cloud.Visionai.V1.CreateIndexRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :index_id, 2, type: :string, json_name: "indexId", deprecated: false
  field :index, 3, type: Google.Cloud.Visionai.V1.Index, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.CreateIndexMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :operation_metadata, 1,
    type: Google.Cloud.Visionai.V1.OperationMetadata,
    json_name: "operationMetadata"
end

defmodule Google.Cloud.Visionai.V1.UpdateIndexRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :index, 1, type: Google.Cloud.Visionai.V1.Index, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Visionai.V1.UpdateIndexMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :operation_metadata, 1,
    type: Google.Cloud.Visionai.V1.OperationMetadata,
    json_name: "operationMetadata"
end

defmodule Google.Cloud.Visionai.V1.GetIndexRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.ListIndexesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Visionai.V1.ListIndexesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :indexes, 1, repeated: true, type: Google.Cloud.Visionai.V1.Index
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Visionai.V1.DeleteIndexRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.DeleteIndexMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1.Index do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :asset_filter, 0

  field :entire_corpus, 9, type: :bool, json_name: "entireCorpus", oneof: 0
  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false
  field :state, 4, type: Google.Cloud.Visionai.V1.Index.State, enum: true, deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :deployed_indexes, 8,
    repeated: true,
    type: Google.Cloud.Visionai.V1.DeployedIndexReference,
    json_name: "deployedIndexes",
    deprecated: false
end

defmodule Google.Cloud.Visionai.V1.DeployedIndexReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :index_endpoint, 1, type: :string, json_name: "indexEndpoint", deprecated: false
end

defmodule Google.Cloud.Visionai.V1.Corpus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false

  field :default_ttl, 5,
    type: Google.Protobuf.Duration,
    json_name: "defaultTtl",
    deprecated: false

  field :type, 7, type: Google.Cloud.Visionai.V1.Corpus.Type, enum: true, deprecated: false

  field :search_capability_setting, 8,
    type: Google.Cloud.Visionai.V1.SearchCapabilitySetting,
    json_name: "searchCapabilitySetting"
end

defmodule Google.Cloud.Visionai.V1.GetCorpusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.UpdateCorpusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :corpus, 1, type: Google.Cloud.Visionai.V1.Corpus, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Visionai.V1.ListCorporaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 5, type: :string
end

defmodule Google.Cloud.Visionai.V1.ListCorporaResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :corpora, 1, repeated: true, type: Google.Cloud.Visionai.V1.Corpus
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Visionai.V1.DeleteCorpusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.AnalyzeCorpusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.AnalyzeCorpusMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :metadata, 1, type: Google.Cloud.Visionai.V1.OperationMetadata
end

defmodule Google.Cloud.Visionai.V1.AnalyzeCorpusResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1.CreateDataSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :data_schema, 2,
    type: Google.Cloud.Visionai.V1.DataSchema,
    json_name: "dataSchema",
    deprecated: false
end

defmodule Google.Cloud.Visionai.V1.DataSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :key, 2, type: :string, deprecated: false

  field :schema_details, 3,
    type: Google.Cloud.Visionai.V1.DataSchemaDetails,
    json_name: "schemaDetails"
end

defmodule Google.Cloud.Visionai.V1.DataSchemaDetails.ProtoAnyConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type_uri, 1, type: :string, json_name: "typeUri"
end

defmodule Google.Cloud.Visionai.V1.DataSchemaDetails.ListConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :value_schema, 1,
    type: Google.Cloud.Visionai.V1.DataSchemaDetails,
    json_name: "valueSchema"
end

defmodule Google.Cloud.Visionai.V1.DataSchemaDetails.CustomizedStructConfig.FieldSchemasEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Visionai.V1.DataSchemaDetails
end

defmodule Google.Cloud.Visionai.V1.DataSchemaDetails.CustomizedStructConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :field_schemas, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1.DataSchemaDetails.CustomizedStructConfig.FieldSchemasEntry,
    json_name: "fieldSchemas",
    map: true
end

defmodule Google.Cloud.Visionai.V1.DataSchemaDetails.SearchStrategy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :search_strategy_type, 1,
    type: Google.Cloud.Visionai.V1.DataSchemaDetails.SearchStrategy.SearchStrategyType,
    json_name: "searchStrategyType",
    enum: true
end

defmodule Google.Cloud.Visionai.V1.DataSchemaDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Visionai.V1.DataSchemaDetails.DataType, enum: true

  field :proto_any_config, 6,
    type: Google.Cloud.Visionai.V1.DataSchemaDetails.ProtoAnyConfig,
    json_name: "protoAnyConfig"

  field :list_config, 8,
    type: Google.Cloud.Visionai.V1.DataSchemaDetails.ListConfig,
    json_name: "listConfig"

  field :customized_struct_config, 9,
    type: Google.Cloud.Visionai.V1.DataSchemaDetails.CustomizedStructConfig,
    json_name: "customizedStructConfig"

  field :granularity, 5, type: Google.Cloud.Visionai.V1.DataSchemaDetails.Granularity, enum: true

  field :search_strategy, 7,
    type: Google.Cloud.Visionai.V1.DataSchemaDetails.SearchStrategy,
    json_name: "searchStrategy"
end

defmodule Google.Cloud.Visionai.V1.UpdateDataSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :data_schema, 1,
    type: Google.Cloud.Visionai.V1.DataSchema,
    json_name: "dataSchema",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Visionai.V1.GetDataSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.DeleteDataSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.ListDataSchemasRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Visionai.V1.ListDataSchemasResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :data_schemas, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1.DataSchema,
    json_name: "dataSchemas"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Visionai.V1.CreateAnnotationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :annotation, 2, type: Google.Cloud.Visionai.V1.Annotation, deprecated: false

  field :annotation_id, 3,
    proto3_optional: true,
    type: :string,
    json_name: "annotationId",
    deprecated: false
end

defmodule Google.Cloud.Visionai.V1.Annotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string

  field :user_specified_annotation, 2,
    type: Google.Cloud.Visionai.V1.UserSpecifiedAnnotation,
    json_name: "userSpecifiedAnnotation"
end

defmodule Google.Cloud.Visionai.V1.UserSpecifiedAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string, deprecated: false
  field :value, 2, type: Google.Cloud.Visionai.V1.AnnotationValue
  field :partition, 3, type: Google.Cloud.Visionai.V1.Partition
end

defmodule Google.Cloud.Visionai.V1.GeoCoordinate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :latitude, 1, type: :double
  field :longitude, 2, type: :double
end

defmodule Google.Cloud.Visionai.V1.AnnotationValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :value, 0

  field :int_value, 1, type: :int64, json_name: "intValue", oneof: 0
  field :float_value, 2, type: :float, json_name: "floatValue", oneof: 0
  field :str_value, 3, type: :string, json_name: "strValue", oneof: 0
  field :datetime_value, 5, type: :string, json_name: "datetimeValue", oneof: 0

  field :geo_coordinate, 7,
    type: Google.Cloud.Visionai.V1.GeoCoordinate,
    json_name: "geoCoordinate",
    oneof: 0

  field :proto_any_value, 8, type: Google.Protobuf.Any, json_name: "protoAnyValue", oneof: 0
  field :bool_value, 9, type: :bool, json_name: "boolValue", oneof: 0

  field :customized_struct_data_value, 10,
    type: Google.Protobuf.Struct,
    json_name: "customizedStructDataValue",
    oneof: 0

  field :list_value, 11,
    type: Google.Cloud.Visionai.V1.AnnotationList,
    json_name: "listValue",
    oneof: 0

  field :customized_struct_value, 6,
    type: Google.Cloud.Visionai.V1.AnnotationCustomizedStruct,
    json_name: "customizedStructValue",
    oneof: 0
end

defmodule Google.Cloud.Visionai.V1.AnnotationList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :values, 1, repeated: true, type: Google.Cloud.Visionai.V1.AnnotationValue
end

defmodule Google.Cloud.Visionai.V1.AnnotationCustomizedStruct.ElementsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Visionai.V1.AnnotationValue
end

defmodule Google.Cloud.Visionai.V1.AnnotationCustomizedStruct do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :elements, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1.AnnotationCustomizedStruct.ElementsEntry,
    map: true
end

defmodule Google.Cloud.Visionai.V1.ListAnnotationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Visionai.V1.ListAnnotationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :annotations, 1, repeated: true, type: Google.Cloud.Visionai.V1.Annotation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Visionai.V1.GetAnnotationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.UpdateAnnotationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :annotation, 1, type: Google.Cloud.Visionai.V1.Annotation, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Visionai.V1.DeleteAnnotationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.ImportAssetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  field :assets_gcs_uri, 2, type: :string, json_name: "assetsGcsUri", oneof: 0
  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.ImportAssetsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :metadata, 1, type: Google.Cloud.Visionai.V1.OperationMetadata
end

defmodule Google.Cloud.Visionai.V1.ImportAssetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1.CreateSearchConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :search_config, 2,
    type: Google.Cloud.Visionai.V1.SearchConfig,
    json_name: "searchConfig",
    deprecated: false

  field :search_config_id, 3, type: :string, json_name: "searchConfigId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1.UpdateSearchConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :search_config, 1,
    type: Google.Cloud.Visionai.V1.SearchConfig,
    json_name: "searchConfig",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Visionai.V1.GetSearchConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.DeleteSearchConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.ListSearchConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Visionai.V1.ListSearchConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :search_configs, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1.SearchConfig,
    json_name: "searchConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Visionai.V1.SearchConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string

  field :facet_property, 2,
    type: Google.Cloud.Visionai.V1.FacetProperty,
    json_name: "facetProperty"

  field :search_criteria_property, 3,
    type: Google.Cloud.Visionai.V1.SearchCriteriaProperty,
    json_name: "searchCriteriaProperty"
end

defmodule Google.Cloud.Visionai.V1.IndexEndpoint.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1.IndexEndpoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false

  field :deployed_index, 9,
    type: Google.Cloud.Visionai.V1.DeployedIndex,
    json_name: "deployedIndex",
    deprecated: false

  field :state, 5,
    type: Google.Cloud.Visionai.V1.IndexEndpoint.State,
    enum: true,
    deprecated: false

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Visionai.V1.IndexEndpoint.LabelsEntry,
    map: true,
    deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Visionai.V1.CreateIndexEndpointRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :index_endpoint_id, 2, type: :string, json_name: "indexEndpointId", deprecated: false

  field :index_endpoint, 3,
    type: Google.Cloud.Visionai.V1.IndexEndpoint,
    json_name: "indexEndpoint",
    deprecated: false
end

defmodule Google.Cloud.Visionai.V1.CreateIndexEndpointMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :operation_metadata, 1,
    type: Google.Cloud.Visionai.V1.OperationMetadata,
    json_name: "operationMetadata"
end

defmodule Google.Cloud.Visionai.V1.GetIndexEndpointRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.ListIndexEndpointsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.ListIndexEndpointsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :index_endpoints, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1.IndexEndpoint,
    json_name: "indexEndpoints"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Visionai.V1.UpdateIndexEndpointRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :index_endpoint, 1,
    type: Google.Cloud.Visionai.V1.IndexEndpoint,
    json_name: "indexEndpoint",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Visionai.V1.UpdateIndexEndpointMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :operation_metadata, 1,
    type: Google.Cloud.Visionai.V1.OperationMetadata,
    json_name: "operationMetadata"
end

defmodule Google.Cloud.Visionai.V1.DeleteIndexEndpointRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.DeleteIndexEndpointMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :operation_metadata, 1,
    type: Google.Cloud.Visionai.V1.OperationMetadata,
    json_name: "operationMetadata"
end

defmodule Google.Cloud.Visionai.V1.DeployIndexRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :index_endpoint, 1, type: :string, json_name: "indexEndpoint", deprecated: false

  field :deployed_index, 3,
    type: Google.Cloud.Visionai.V1.DeployedIndex,
    json_name: "deployedIndex",
    deprecated: false
end

defmodule Google.Cloud.Visionai.V1.DeployIndexResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1.DeployIndexMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :operation_metadata, 1,
    type: Google.Cloud.Visionai.V1.OperationMetadata,
    json_name: "operationMetadata"

  field :deployed_index, 2, type: :string, json_name: "deployedIndex", deprecated: false
end

defmodule Google.Cloud.Visionai.V1.UndeployIndexMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :operation_metadata, 1,
    type: Google.Cloud.Visionai.V1.OperationMetadata,
    json_name: "operationMetadata"

  field :deployed_index, 2, type: :string, json_name: "deployedIndex", deprecated: false
end

defmodule Google.Cloud.Visionai.V1.UndeployIndexRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :index_endpoint, 1, type: :string, json_name: "indexEndpoint", deprecated: false
end

defmodule Google.Cloud.Visionai.V1.UndeployIndexResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1.DeployedIndex do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :index, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.FacetProperty.FixedRangeBucketSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :bucket_start, 1, type: Google.Cloud.Visionai.V1.FacetValue, json_name: "bucketStart"

  field :bucket_granularity, 2,
    type: Google.Cloud.Visionai.V1.FacetValue,
    json_name: "bucketGranularity"

  field :bucket_count, 3, type: :int32, json_name: "bucketCount"
end

defmodule Google.Cloud.Visionai.V1.FacetProperty.CustomRangeBucketSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :endpoints, 1, repeated: true, type: Google.Cloud.Visionai.V1.FacetValue
end

defmodule Google.Cloud.Visionai.V1.FacetProperty.DateTimeBucketSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :granularity, 1,
    type: Google.Cloud.Visionai.V1.FacetProperty.DateTimeBucketSpec.Granularity,
    enum: true
end

defmodule Google.Cloud.Visionai.V1.FacetProperty do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :range_facet_config, 0

  field :fixed_range_bucket_spec, 5,
    type: Google.Cloud.Visionai.V1.FacetProperty.FixedRangeBucketSpec,
    json_name: "fixedRangeBucketSpec",
    oneof: 0

  field :custom_range_bucket_spec, 6,
    type: Google.Cloud.Visionai.V1.FacetProperty.CustomRangeBucketSpec,
    json_name: "customRangeBucketSpec",
    oneof: 0

  field :datetime_bucket_spec, 7,
    type: Google.Cloud.Visionai.V1.FacetProperty.DateTimeBucketSpec,
    json_name: "datetimeBucketSpec",
    oneof: 0

  field :mapped_fields, 1, repeated: true, type: :string, json_name: "mappedFields"
  field :display_name, 2, type: :string, json_name: "displayName"
  field :result_size, 3, type: :int64, json_name: "resultSize"

  field :bucket_type, 4,
    type: Google.Cloud.Visionai.V1.FacetBucketType,
    json_name: "bucketType",
    enum: true
end

defmodule Google.Cloud.Visionai.V1.SearchHypernym do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :hypernym, 2, type: :string
  field :hyponyms, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Visionai.V1.CreateSearchHypernymRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :search_hypernym, 2,
    type: Google.Cloud.Visionai.V1.SearchHypernym,
    json_name: "searchHypernym",
    deprecated: false

  field :search_hypernym_id, 3,
    proto3_optional: true,
    type: :string,
    json_name: "searchHypernymId",
    deprecated: false
end

defmodule Google.Cloud.Visionai.V1.UpdateSearchHypernymRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :search_hypernym, 1,
    type: Google.Cloud.Visionai.V1.SearchHypernym,
    json_name: "searchHypernym",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Visionai.V1.GetSearchHypernymRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.DeleteSearchHypernymRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.ListSearchHypernymsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Visionai.V1.ListSearchHypernymsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :search_hypernyms, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1.SearchHypernym,
    json_name: "searchHypernyms"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Visionai.V1.SearchCriteriaProperty do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :mapped_fields, 1, repeated: true, type: :string, json_name: "mappedFields"
end

defmodule Google.Cloud.Visionai.V1.FacetValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :value, 0

  field :string_value, 1, type: :string, json_name: "stringValue", oneof: 0
  field :integer_value, 2, type: :int64, json_name: "integerValue", oneof: 0
  field :datetime_value, 3, type: Google.Type.DateTime, json_name: "datetimeValue", oneof: 0
end

defmodule Google.Cloud.Visionai.V1.FacetBucket.Range do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start, 1, type: Google.Cloud.Visionai.V1.FacetValue
  field :end, 2, type: Google.Cloud.Visionai.V1.FacetValue
end

defmodule Google.Cloud.Visionai.V1.FacetBucket do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :bucket_value, 0

  field :value, 2, type: Google.Cloud.Visionai.V1.FacetValue, oneof: 0
  field :range, 4, type: Google.Cloud.Visionai.V1.FacetBucket.Range, oneof: 0
  field :selected, 3, type: :bool
end

defmodule Google.Cloud.Visionai.V1.FacetGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :facet_id, 1, type: :string, json_name: "facetId"
  field :display_name, 2, type: :string, json_name: "displayName"
  field :buckets, 3, repeated: true, type: Google.Cloud.Visionai.V1.FacetBucket

  field :bucket_type, 4,
    type: Google.Cloud.Visionai.V1.FacetBucketType,
    json_name: "bucketType",
    enum: true

  field :fetch_matched_annotations, 5, type: :bool, json_name: "fetchMatchedAnnotations"
end

defmodule Google.Cloud.Visionai.V1.IngestAssetRequest.Config.VideoType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :container_format, 1,
    type: Google.Cloud.Visionai.V1.IngestAssetRequest.Config.VideoType.ContainerFormat,
    json_name: "containerFormat",
    enum: true
end

defmodule Google.Cloud.Visionai.V1.IngestAssetRequest.Config do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :data_type, 0

  field :video_type, 2,
    type: Google.Cloud.Visionai.V1.IngestAssetRequest.Config.VideoType,
    json_name: "videoType",
    oneof: 0

  field :asset, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.IngestAssetRequest.TimeIndexedData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :data, 1, type: :bytes

  field :temporal_partition, 2,
    type: Google.Cloud.Visionai.V1.Partition.TemporalPartition,
    json_name: "temporalPartition"
end

defmodule Google.Cloud.Visionai.V1.IngestAssetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :streaming_request, 0

  field :config, 1, type: Google.Cloud.Visionai.V1.IngestAssetRequest.Config, oneof: 0

  field :time_indexed_data, 2,
    type: Google.Cloud.Visionai.V1.IngestAssetRequest.TimeIndexedData,
    json_name: "timeIndexedData",
    oneof: 0
end

defmodule Google.Cloud.Visionai.V1.IngestAssetResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :successfully_ingested_partition, 1,
    type: Google.Cloud.Visionai.V1.Partition.TemporalPartition,
    json_name: "successfullyIngestedPartition"
end

defmodule Google.Cloud.Visionai.V1.ClipAssetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :temporal_partition, 2,
    type: Google.Cloud.Visionai.V1.Partition.TemporalPartition,
    json_name: "temporalPartition",
    deprecated: false
end

defmodule Google.Cloud.Visionai.V1.ClipAssetResponse.TimeIndexedUri do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :temporal_partition, 1,
    type: Google.Cloud.Visionai.V1.Partition.TemporalPartition,
    json_name: "temporalPartition"

  field :uri, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1.ClipAssetResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :time_indexed_uris, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1.ClipAssetResponse.TimeIndexedUri,
    json_name: "timeIndexedUris"
end

defmodule Google.Cloud.Visionai.V1.GenerateHlsUriRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :temporal_partitions, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1.Partition.TemporalPartition,
    json_name: "temporalPartitions"

  field :live_view_enabled, 3, type: :bool, json_name: "liveViewEnabled"
end

defmodule Google.Cloud.Visionai.V1.GenerateHlsUriResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :uri, 1, type: :string

  field :temporal_partitions, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1.Partition.TemporalPartition,
    json_name: "temporalPartitions"
end

defmodule Google.Cloud.Visionai.V1.SearchAssetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :sort_spec, 0

  field :schema_key_sorting_strategy, 9,
    type: Google.Cloud.Visionai.V1.SchemaKeySortingStrategy,
    json_name: "schemaKeySortingStrategy",
    oneof: 0

  field :corpus, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  field :content_time_ranges, 5,
    type: Google.Cloud.Visionai.V1.DateTimeRangeArray,
    json_name: "contentTimeRanges"

  field :criteria, 4, repeated: true, type: Google.Cloud.Visionai.V1.Criteria

  field :facet_selections, 6,
    repeated: true,
    type: Google.Cloud.Visionai.V1.FacetGroup,
    json_name: "facetSelections"

  field :result_annotation_keys, 8,
    repeated: true,
    type: :string,
    json_name: "resultAnnotationKeys"

  field :search_query, 10, type: :string, json_name: "searchQuery"
end

defmodule Google.Cloud.Visionai.V1.SearchIndexEndpointRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :query, 0

  field :image_query, 2,
    type: Google.Cloud.Visionai.V1.ImageQuery,
    json_name: "imageQuery",
    oneof: 0

  field :text_query, 3, type: :string, json_name: "textQuery", oneof: 0
  field :index_endpoint, 1, type: :string, json_name: "indexEndpoint", deprecated: false
  field :criteria, 4, repeated: true, type: Google.Cloud.Visionai.V1.Criteria

  field :exclusion_criteria, 7,
    repeated: true,
    type: Google.Cloud.Visionai.V1.Criteria,
    json_name: "exclusionCriteria"

  field :page_size, 5, type: :int32, json_name: "pageSize"
  field :page_token, 6, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Visionai.V1.ImageQuery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :image, 0

  field :input_image, 1, type: :bytes, json_name: "inputImage", oneof: 0
  field :asset, 2, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.SchemaKeySortingStrategy.Option do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :data_schema_key, 1, type: :string, json_name: "dataSchemaKey"
  field :sort_decreasing, 2, type: :bool, json_name: "sortDecreasing"

  field :aggregate_method, 3,
    proto3_optional: true,
    type: Google.Cloud.Visionai.V1.SchemaKeySortingStrategy.Option.AggregateMethod,
    json_name: "aggregateMethod",
    enum: true
end

defmodule Google.Cloud.Visionai.V1.SchemaKeySortingStrategy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :options, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1.SchemaKeySortingStrategy.Option
end

defmodule Google.Cloud.Visionai.V1.DeleteAssetMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1.AnnotationMatchingResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :criteria, 1, type: Google.Cloud.Visionai.V1.Criteria

  field :matched_annotations, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1.Annotation,
    json_name: "matchedAnnotations"

  field :status, 3, type: Google.Rpc.Status
end

defmodule Google.Cloud.Visionai.V1.SearchResultItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :asset, 1, type: :string

  field :segments, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1.Partition.TemporalPartition,
    deprecated: true

  field :segment, 5, type: Google.Cloud.Visionai.V1.Partition.TemporalPartition
  field :relevance, 6, type: :double

  field :requested_annotations, 3,
    repeated: true,
    type: Google.Cloud.Visionai.V1.Annotation,
    json_name: "requestedAnnotations"

  field :annotation_matching_results, 4,
    repeated: true,
    type: Google.Cloud.Visionai.V1.AnnotationMatchingResult,
    json_name: "annotationMatchingResults"
end

defmodule Google.Cloud.Visionai.V1.SearchAssetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :search_result_items, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1.SearchResultItem,
    json_name: "searchResultItems"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  field :facet_results, 3,
    repeated: true,
    type: Google.Cloud.Visionai.V1.FacetGroup,
    json_name: "facetResults"
end

defmodule Google.Cloud.Visionai.V1.SearchIndexEndpointResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :search_result_items, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1.SearchResultItem,
    json_name: "searchResultItems"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Visionai.V1.IntRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start, 1, proto3_optional: true, type: :int64
  field :end, 2, proto3_optional: true, type: :int64
end

defmodule Google.Cloud.Visionai.V1.FloatRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start, 1, proto3_optional: true, type: :float
  field :end, 2, proto3_optional: true, type: :float
end

defmodule Google.Cloud.Visionai.V1.StringArray do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :txt_values, 1, repeated: true, type: :string, json_name: "txtValues"
end

defmodule Google.Cloud.Visionai.V1.IntRangeArray do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :int_ranges, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1.IntRange,
    json_name: "intRanges"
end

defmodule Google.Cloud.Visionai.V1.FloatRangeArray do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :float_ranges, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1.FloatRange,
    json_name: "floatRanges"
end

defmodule Google.Cloud.Visionai.V1.DateTimeRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start, 1, type: Google.Type.DateTime
  field :end, 2, type: Google.Type.DateTime
end

defmodule Google.Cloud.Visionai.V1.DateTimeRangeArray do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :date_time_ranges, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1.DateTimeRange,
    json_name: "dateTimeRanges"
end

defmodule Google.Cloud.Visionai.V1.CircleArea do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :latitude, 1, type: :double
  field :longitude, 2, type: :double
  field :radius_meter, 3, type: :double, json_name: "radiusMeter"
end

defmodule Google.Cloud.Visionai.V1.GeoLocationArray do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :circle_areas, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1.CircleArea,
    json_name: "circleAreas"
end

defmodule Google.Cloud.Visionai.V1.BoolValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :value, 1, type: :bool
end

defmodule Google.Cloud.Visionai.V1.Criteria do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :value, 0

  field :text_array, 2,
    type: Google.Cloud.Visionai.V1.StringArray,
    json_name: "textArray",
    oneof: 0

  field :int_range_array, 3,
    type: Google.Cloud.Visionai.V1.IntRangeArray,
    json_name: "intRangeArray",
    oneof: 0

  field :float_range_array, 4,
    type: Google.Cloud.Visionai.V1.FloatRangeArray,
    json_name: "floatRangeArray",
    oneof: 0

  field :date_time_range_array, 5,
    type: Google.Cloud.Visionai.V1.DateTimeRangeArray,
    json_name: "dateTimeRangeArray",
    oneof: 0

  field :geo_location_array, 6,
    type: Google.Cloud.Visionai.V1.GeoLocationArray,
    json_name: "geoLocationArray",
    oneof: 0

  field :bool_value, 7, type: Google.Cloud.Visionai.V1.BoolValue, json_name: "boolValue", oneof: 0
  field :field, 1, type: :string
  field :fetch_matched_annotations, 8, type: :bool, json_name: "fetchMatchedAnnotations"
end

defmodule Google.Cloud.Visionai.V1.Partition.TemporalPartition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Visionai.V1.Partition.SpatialPartition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :x_min, 1, proto3_optional: true, type: :int64, json_name: "xMin"
  field :y_min, 2, proto3_optional: true, type: :int64, json_name: "yMin"
  field :x_max, 3, proto3_optional: true, type: :int64, json_name: "xMax"
  field :y_max, 4, proto3_optional: true, type: :int64, json_name: "yMax"
end

defmodule Google.Cloud.Visionai.V1.Partition.RelativeTemporalPartition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start_offset, 1, type: Google.Protobuf.Duration, json_name: "startOffset"
  field :end_offset, 2, type: Google.Protobuf.Duration, json_name: "endOffset"
end

defmodule Google.Cloud.Visionai.V1.Partition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :temporal_partition, 1,
    type: Google.Cloud.Visionai.V1.Partition.TemporalPartition,
    json_name: "temporalPartition"

  field :spatial_partition, 2,
    type: Google.Cloud.Visionai.V1.Partition.SpatialPartition,
    json_name: "spatialPartition"

  field :relative_temporal_partition, 3,
    type: Google.Cloud.Visionai.V1.Partition.RelativeTemporalPartition,
    json_name: "relativeTemporalPartition"
end

defmodule Google.Cloud.Visionai.V1.Warehouse.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.visionai.v1.Warehouse",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreateAsset, Google.Cloud.Visionai.V1.CreateAssetRequest, Google.Cloud.Visionai.V1.Asset

  rpc :UpdateAsset, Google.Cloud.Visionai.V1.UpdateAssetRequest, Google.Cloud.Visionai.V1.Asset

  rpc :GetAsset, Google.Cloud.Visionai.V1.GetAssetRequest, Google.Cloud.Visionai.V1.Asset

  rpc :ListAssets,
      Google.Cloud.Visionai.V1.ListAssetsRequest,
      Google.Cloud.Visionai.V1.ListAssetsResponse

  rpc :DeleteAsset, Google.Cloud.Visionai.V1.DeleteAssetRequest, Google.Longrunning.Operation

  rpc :UploadAsset, Google.Cloud.Visionai.V1.UploadAssetRequest, Google.Longrunning.Operation

  rpc :GenerateRetrievalUrl,
      Google.Cloud.Visionai.V1.GenerateRetrievalUrlRequest,
      Google.Cloud.Visionai.V1.GenerateRetrievalUrlResponse

  rpc :AnalyzeAsset, Google.Cloud.Visionai.V1.AnalyzeAssetRequest, Google.Longrunning.Operation

  rpc :IndexAsset, Google.Cloud.Visionai.V1.IndexAssetRequest, Google.Longrunning.Operation

  rpc :RemoveIndexAsset,
      Google.Cloud.Visionai.V1.RemoveIndexAssetRequest,
      Google.Longrunning.Operation

  rpc :ViewIndexedAssets,
      Google.Cloud.Visionai.V1.ViewIndexedAssetsRequest,
      Google.Cloud.Visionai.V1.ViewIndexedAssetsResponse

  rpc :CreateIndex, Google.Cloud.Visionai.V1.CreateIndexRequest, Google.Longrunning.Operation

  rpc :UpdateIndex, Google.Cloud.Visionai.V1.UpdateIndexRequest, Google.Longrunning.Operation

  rpc :GetIndex, Google.Cloud.Visionai.V1.GetIndexRequest, Google.Cloud.Visionai.V1.Index

  rpc :ListIndexes,
      Google.Cloud.Visionai.V1.ListIndexesRequest,
      Google.Cloud.Visionai.V1.ListIndexesResponse

  rpc :DeleteIndex, Google.Cloud.Visionai.V1.DeleteIndexRequest, Google.Longrunning.Operation

  rpc :CreateCorpus, Google.Cloud.Visionai.V1.CreateCorpusRequest, Google.Longrunning.Operation

  rpc :GetCorpus, Google.Cloud.Visionai.V1.GetCorpusRequest, Google.Cloud.Visionai.V1.Corpus

  rpc :UpdateCorpus, Google.Cloud.Visionai.V1.UpdateCorpusRequest, Google.Cloud.Visionai.V1.Corpus

  rpc :ListCorpora,
      Google.Cloud.Visionai.V1.ListCorporaRequest,
      Google.Cloud.Visionai.V1.ListCorporaResponse

  rpc :DeleteCorpus, Google.Cloud.Visionai.V1.DeleteCorpusRequest, Google.Protobuf.Empty

  rpc :AnalyzeCorpus, Google.Cloud.Visionai.V1.AnalyzeCorpusRequest, Google.Longrunning.Operation

  rpc :CreateDataSchema,
      Google.Cloud.Visionai.V1.CreateDataSchemaRequest,
      Google.Cloud.Visionai.V1.DataSchema

  rpc :UpdateDataSchema,
      Google.Cloud.Visionai.V1.UpdateDataSchemaRequest,
      Google.Cloud.Visionai.V1.DataSchema

  rpc :GetDataSchema,
      Google.Cloud.Visionai.V1.GetDataSchemaRequest,
      Google.Cloud.Visionai.V1.DataSchema

  rpc :DeleteDataSchema, Google.Cloud.Visionai.V1.DeleteDataSchemaRequest, Google.Protobuf.Empty

  rpc :ListDataSchemas,
      Google.Cloud.Visionai.V1.ListDataSchemasRequest,
      Google.Cloud.Visionai.V1.ListDataSchemasResponse

  rpc :CreateAnnotation,
      Google.Cloud.Visionai.V1.CreateAnnotationRequest,
      Google.Cloud.Visionai.V1.Annotation

  rpc :GetAnnotation,
      Google.Cloud.Visionai.V1.GetAnnotationRequest,
      Google.Cloud.Visionai.V1.Annotation

  rpc :ListAnnotations,
      Google.Cloud.Visionai.V1.ListAnnotationsRequest,
      Google.Cloud.Visionai.V1.ListAnnotationsResponse

  rpc :UpdateAnnotation,
      Google.Cloud.Visionai.V1.UpdateAnnotationRequest,
      Google.Cloud.Visionai.V1.Annotation

  rpc :DeleteAnnotation, Google.Cloud.Visionai.V1.DeleteAnnotationRequest, Google.Protobuf.Empty

  rpc :IngestAsset,
      stream(Google.Cloud.Visionai.V1.IngestAssetRequest),
      stream(Google.Cloud.Visionai.V1.IngestAssetResponse)

  rpc :ClipAsset,
      Google.Cloud.Visionai.V1.ClipAssetRequest,
      Google.Cloud.Visionai.V1.ClipAssetResponse

  rpc :GenerateHlsUri,
      Google.Cloud.Visionai.V1.GenerateHlsUriRequest,
      Google.Cloud.Visionai.V1.GenerateHlsUriResponse

  rpc :ImportAssets, Google.Cloud.Visionai.V1.ImportAssetsRequest, Google.Longrunning.Operation

  rpc :CreateSearchConfig,
      Google.Cloud.Visionai.V1.CreateSearchConfigRequest,
      Google.Cloud.Visionai.V1.SearchConfig

  rpc :UpdateSearchConfig,
      Google.Cloud.Visionai.V1.UpdateSearchConfigRequest,
      Google.Cloud.Visionai.V1.SearchConfig

  rpc :GetSearchConfig,
      Google.Cloud.Visionai.V1.GetSearchConfigRequest,
      Google.Cloud.Visionai.V1.SearchConfig

  rpc :DeleteSearchConfig,
      Google.Cloud.Visionai.V1.DeleteSearchConfigRequest,
      Google.Protobuf.Empty

  rpc :ListSearchConfigs,
      Google.Cloud.Visionai.V1.ListSearchConfigsRequest,
      Google.Cloud.Visionai.V1.ListSearchConfigsResponse

  rpc :CreateSearchHypernym,
      Google.Cloud.Visionai.V1.CreateSearchHypernymRequest,
      Google.Cloud.Visionai.V1.SearchHypernym

  rpc :UpdateSearchHypernym,
      Google.Cloud.Visionai.V1.UpdateSearchHypernymRequest,
      Google.Cloud.Visionai.V1.SearchHypernym

  rpc :GetSearchHypernym,
      Google.Cloud.Visionai.V1.GetSearchHypernymRequest,
      Google.Cloud.Visionai.V1.SearchHypernym

  rpc :DeleteSearchHypernym,
      Google.Cloud.Visionai.V1.DeleteSearchHypernymRequest,
      Google.Protobuf.Empty

  rpc :ListSearchHypernyms,
      Google.Cloud.Visionai.V1.ListSearchHypernymsRequest,
      Google.Cloud.Visionai.V1.ListSearchHypernymsResponse

  rpc :SearchAssets,
      Google.Cloud.Visionai.V1.SearchAssetsRequest,
      Google.Cloud.Visionai.V1.SearchAssetsResponse

  rpc :SearchIndexEndpoint,
      Google.Cloud.Visionai.V1.SearchIndexEndpointRequest,
      Google.Cloud.Visionai.V1.SearchIndexEndpointResponse

  rpc :CreateIndexEndpoint,
      Google.Cloud.Visionai.V1.CreateIndexEndpointRequest,
      Google.Longrunning.Operation

  rpc :GetIndexEndpoint,
      Google.Cloud.Visionai.V1.GetIndexEndpointRequest,
      Google.Cloud.Visionai.V1.IndexEndpoint

  rpc :ListIndexEndpoints,
      Google.Cloud.Visionai.V1.ListIndexEndpointsRequest,
      Google.Cloud.Visionai.V1.ListIndexEndpointsResponse

  rpc :UpdateIndexEndpoint,
      Google.Cloud.Visionai.V1.UpdateIndexEndpointRequest,
      Google.Longrunning.Operation

  rpc :DeleteIndexEndpoint,
      Google.Cloud.Visionai.V1.DeleteIndexEndpointRequest,
      Google.Longrunning.Operation

  rpc :DeployIndex, Google.Cloud.Visionai.V1.DeployIndexRequest, Google.Longrunning.Operation

  rpc :UndeployIndex, Google.Cloud.Visionai.V1.UndeployIndexRequest, Google.Longrunning.Operation

  rpc :CreateCollection,
      Google.Cloud.Visionai.V1.CreateCollectionRequest,
      Google.Longrunning.Operation

  rpc :DeleteCollection,
      Google.Cloud.Visionai.V1.DeleteCollectionRequest,
      Google.Longrunning.Operation

  rpc :GetCollection,
      Google.Cloud.Visionai.V1.GetCollectionRequest,
      Google.Cloud.Visionai.V1.Collection

  rpc :UpdateCollection,
      Google.Cloud.Visionai.V1.UpdateCollectionRequest,
      Google.Cloud.Visionai.V1.Collection

  rpc :ListCollections,
      Google.Cloud.Visionai.V1.ListCollectionsRequest,
      Google.Cloud.Visionai.V1.ListCollectionsResponse

  rpc :AddCollectionItem,
      Google.Cloud.Visionai.V1.AddCollectionItemRequest,
      Google.Cloud.Visionai.V1.AddCollectionItemResponse

  rpc :RemoveCollectionItem,
      Google.Cloud.Visionai.V1.RemoveCollectionItemRequest,
      Google.Cloud.Visionai.V1.RemoveCollectionItemResponse

  rpc :ViewCollectionItems,
      Google.Cloud.Visionai.V1.ViewCollectionItemsRequest,
      Google.Cloud.Visionai.V1.ViewCollectionItemsResponse
end

defmodule Google.Cloud.Visionai.V1.Warehouse.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Visionai.V1.Warehouse.Service
end