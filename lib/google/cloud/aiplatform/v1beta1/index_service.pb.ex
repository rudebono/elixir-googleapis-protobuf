defmodule Google.Cloud.Aiplatform.V1beta1.NearestNeighborSearchOperationMetadata.RecordError.RecordErrorType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ERROR_TYPE_UNSPECIFIED
          | :EMPTY_LINE
          | :INVALID_JSON_SYNTAX
          | :INVALID_CSV_SYNTAX
          | :INVALID_AVRO_SYNTAX
          | :INVALID_EMBEDDING_ID
          | :EMBEDDING_SIZE_MISMATCH
          | :NAMESPACE_MISSING

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          index: Google.Cloud.Aiplatform.V1beta1.Index.t() | nil
        }

  defstruct [:parent, :index]

  field :parent, 1, type: :string
  field :index, 2, type: Google.Cloud.Aiplatform.V1beta1.Index

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateIndexOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil,
          nearest_neighbor_search_operation_metadata:
            Google.Cloud.Aiplatform.V1beta1.NearestNeighborSearchOperationMetadata.t() | nil
        }

  defstruct [:generic_metadata, :nearest_neighbor_search_operation_metadata]

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :nearest_neighbor_search_operation_metadata, 2,
    type: Google.Cloud.Aiplatform.V1beta1.NearestNeighborSearchOperationMetadata,
    json_name: "nearestNeighborSearchOperationMetadata"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetIndexRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListIndexesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:parent, :filter, :page_size, :page_token, :read_mask]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListIndexesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          indexes: [Google.Cloud.Aiplatform.V1beta1.Index.t()],
          next_page_token: String.t()
        }

  defstruct [:indexes, :next_page_token]

  field :indexes, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Index
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateIndexRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          index: Google.Cloud.Aiplatform.V1beta1.Index.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:index, :update_mask]

  field :index, 1, type: Google.Cloud.Aiplatform.V1beta1.Index
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateIndexOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil,
          nearest_neighbor_search_operation_metadata:
            Google.Cloud.Aiplatform.V1beta1.NearestNeighborSearchOperationMetadata.t() | nil
        }

  defstruct [:generic_metadata, :nearest_neighbor_search_operation_metadata]

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :nearest_neighbor_search_operation_metadata, 2,
    type: Google.Cloud.Aiplatform.V1beta1.NearestNeighborSearchOperationMetadata,
    json_name: "nearestNeighborSearchOperationMetadata"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteIndexRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.NearestNeighborSearchOperationMetadata.RecordError do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          error_type:
            Google.Cloud.Aiplatform.V1beta1.NearestNeighborSearchOperationMetadata.RecordError.RecordErrorType.t(),
          error_message: String.t(),
          source_gcs_uri: String.t(),
          embedding_id: String.t(),
          raw_record: String.t()
        }

  defstruct [:error_type, :error_message, :source_gcs_uri, :embedding_id, :raw_record]

  field :error_type, 1,
    type:
      Google.Cloud.Aiplatform.V1beta1.NearestNeighborSearchOperationMetadata.RecordError.RecordErrorType,
    enum: true,
    json_name: "errorType"

  field :error_message, 2, type: :string, json_name: "errorMessage"
  field :source_gcs_uri, 3, type: :string, json_name: "sourceGcsUri"
  field :embedding_id, 4, type: :string, json_name: "embeddingId"
  field :raw_record, 5, type: :string, json_name: "rawRecord"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.NearestNeighborSearchOperationMetadata.ContentValidationStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source_gcs_uri: String.t(),
          valid_record_count: integer,
          invalid_record_count: integer,
          partial_errors: [
            Google.Cloud.Aiplatform.V1beta1.NearestNeighborSearchOperationMetadata.RecordError.t()
          ]
        }

  defstruct [:source_gcs_uri, :valid_record_count, :invalid_record_count, :partial_errors]

  field :source_gcs_uri, 1, type: :string, json_name: "sourceGcsUri"
  field :valid_record_count, 2, type: :int64, json_name: "validRecordCount"
  field :invalid_record_count, 3, type: :int64, json_name: "invalidRecordCount"

  field :partial_errors, 4,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.NearestNeighborSearchOperationMetadata.RecordError,
    json_name: "partialErrors"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.NearestNeighborSearchOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content_validation_stats: [
            Google.Cloud.Aiplatform.V1beta1.NearestNeighborSearchOperationMetadata.ContentValidationStats.t()
          ],
          data_bytes_count: integer
        }

  defstruct [:content_validation_stats, :data_bytes_count]

  field :content_validation_stats, 1,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1beta1.NearestNeighborSearchOperationMetadata.ContentValidationStats,
    json_name: "contentValidationStats"

  field :data_bytes_count, 2, type: :int64, json_name: "dataBytesCount"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.IndexService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.aiplatform.v1beta1.IndexService"

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
