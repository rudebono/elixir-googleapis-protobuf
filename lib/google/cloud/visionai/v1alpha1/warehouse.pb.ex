defmodule Google.Cloud.Visionai.V1alpha1.FacetBucketType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :FACET_BUCKET_TYPE_UNSPECIFIED, 0
  field :FACET_BUCKET_TYPE_VALUE, 1
  field :FACET_BUCKET_TYPE_DATETIME, 2
  field :FACET_BUCKET_TYPE_FIXED_RANGE, 3
  field :FACET_BUCKET_TYPE_CUSTOM_RANGE, 4
end

defmodule Google.Cloud.Visionai.V1alpha1.DataSchemaDetails.DataType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DATA_TYPE_UNSPECIFIED, 0
  field :INTEGER, 1
  field :FLOAT, 2
  field :STRING, 3
  field :DATETIME, 5
  field :GEO_COORDINATE, 7
  field :PROTO_ANY, 8
  field :BOOLEAN, 9
end

defmodule Google.Cloud.Visionai.V1alpha1.DataSchemaDetails.Granularity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :GRANULARITY_UNSPECIFIED, 0
  field :GRANULARITY_ASSET_LEVEL, 1
  field :GRANULARITY_PARTITION_LEVEL, 2
end

defmodule Google.Cloud.Visionai.V1alpha1.DataSchemaDetails.SearchStrategy.SearchStrategyType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :NO_SEARCH, 0
  field :EXACT_SEARCH, 1
  field :SMART_SEARCH, 2
end

defmodule Google.Cloud.Visionai.V1alpha1.FacetProperty.DateTimeBucketSpec.Granularity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :GRANULARITY_UNSPECIFIED, 0
  field :YEAR, 1
  field :MONTH, 2
  field :DAY, 3
end

defmodule Google.Cloud.Visionai.V1alpha1.IngestAssetRequest.Config.VideoType.ContainerFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CONTAINER_FORMAT_UNSPECIFIED, 0
  field :CONTAINER_FORMAT_MP4, 1
end

defmodule Google.Cloud.Visionai.V1alpha1.CreateAssetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :asset, 2, type: Google.Cloud.Visionai.V1alpha1.Asset, deprecated: false

  field :asset_id, 3,
    proto3_optional: true,
    type: :string,
    json_name: "assetId",
    deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.GetAssetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.ListAssetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Visionai.V1alpha1.ListAssetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :assets, 1, repeated: true, type: Google.Cloud.Visionai.V1alpha1.Asset
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Visionai.V1alpha1.UpdateAssetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :asset, 1, type: Google.Cloud.Visionai.V1alpha1.Asset, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Visionai.V1alpha1.DeleteAssetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.Asset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :ttl, 2, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Visionai.V1alpha1.CreateCorpusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :corpus, 2, type: Google.Cloud.Visionai.V1alpha1.Corpus, deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.CreateCorpusMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1alpha1.Corpus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false

  field :default_ttl, 5,
    type: Google.Protobuf.Duration,
    json_name: "defaultTtl",
    deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.GetCorpusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.UpdateCorpusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :corpus, 1, type: Google.Cloud.Visionai.V1alpha1.Corpus, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Visionai.V1alpha1.ListCorporaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Visionai.V1alpha1.ListCorporaResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :corpora, 1, repeated: true, type: Google.Cloud.Visionai.V1alpha1.Corpus
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Visionai.V1alpha1.DeleteCorpusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.CreateDataSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :data_schema, 2,
    type: Google.Cloud.Visionai.V1alpha1.DataSchema,
    json_name: "dataSchema",
    deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.DataSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :key, 2, type: :string, deprecated: false

  field :schema_details, 3,
    type: Google.Cloud.Visionai.V1alpha1.DataSchemaDetails,
    json_name: "schemaDetails"
end

defmodule Google.Cloud.Visionai.V1alpha1.DataSchemaDetails.ProtoAnyConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :type_uri, 1, type: :string, json_name: "typeUri"
end

defmodule Google.Cloud.Visionai.V1alpha1.DataSchemaDetails.SearchStrategy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :search_strategy_type, 1,
    type: Google.Cloud.Visionai.V1alpha1.DataSchemaDetails.SearchStrategy.SearchStrategyType,
    json_name: "searchStrategyType",
    enum: true
end

defmodule Google.Cloud.Visionai.V1alpha1.DataSchemaDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :type, 1, type: Google.Cloud.Visionai.V1alpha1.DataSchemaDetails.DataType, enum: true

  field :proto_any_config, 6,
    type: Google.Cloud.Visionai.V1alpha1.DataSchemaDetails.ProtoAnyConfig,
    json_name: "protoAnyConfig"

  field :granularity, 5,
    type: Google.Cloud.Visionai.V1alpha1.DataSchemaDetails.Granularity,
    enum: true

  field :search_strategy, 7,
    type: Google.Cloud.Visionai.V1alpha1.DataSchemaDetails.SearchStrategy,
    json_name: "searchStrategy"
end

defmodule Google.Cloud.Visionai.V1alpha1.UpdateDataSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :data_schema, 1,
    type: Google.Cloud.Visionai.V1alpha1.DataSchema,
    json_name: "dataSchema",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Visionai.V1alpha1.GetDataSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.DeleteDataSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.ListDataSchemasRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Visionai.V1alpha1.ListDataSchemasResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :data_schemas, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.DataSchema,
    json_name: "dataSchemas"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Visionai.V1alpha1.CreateAnnotationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :annotation, 2, type: Google.Cloud.Visionai.V1alpha1.Annotation, deprecated: false

  field :annotation_id, 3,
    proto3_optional: true,
    type: :string,
    json_name: "annotationId",
    deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.Annotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string

  field :user_specified_annotation, 2,
    type: Google.Cloud.Visionai.V1alpha1.UserSpecifiedAnnotation,
    json_name: "userSpecifiedAnnotation"
end

defmodule Google.Cloud.Visionai.V1alpha1.UserSpecifiedAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string, deprecated: false
  field :value, 2, type: Google.Cloud.Visionai.V1alpha1.AnnotationValue
  field :partition, 3, type: Google.Cloud.Visionai.V1alpha1.Partition
end

defmodule Google.Cloud.Visionai.V1alpha1.GeoCoordinate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :latitude, 1, type: :double
  field :longitude, 2, type: :double
end

defmodule Google.Cloud.Visionai.V1alpha1.AnnotationValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :value, 0

  field :int_value, 1, type: :int64, json_name: "intValue", oneof: 0
  field :float_value, 2, type: :float, json_name: "floatValue", oneof: 0
  field :str_value, 3, type: :string, json_name: "strValue", oneof: 0
  field :datetime_value, 5, type: :string, json_name: "datetimeValue", oneof: 0

  field :geo_coordinate, 7,
    type: Google.Cloud.Visionai.V1alpha1.GeoCoordinate,
    json_name: "geoCoordinate",
    oneof: 0

  field :proto_any_value, 8, type: Google.Protobuf.Any, json_name: "protoAnyValue", oneof: 0
  field :bool_value, 9, type: :bool, json_name: "boolValue", oneof: 0

  field :customized_struct_data_value, 10,
    type: Google.Protobuf.Struct,
    json_name: "customizedStructDataValue",
    oneof: 0
end

defmodule Google.Cloud.Visionai.V1alpha1.ListAnnotationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.ListAnnotationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :annotations, 1, repeated: true, type: Google.Cloud.Visionai.V1alpha1.Annotation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Visionai.V1alpha1.GetAnnotationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.UpdateAnnotationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :annotation, 1, type: Google.Cloud.Visionai.V1alpha1.Annotation, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Visionai.V1alpha1.DeleteAnnotationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.CreateSearchConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :search_config, 2,
    type: Google.Cloud.Visionai.V1alpha1.SearchConfig,
    json_name: "searchConfig",
    deprecated: false

  field :search_config_id, 3, type: :string, json_name: "searchConfigId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.UpdateSearchConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :search_config, 1,
    type: Google.Cloud.Visionai.V1alpha1.SearchConfig,
    json_name: "searchConfig",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Visionai.V1alpha1.GetSearchConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.DeleteSearchConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.ListSearchConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Visionai.V1alpha1.ListSearchConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :search_configs, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.SearchConfig,
    json_name: "searchConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Visionai.V1alpha1.SearchConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string

  field :facet_property, 2,
    type: Google.Cloud.Visionai.V1alpha1.FacetProperty,
    json_name: "facetProperty"

  field :search_criteria_property, 3,
    type: Google.Cloud.Visionai.V1alpha1.SearchCriteriaProperty,
    json_name: "searchCriteriaProperty"
end

defmodule Google.Cloud.Visionai.V1alpha1.FacetProperty.FixedRangeBucketSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :bucket_start, 1,
    type: Google.Cloud.Visionai.V1alpha1.FacetValue,
    json_name: "bucketStart"

  field :bucket_granularity, 2,
    type: Google.Cloud.Visionai.V1alpha1.FacetValue,
    json_name: "bucketGranularity"

  field :bucket_count, 3, type: :int32, json_name: "bucketCount"
end

defmodule Google.Cloud.Visionai.V1alpha1.FacetProperty.CustomRangeBucketSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :endpoints, 1, repeated: true, type: Google.Cloud.Visionai.V1alpha1.FacetValue
end

defmodule Google.Cloud.Visionai.V1alpha1.FacetProperty.DateTimeBucketSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :granularity, 1,
    type: Google.Cloud.Visionai.V1alpha1.FacetProperty.DateTimeBucketSpec.Granularity,
    enum: true
end

defmodule Google.Cloud.Visionai.V1alpha1.FacetProperty do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :range_facet_config, 0

  field :fixed_range_bucket_spec, 5,
    type: Google.Cloud.Visionai.V1alpha1.FacetProperty.FixedRangeBucketSpec,
    json_name: "fixedRangeBucketSpec",
    oneof: 0

  field :custom_range_bucket_spec, 6,
    type: Google.Cloud.Visionai.V1alpha1.FacetProperty.CustomRangeBucketSpec,
    json_name: "customRangeBucketSpec",
    oneof: 0

  field :datetime_bucket_spec, 7,
    type: Google.Cloud.Visionai.V1alpha1.FacetProperty.DateTimeBucketSpec,
    json_name: "datetimeBucketSpec",
    oneof: 0

  field :mapped_fields, 1, repeated: true, type: :string, json_name: "mappedFields"
  field :display_name, 2, type: :string, json_name: "displayName"
  field :result_size, 3, type: :int64, json_name: "resultSize"

  field :bucket_type, 4,
    type: Google.Cloud.Visionai.V1alpha1.FacetBucketType,
    json_name: "bucketType",
    enum: true
end

defmodule Google.Cloud.Visionai.V1alpha1.SearchCriteriaProperty do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :mapped_fields, 1, repeated: true, type: :string, json_name: "mappedFields"
end

defmodule Google.Cloud.Visionai.V1alpha1.FacetValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :value, 0

  field :string_value, 1, type: :string, json_name: "stringValue", oneof: 0
  field :integer_value, 2, type: :int64, json_name: "integerValue", oneof: 0
  field :datetime_value, 3, type: Google.Type.DateTime, json_name: "datetimeValue", oneof: 0
end

defmodule Google.Cloud.Visionai.V1alpha1.FacetBucket.Range do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start, 1, type: Google.Cloud.Visionai.V1alpha1.FacetValue
  field :end, 2, type: Google.Cloud.Visionai.V1alpha1.FacetValue
end

defmodule Google.Cloud.Visionai.V1alpha1.FacetBucket do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :bucket_value, 0

  field :value, 2, type: Google.Cloud.Visionai.V1alpha1.FacetValue, oneof: 0
  field :range, 4, type: Google.Cloud.Visionai.V1alpha1.FacetBucket.Range, oneof: 0
  field :selected, 3, type: :bool
end

defmodule Google.Cloud.Visionai.V1alpha1.FacetGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :facet_id, 1, type: :string, json_name: "facetId"
  field :display_name, 2, type: :string, json_name: "displayName"
  field :buckets, 3, repeated: true, type: Google.Cloud.Visionai.V1alpha1.FacetBucket

  field :bucket_type, 4,
    type: Google.Cloud.Visionai.V1alpha1.FacetBucketType,
    json_name: "bucketType",
    enum: true

  field :fetch_matched_annotations, 5, type: :bool, json_name: "fetchMatchedAnnotations"
end

defmodule Google.Cloud.Visionai.V1alpha1.IngestAssetRequest.Config.VideoType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :container_format, 1,
    type: Google.Cloud.Visionai.V1alpha1.IngestAssetRequest.Config.VideoType.ContainerFormat,
    json_name: "containerFormat",
    enum: true
end

defmodule Google.Cloud.Visionai.V1alpha1.IngestAssetRequest.Config do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :data_type, 0

  field :video_type, 2,
    type: Google.Cloud.Visionai.V1alpha1.IngestAssetRequest.Config.VideoType,
    json_name: "videoType",
    oneof: 0

  field :asset, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.IngestAssetRequest.TimeIndexedData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :data, 1, type: :bytes

  field :temporal_partition, 2,
    type: Google.Cloud.Visionai.V1alpha1.Partition.TemporalPartition,
    json_name: "temporalPartition"
end

defmodule Google.Cloud.Visionai.V1alpha1.IngestAssetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :streaming_request, 0

  field :config, 1, type: Google.Cloud.Visionai.V1alpha1.IngestAssetRequest.Config, oneof: 0

  field :time_indexed_data, 2,
    type: Google.Cloud.Visionai.V1alpha1.IngestAssetRequest.TimeIndexedData,
    json_name: "timeIndexedData",
    oneof: 0
end

defmodule Google.Cloud.Visionai.V1alpha1.IngestAssetResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :successfully_ingested_partition, 1,
    type: Google.Cloud.Visionai.V1alpha1.Partition.TemporalPartition,
    json_name: "successfullyIngestedPartition"
end

defmodule Google.Cloud.Visionai.V1alpha1.ClipAssetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :temporal_partition, 2,
    type: Google.Cloud.Visionai.V1alpha1.Partition.TemporalPartition,
    json_name: "temporalPartition",
    deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.ClipAssetResponse.TimeIndexedUri do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :temporal_partition, 1,
    type: Google.Cloud.Visionai.V1alpha1.Partition.TemporalPartition,
    json_name: "temporalPartition"

  field :uri, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.ClipAssetResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :time_indexed_uris, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.ClipAssetResponse.TimeIndexedUri,
    json_name: "timeIndexedUris"
end

defmodule Google.Cloud.Visionai.V1alpha1.GenerateHlsUriRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :temporal_partitions, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.Partition.TemporalPartition,
    json_name: "temporalPartitions",
    deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.GenerateHlsUriResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :uri, 1, type: :string

  field :temporal_partitions, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.Partition.TemporalPartition,
    json_name: "temporalPartitions"
end

defmodule Google.Cloud.Visionai.V1alpha1.SearchAssetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :corpus, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  field :content_time_ranges, 5,
    type: Google.Cloud.Visionai.V1alpha1.DateTimeRangeArray,
    json_name: "contentTimeRanges"

  field :criteria, 4, repeated: true, type: Google.Cloud.Visionai.V1alpha1.Criteria

  field :facet_selections, 6,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.FacetGroup,
    json_name: "facetSelections"

  field :result_annotation_keys, 8,
    repeated: true,
    type: :string,
    json_name: "resultAnnotationKeys"
end

defmodule Google.Cloud.Visionai.V1alpha1.DeleteAssetMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1alpha1.AnnotationMatchingResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :criteria, 1, type: Google.Cloud.Visionai.V1alpha1.Criteria

  field :matched_annotations, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.Annotation,
    json_name: "matchedAnnotations"

  field :status, 3, type: Google.Rpc.Status
end

defmodule Google.Cloud.Visionai.V1alpha1.SearchResultItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :asset, 1, type: :string

  field :segments, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.Partition.TemporalPartition,
    deprecated: true

  field :segment, 5, type: Google.Cloud.Visionai.V1alpha1.Partition.TemporalPartition

  field :requested_annotations, 3,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.Annotation,
    json_name: "requestedAnnotations"

  field :annotation_matching_results, 4,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.AnnotationMatchingResult,
    json_name: "annotationMatchingResults"
end

defmodule Google.Cloud.Visionai.V1alpha1.SearchAssetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :search_result_items, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.SearchResultItem,
    json_name: "searchResultItems"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  field :facet_results, 3,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.FacetGroup,
    json_name: "facetResults"
end

defmodule Google.Cloud.Visionai.V1alpha1.IntRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start, 1, proto3_optional: true, type: :int64
  field :end, 2, proto3_optional: true, type: :int64
end

defmodule Google.Cloud.Visionai.V1alpha1.FloatRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start, 1, proto3_optional: true, type: :float
  field :end, 2, proto3_optional: true, type: :float
end

defmodule Google.Cloud.Visionai.V1alpha1.StringArray do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :txt_values, 1, repeated: true, type: :string, json_name: "txtValues"
end

defmodule Google.Cloud.Visionai.V1alpha1.IntRangeArray do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :int_ranges, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.IntRange,
    json_name: "intRanges"
end

defmodule Google.Cloud.Visionai.V1alpha1.FloatRangeArray do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :float_ranges, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.FloatRange,
    json_name: "floatRanges"
end

defmodule Google.Cloud.Visionai.V1alpha1.DateTimeRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start, 1, type: Google.Type.DateTime
  field :end, 2, type: Google.Type.DateTime
end

defmodule Google.Cloud.Visionai.V1alpha1.DateTimeRangeArray do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :date_time_ranges, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.DateTimeRange,
    json_name: "dateTimeRanges"
end

defmodule Google.Cloud.Visionai.V1alpha1.CircleArea do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :latitude, 1, type: :double
  field :longitude, 2, type: :double
  field :radius_meter, 3, type: :double, json_name: "radiusMeter"
end

defmodule Google.Cloud.Visionai.V1alpha1.GeoLocationArray do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :circle_areas, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.CircleArea,
    json_name: "circleAreas"
end

defmodule Google.Cloud.Visionai.V1alpha1.BoolValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :value, 1, type: :bool
end

defmodule Google.Cloud.Visionai.V1alpha1.Criteria do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :value, 0

  field :text_array, 2,
    type: Google.Cloud.Visionai.V1alpha1.StringArray,
    json_name: "textArray",
    oneof: 0

  field :int_range_array, 3,
    type: Google.Cloud.Visionai.V1alpha1.IntRangeArray,
    json_name: "intRangeArray",
    oneof: 0

  field :float_range_array, 4,
    type: Google.Cloud.Visionai.V1alpha1.FloatRangeArray,
    json_name: "floatRangeArray",
    oneof: 0

  field :date_time_range_array, 5,
    type: Google.Cloud.Visionai.V1alpha1.DateTimeRangeArray,
    json_name: "dateTimeRangeArray",
    oneof: 0

  field :geo_location_array, 6,
    type: Google.Cloud.Visionai.V1alpha1.GeoLocationArray,
    json_name: "geoLocationArray",
    oneof: 0

  field :bool_value, 7,
    type: Google.Cloud.Visionai.V1alpha1.BoolValue,
    json_name: "boolValue",
    oneof: 0

  field :field, 1, type: :string
  field :fetch_matched_annotations, 8, type: :bool, json_name: "fetchMatchedAnnotations"
end

defmodule Google.Cloud.Visionai.V1alpha1.Partition.TemporalPartition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Visionai.V1alpha1.Partition.SpatialPartition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :x_min, 1, proto3_optional: true, type: :int64, json_name: "xMin"
  field :y_min, 2, proto3_optional: true, type: :int64, json_name: "yMin"
  field :x_max, 3, proto3_optional: true, type: :int64, json_name: "xMax"
  field :y_max, 4, proto3_optional: true, type: :int64, json_name: "yMax"
end

defmodule Google.Cloud.Visionai.V1alpha1.Partition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :temporal_partition, 1,
    type: Google.Cloud.Visionai.V1alpha1.Partition.TemporalPartition,
    json_name: "temporalPartition"

  field :spatial_partition, 2,
    type: Google.Cloud.Visionai.V1alpha1.Partition.SpatialPartition,
    json_name: "spatialPartition"
end

defmodule Google.Cloud.Visionai.V1alpha1.Warehouse.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.visionai.v1alpha1.Warehouse",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CreateAsset,
      Google.Cloud.Visionai.V1alpha1.CreateAssetRequest,
      Google.Cloud.Visionai.V1alpha1.Asset

  rpc :UpdateAsset,
      Google.Cloud.Visionai.V1alpha1.UpdateAssetRequest,
      Google.Cloud.Visionai.V1alpha1.Asset

  rpc :GetAsset,
      Google.Cloud.Visionai.V1alpha1.GetAssetRequest,
      Google.Cloud.Visionai.V1alpha1.Asset

  rpc :ListAssets,
      Google.Cloud.Visionai.V1alpha1.ListAssetsRequest,
      Google.Cloud.Visionai.V1alpha1.ListAssetsResponse

  rpc :DeleteAsset,
      Google.Cloud.Visionai.V1alpha1.DeleteAssetRequest,
      Google.Longrunning.Operation

  rpc :CreateCorpus,
      Google.Cloud.Visionai.V1alpha1.CreateCorpusRequest,
      Google.Longrunning.Operation

  rpc :GetCorpus,
      Google.Cloud.Visionai.V1alpha1.GetCorpusRequest,
      Google.Cloud.Visionai.V1alpha1.Corpus

  rpc :UpdateCorpus,
      Google.Cloud.Visionai.V1alpha1.UpdateCorpusRequest,
      Google.Cloud.Visionai.V1alpha1.Corpus

  rpc :ListCorpora,
      Google.Cloud.Visionai.V1alpha1.ListCorporaRequest,
      Google.Cloud.Visionai.V1alpha1.ListCorporaResponse

  rpc :DeleteCorpus, Google.Cloud.Visionai.V1alpha1.DeleteCorpusRequest, Google.Protobuf.Empty

  rpc :CreateDataSchema,
      Google.Cloud.Visionai.V1alpha1.CreateDataSchemaRequest,
      Google.Cloud.Visionai.V1alpha1.DataSchema

  rpc :UpdateDataSchema,
      Google.Cloud.Visionai.V1alpha1.UpdateDataSchemaRequest,
      Google.Cloud.Visionai.V1alpha1.DataSchema

  rpc :GetDataSchema,
      Google.Cloud.Visionai.V1alpha1.GetDataSchemaRequest,
      Google.Cloud.Visionai.V1alpha1.DataSchema

  rpc :DeleteDataSchema,
      Google.Cloud.Visionai.V1alpha1.DeleteDataSchemaRequest,
      Google.Protobuf.Empty

  rpc :ListDataSchemas,
      Google.Cloud.Visionai.V1alpha1.ListDataSchemasRequest,
      Google.Cloud.Visionai.V1alpha1.ListDataSchemasResponse

  rpc :CreateAnnotation,
      Google.Cloud.Visionai.V1alpha1.CreateAnnotationRequest,
      Google.Cloud.Visionai.V1alpha1.Annotation

  rpc :GetAnnotation,
      Google.Cloud.Visionai.V1alpha1.GetAnnotationRequest,
      Google.Cloud.Visionai.V1alpha1.Annotation

  rpc :ListAnnotations,
      Google.Cloud.Visionai.V1alpha1.ListAnnotationsRequest,
      Google.Cloud.Visionai.V1alpha1.ListAnnotationsResponse

  rpc :UpdateAnnotation,
      Google.Cloud.Visionai.V1alpha1.UpdateAnnotationRequest,
      Google.Cloud.Visionai.V1alpha1.Annotation

  rpc :DeleteAnnotation,
      Google.Cloud.Visionai.V1alpha1.DeleteAnnotationRequest,
      Google.Protobuf.Empty

  rpc :IngestAsset,
      stream(Google.Cloud.Visionai.V1alpha1.IngestAssetRequest),
      stream(Google.Cloud.Visionai.V1alpha1.IngestAssetResponse)

  rpc :ClipAsset,
      Google.Cloud.Visionai.V1alpha1.ClipAssetRequest,
      Google.Cloud.Visionai.V1alpha1.ClipAssetResponse

  rpc :GenerateHlsUri,
      Google.Cloud.Visionai.V1alpha1.GenerateHlsUriRequest,
      Google.Cloud.Visionai.V1alpha1.GenerateHlsUriResponse

  rpc :CreateSearchConfig,
      Google.Cloud.Visionai.V1alpha1.CreateSearchConfigRequest,
      Google.Cloud.Visionai.V1alpha1.SearchConfig

  rpc :UpdateSearchConfig,
      Google.Cloud.Visionai.V1alpha1.UpdateSearchConfigRequest,
      Google.Cloud.Visionai.V1alpha1.SearchConfig

  rpc :GetSearchConfig,
      Google.Cloud.Visionai.V1alpha1.GetSearchConfigRequest,
      Google.Cloud.Visionai.V1alpha1.SearchConfig

  rpc :DeleteSearchConfig,
      Google.Cloud.Visionai.V1alpha1.DeleteSearchConfigRequest,
      Google.Protobuf.Empty

  rpc :ListSearchConfigs,
      Google.Cloud.Visionai.V1alpha1.ListSearchConfigsRequest,
      Google.Cloud.Visionai.V1alpha1.ListSearchConfigsResponse

  rpc :SearchAssets,
      Google.Cloud.Visionai.V1alpha1.SearchAssetsRequest,
      Google.Cloud.Visionai.V1alpha1.SearchAssetsResponse
end

defmodule Google.Cloud.Visionai.V1alpha1.Warehouse.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Visionai.V1alpha1.Warehouse.Service
end
