defmodule Google.Cloud.Aiplatform.V1beta1.NearestNeighborSearchOperationMetadata.RecordError.RecordErrorType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :ERROR_TYPE_UNSPECIFIED, 0
  field :EMPTY_LINE, 1
  field :INVALID_JSON_SYNTAX, 2
  field :INVALID_CSV_SYNTAX, 3
  field :INVALID_AVRO_SYNTAX, 4
  field :INVALID_EMBEDDING_ID, 5
  field :EMBEDDING_SIZE_MISMATCH, 6
  field :NAMESPACE_MISSING, 7
end
defmodule Google.Cloud.Aiplatform.V1beta1.CreateIndexRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :index, 2, type: Google.Cloud.Aiplatform.V1beta1.Index, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.CreateIndexOperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :nearest_neighbor_search_operation_metadata, 2,
    type: Google.Cloud.Aiplatform.V1beta1.NearestNeighborSearchOperationMetadata,
    json_name: "nearestNeighborSearchOperationMetadata"
end
defmodule Google.Cloud.Aiplatform.V1beta1.GetIndexRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.ListIndexesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
end
defmodule Google.Cloud.Aiplatform.V1beta1.ListIndexesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :indexes, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Index
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Aiplatform.V1beta1.UpdateIndexRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :index, 1, type: Google.Cloud.Aiplatform.V1beta1.Index, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Aiplatform.V1beta1.UpdateIndexOperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :nearest_neighbor_search_operation_metadata, 2,
    type: Google.Cloud.Aiplatform.V1beta1.NearestNeighborSearchOperationMetadata,
    json_name: "nearestNeighborSearchOperationMetadata"
end
defmodule Google.Cloud.Aiplatform.V1beta1.DeleteIndexRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.NearestNeighborSearchOperationMetadata.RecordError do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :source_gcs_uri, 1, type: :string, json_name: "sourceGcsUri"
  field :valid_record_count, 2, type: :int64, json_name: "validRecordCount"
  field :invalid_record_count, 3, type: :int64, json_name: "invalidRecordCount"

  field :partial_errors, 4,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.NearestNeighborSearchOperationMetadata.RecordError,
    json_name: "partialErrors"
end
defmodule Google.Cloud.Aiplatform.V1beta1.NearestNeighborSearchOperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
    protoc_gen_elixir_version: "0.10.0"

  rpc :CreateIndex,
      Google.Cloud.Aiplatform.V1beta1.CreateIndexRequest,
      Google.Longrunning.Operation

  rpc :GetIndex,
      Google.Cloud.Aiplatform.V1beta1.GetIndexRequest,
      Google.Cloud.Aiplatform.V1beta1.Index

  rpc :ListIndexes,
      Google.Cloud.Aiplatform.V1beta1.ListIndexesRequest,
      Google.Cloud.Aiplatform.V1beta1.ListIndexesResponse

  rpc :UpdateIndex,
      Google.Cloud.Aiplatform.V1beta1.UpdateIndexRequest,
      Google.Longrunning.Operation

  rpc :DeleteIndex,
      Google.Cloud.Aiplatform.V1beta1.DeleteIndexRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Aiplatform.V1beta1.IndexService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.IndexService.Service
end
