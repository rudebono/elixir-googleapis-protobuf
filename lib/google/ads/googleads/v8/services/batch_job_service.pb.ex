defmodule Google.Ads.Googleads.V8.Services.MutateBatchJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operation: Google.Ads.Googleads.V8.Services.BatchJobOperation.t() | nil
        }

  defstruct [:customer_id, :operation]

  field :customer_id, 1, type: :string, json_name: "customerId"
  field :operation, 2, type: Google.Ads.Googleads.V8.Services.BatchJobOperation

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.BatchJobOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {:create, Google.Ads.Googleads.V8.Resources.BatchJob.t() | nil}
        }

  defstruct [:operation]

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V8.Resources.BatchJob, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.MutateBatchJobResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: Google.Ads.Googleads.V8.Services.MutateBatchJobResult.t() | nil
        }

  defstruct [:result]

  field :result, 1, type: Google.Ads.Googleads.V8.Services.MutateBatchJobResult

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.MutateBatchJobResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.GetBatchJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.RunBatchJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.AddBatchJobOperationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          sequence_token: String.t(),
          mutate_operations: [Google.Ads.Googleads.V8.Services.MutateOperation.t()]
        }

  defstruct [:resource_name, :sequence_token, :mutate_operations]

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :sequence_token, 2, type: :string, json_name: "sequenceToken"

  field :mutate_operations, 3,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateOperation,
    json_name: "mutateOperations"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.AddBatchJobOperationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          total_operations: integer,
          next_sequence_token: String.t()
        }

  defstruct [:total_operations, :next_sequence_token]

  field :total_operations, 1, type: :int64, json_name: "totalOperations"
  field :next_sequence_token, 2, type: :string, json_name: "nextSequenceToken"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.ListBatchJobResultsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          page_token: String.t(),
          page_size: integer,
          response_content_type:
            Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:resource_name, :page_token, :page_size, :response_content_type]

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"

  field :response_content_type, 4,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true,
    json_name: "responseContentType"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.ListBatchJobResultsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V8.Services.BatchJobResult.t()],
          next_page_token: String.t()
        }

  defstruct [:results, :next_page_token]

  field :results, 1, repeated: true, type: Google.Ads.Googleads.V8.Services.BatchJobResult
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.BatchJobResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation_index: integer,
          mutate_operation_response:
            Google.Ads.Googleads.V8.Services.MutateOperationResponse.t() | nil,
          status: Google.Rpc.Status.t() | nil
        }

  defstruct [:operation_index, :mutate_operation_response, :status]

  field :operation_index, 1, type: :int64, json_name: "operationIndex"

  field :mutate_operation_response, 2,
    type: Google.Ads.Googleads.V8.Services.MutateOperationResponse,
    json_name: "mutateOperationResponse"

  field :status, 3, type: Google.Rpc.Status

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.BatchJobService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.BatchJobService"

  rpc :MutateBatchJob,
      Google.Ads.Googleads.V8.Services.MutateBatchJobRequest,
      Google.Ads.Googleads.V8.Services.MutateBatchJobResponse

  rpc :GetBatchJob,
      Google.Ads.Googleads.V8.Services.GetBatchJobRequest,
      Google.Ads.Googleads.V8.Resources.BatchJob

  rpc :ListBatchJobResults,
      Google.Ads.Googleads.V8.Services.ListBatchJobResultsRequest,
      Google.Ads.Googleads.V8.Services.ListBatchJobResultsResponse

  rpc :RunBatchJob,
      Google.Ads.Googleads.V8.Services.RunBatchJobRequest,
      Google.Longrunning.Operation

  rpc :AddBatchJobOperations,
      Google.Ads.Googleads.V8.Services.AddBatchJobOperationsRequest,
      Google.Ads.Googleads.V8.Services.AddBatchJobOperationsResponse
end

defmodule Google.Ads.Googleads.V8.Services.BatchJobService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.BatchJobService.Service
end
