defmodule Google.Cloud.Aiplatform.V1beta1.ImportIndexRequest.ConnectorConfig.DatapointFieldMapping.NumericRestrict.ValueType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :VALUE_TYPE_UNSPECIFIED, 0
  field :INT, 1
  field :FLOAT, 2
  field :DOUBLE, 3
end

defmodule Google.Cloud.Aiplatform.V1beta1.NearestNeighborSearchOperationMetadata.RecordError.RecordErrorType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ERROR_TYPE_UNSPECIFIED, 0
  field :EMPTY_LINE, 1
  field :INVALID_JSON_SYNTAX, 2
  field :INVALID_CSV_SYNTAX, 3
  field :INVALID_AVRO_SYNTAX, 4
  field :INVALID_EMBEDDING_ID, 5
  field :EMBEDDING_SIZE_MISMATCH, 6
  field :NAMESPACE_MISSING, 7
  field :PARSING_ERROR, 8
  field :DUPLICATE_NAMESPACE, 9
  field :OP_IN_DATAPOINT, 10
  field :MULTIPLE_VALUES, 11
  field :INVALID_NUMERIC_VALUE, 12
  field :INVALID_ENCODING, 13
  field :INVALID_SPARSE_DIMENSIONS, 14
  field :INVALID_TOKEN_VALUE, 15
  field :INVALID_SPARSE_EMBEDDING, 16
  field :INVALID_EMBEDDING, 17
  field :INVALID_EMBEDDING_METADATA, 18
  field :EMBEDDING_METADATA_EXCEEDS_SIZE_LIMIT, 19
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateIndexRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :index, 2, type: Google.Cloud.Aiplatform.V1beta1.Index, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateIndexOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :nearest_neighbor_search_operation_metadata, 2,
    type: Google.Cloud.Aiplatform.V1beta1.NearestNeighborSearchOperationMetadata,
    json_name: "nearestNeighborSearchOperationMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetIndexRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListIndexesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListIndexesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :indexes, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Index
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateIndexRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :index, 1, type: Google.Cloud.Aiplatform.V1beta1.Index, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateIndexOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :nearest_neighbor_search_operation_metadata, 2,
    type: Google.Cloud.Aiplatform.V1beta1.NearestNeighborSearchOperationMetadata,
    json_name: "nearestNeighborSearchOperationMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ImportIndexRequest.ConnectorConfig.DatapointFieldMapping.Restrict do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :namespace, 1, type: :string, deprecated: false

  field :allow_column, 2,
    repeated: true,
    type: :string,
    json_name: "allowColumn",
    deprecated: false

  field :deny_column, 3, repeated: true, type: :string, json_name: "denyColumn", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ImportIndexRequest.ConnectorConfig.DatapointFieldMapping.NumericRestrict do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :namespace, 1, type: :string, deprecated: false
  field :value_column, 2, type: :string, json_name: "valueColumn", deprecated: false

  field :value_type, 3,
    type:
      Google.Cloud.Aiplatform.V1beta1.ImportIndexRequest.ConnectorConfig.DatapointFieldMapping.NumericRestrict.ValueType,
    json_name: "valueType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ImportIndexRequest.ConnectorConfig.DatapointFieldMapping do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id_column, 1, type: :string, json_name: "idColumn", deprecated: false
  field :embedding_column, 2, type: :string, json_name: "embeddingColumn", deprecated: false

  field :restricts, 3,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1beta1.ImportIndexRequest.ConnectorConfig.DatapointFieldMapping.Restrict,
    deprecated: false

  field :numeric_restricts, 4,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1beta1.ImportIndexRequest.ConnectorConfig.DatapointFieldMapping.NumericRestrict,
    json_name: "numericRestricts",
    deprecated: false

  field :metadata_columns, 5,
    repeated: true,
    type: :string,
    json_name: "metadataColumns",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ImportIndexRequest.ConnectorConfig.BigQuerySourceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :table_path, 1, type: :string, json_name: "tablePath", deprecated: false

  field :datapoint_field_mapping, 2,
    type:
      Google.Cloud.Aiplatform.V1beta1.ImportIndexRequest.ConnectorConfig.DatapointFieldMapping,
    json_name: "datapointFieldMapping",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ImportIndexRequest.ConnectorConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  field :big_query_source_config, 1,
    type: Google.Cloud.Aiplatform.V1beta1.ImportIndexRequest.ConnectorConfig.BigQuerySourceConfig,
    json_name: "bigQuerySourceConfig",
    oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.ImportIndexRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :is_complete_overwrite, 2,
    type: :bool,
    json_name: "isCompleteOverwrite",
    deprecated: false

  field :config, 3,
    type: Google.Cloud.Aiplatform.V1beta1.ImportIndexRequest.ConnectorConfig,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ImportIndexOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteIndexRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpsertDatapointsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :index, 1, type: :string, deprecated: false
  field :datapoints, 2, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.IndexDatapoint

  field :update_mask, 3,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpsertDatapointsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.RemoveDatapointsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :index, 1, type: :string, deprecated: false
  field :datapoint_ids, 2, repeated: true, type: :string, json_name: "datapointIds"
end

defmodule Google.Cloud.Aiplatform.V1beta1.RemoveDatapointsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.NearestNeighborSearchOperationMetadata.RecordError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :error_type, 1,
    type:
      Google.Cloud.Aiplatform.V1beta1.NearestNeighborSearchOperationMetadata.RecordError.RecordErrorType,
    json_name: "errorType",
    enum: true

  field :error_message, 2, type: :string, json_name: "errorMessage"
  field :source_gcs_uri, 3, type: :string, json_name: "sourceGcsUri"
  field :embedding_id, 4, type: :string, json_name: "embeddingId"
  field :raw_record, 5, type: :string, json_name: "rawRecord"
end

defmodule Google.Cloud.Aiplatform.V1beta1.NearestNeighborSearchOperationMetadata.ContentValidationStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :source_gcs_uri, 1, type: :string, json_name: "sourceGcsUri"
  field :valid_record_count, 2, type: :int64, json_name: "validRecordCount"
  field :invalid_record_count, 3, type: :int64, json_name: "invalidRecordCount"

  field :partial_errors, 4,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.NearestNeighborSearchOperationMetadata.RecordError,
    json_name: "partialErrors"

  field :valid_sparse_record_count, 5, type: :int64, json_name: "validSparseRecordCount"
  field :invalid_sparse_record_count, 6, type: :int64, json_name: "invalidSparseRecordCount"
end

defmodule Google.Cloud.Aiplatform.V1beta1.NearestNeighborSearchOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :content_validation_stats, 1,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1beta1.NearestNeighborSearchOperationMetadata.ContentValidationStats,
    json_name: "contentValidationStats"

  field :data_bytes_count, 2, type: :int64, json_name: "dataBytesCount"
end

defmodule Google.Cloud.Aiplatform.V1beta1.IndexService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1beta1.IndexService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateIndex,
      Google.Cloud.Aiplatform.V1beta1.CreateIndexRequest,
      Google.Longrunning.Operation

  rpc :GetIndex,
      Google.Cloud.Aiplatform.V1beta1.GetIndexRequest,
      Google.Cloud.Aiplatform.V1beta1.Index

  rpc :ImportIndex,
      Google.Cloud.Aiplatform.V1beta1.ImportIndexRequest,
      Google.Longrunning.Operation

  rpc :ListIndexes,
      Google.Cloud.Aiplatform.V1beta1.ListIndexesRequest,
      Google.Cloud.Aiplatform.V1beta1.ListIndexesResponse

  rpc :UpdateIndex,
      Google.Cloud.Aiplatform.V1beta1.UpdateIndexRequest,
      Google.Longrunning.Operation

  rpc :DeleteIndex,
      Google.Cloud.Aiplatform.V1beta1.DeleteIndexRequest,
      Google.Longrunning.Operation

  rpc :UpsertDatapoints,
      Google.Cloud.Aiplatform.V1beta1.UpsertDatapointsRequest,
      Google.Cloud.Aiplatform.V1beta1.UpsertDatapointsResponse

  rpc :RemoveDatapoints,
      Google.Cloud.Aiplatform.V1beta1.RemoveDatapointsRequest,
      Google.Cloud.Aiplatform.V1beta1.RemoveDatapointsResponse
end

defmodule Google.Cloud.Aiplatform.V1beta1.IndexService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.IndexService.Service
end
