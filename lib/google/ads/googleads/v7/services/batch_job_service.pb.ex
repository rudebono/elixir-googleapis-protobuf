defmodule Google.Ads.Googleads.V7.Services.MutateBatchJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operation: Google.Ads.Googleads.V7.Services.BatchJobOperation.t() | nil
        }

  defstruct customer_id: "",
            operation: nil

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
  field :operation, 2, type: Google.Ads.Googleads.V7.Services.BatchJobOperation, deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.BatchJobOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {:create, Google.Ads.Googleads.V7.Resources.BatchJob.t() | nil}
        }

  defstruct operation: nil

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V7.Resources.BatchJob, oneof: 0
end
defmodule Google.Ads.Googleads.V7.Services.MutateBatchJobResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: Google.Ads.Googleads.V7.Services.MutateBatchJobResult.t() | nil
        }

  defstruct result: nil

  field :result, 1, type: Google.Ads.Googleads.V7.Services.MutateBatchJobResult
end
defmodule Google.Ads.Googleads.V7.Services.MutateBatchJobResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName"
end
defmodule Google.Ads.Googleads.V7.Services.GetBatchJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.RunBatchJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.AddBatchJobOperationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          sequence_token: String.t(),
          mutate_operations: [Google.Ads.Googleads.V7.Services.MutateOperation.t()]
        }

  defstruct resource_name: "",
            sequence_token: "",
            mutate_operations: []

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :sequence_token, 2, type: :string, json_name: "sequenceToken"

  field :mutate_operations, 3,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.MutateOperation,
    json_name: "mutateOperations",
    deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.AddBatchJobOperationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          total_operations: integer,
          next_sequence_token: String.t()
        }

  defstruct total_operations: 0,
            next_sequence_token: ""

  field :total_operations, 1, type: :int64, json_name: "totalOperations"
  field :next_sequence_token, 2, type: :string, json_name: "nextSequenceToken"
end
defmodule Google.Ads.Googleads.V7.Services.ListBatchJobResultsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          page_token: String.t(),
          page_size: integer,
          response_content_type:
            Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct resource_name: "",
            page_token: "",
            page_size: 0,
            response_content_type: :UNSPECIFIED

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"

  field :response_content_type, 4,
    type: Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end
defmodule Google.Ads.Googleads.V7.Services.ListBatchJobResultsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V7.Services.BatchJobResult.t()],
          next_page_token: String.t()
        }

  defstruct results: [],
            next_page_token: ""

  field :results, 1, repeated: true, type: Google.Ads.Googleads.V7.Services.BatchJobResult
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Ads.Googleads.V7.Services.BatchJobResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation_index: integer,
          mutate_operation_response:
            Google.Ads.Googleads.V7.Services.MutateOperationResponse.t() | nil,
          status: Google.Rpc.Status.t() | nil
        }

  defstruct operation_index: 0,
            mutate_operation_response: nil,
            status: nil

  field :operation_index, 1, type: :int64, json_name: "operationIndex"

  field :mutate_operation_response, 2,
    type: Google.Ads.Googleads.V7.Services.MutateOperationResponse,
    json_name: "mutateOperationResponse"

  field :status, 3, type: Google.Rpc.Status
end
defmodule Google.Ads.Googleads.V7.Services.BatchJobService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.BatchJobService"

  rpc :MutateBatchJob,
      Google.Ads.Googleads.V7.Services.MutateBatchJobRequest,
      Google.Ads.Googleads.V7.Services.MutateBatchJobResponse

  rpc :GetBatchJob,
      Google.Ads.Googleads.V7.Services.GetBatchJobRequest,
      Google.Ads.Googleads.V7.Resources.BatchJob

  rpc :ListBatchJobResults,
      Google.Ads.Googleads.V7.Services.ListBatchJobResultsRequest,
      Google.Ads.Googleads.V7.Services.ListBatchJobResultsResponse

  rpc :RunBatchJob,
      Google.Ads.Googleads.V7.Services.RunBatchJobRequest,
      Google.Longrunning.Operation

  rpc :AddBatchJobOperations,
      Google.Ads.Googleads.V7.Services.AddBatchJobOperationsRequest,
      Google.Ads.Googleads.V7.Services.AddBatchJobOperationsResponse
end

defmodule Google.Ads.Googleads.V7.Services.BatchJobService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.BatchJobService.Service
end
