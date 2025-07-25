defmodule Google.Ads.Googleads.V20.Services.MutateBatchJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operation, 2,
    type: Google.Ads.Googleads.V20.Services.BatchJobOperation,
    deprecated: false
end

defmodule Google.Ads.Googleads.V20.Services.BatchJobOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V20.Resources.BatchJob, oneof: 0
  field :remove, 4, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V20.Services.MutateBatchJobResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :result, 1, type: Google.Ads.Googleads.V20.Services.MutateBatchJobResult
end

defmodule Google.Ads.Googleads.V20.Services.MutateBatchJobResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V20.Services.RunBatchJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V20.Services.AddBatchJobOperationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :sequence_token, 2, type: :string, json_name: "sequenceToken"

  field :mutate_operations, 3,
    repeated: true,
    type: Google.Ads.Googleads.V20.Services.MutateOperation,
    json_name: "mutateOperations",
    deprecated: false
end

defmodule Google.Ads.Googleads.V20.Services.AddBatchJobOperationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :total_operations, 1, type: :int64, json_name: "totalOperations"
  field :next_sequence_token, 2, type: :string, json_name: "nextSequenceToken"
end

defmodule Google.Ads.Googleads.V20.Services.ListBatchJobResultsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"

  field :response_content_type, 4,
    type: Google.Ads.Googleads.V20.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V20.Services.ListBatchJobResultsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :results, 1, repeated: true, type: Google.Ads.Googleads.V20.Services.BatchJobResult
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Ads.Googleads.V20.Services.BatchJobResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :operation_index, 1, type: :int64, json_name: "operationIndex"

  field :mutate_operation_response, 2,
    type: Google.Ads.Googleads.V20.Services.MutateOperationResponse,
    json_name: "mutateOperationResponse"

  field :status, 3, type: Google.Rpc.Status
end

defmodule Google.Ads.Googleads.V20.Services.BatchJobService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v20.services.BatchJobService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :MutateBatchJob,
      Google.Ads.Googleads.V20.Services.MutateBatchJobRequest,
      Google.Ads.Googleads.V20.Services.MutateBatchJobResponse

  rpc :ListBatchJobResults,
      Google.Ads.Googleads.V20.Services.ListBatchJobResultsRequest,
      Google.Ads.Googleads.V20.Services.ListBatchJobResultsResponse

  rpc :RunBatchJob,
      Google.Ads.Googleads.V20.Services.RunBatchJobRequest,
      Google.Longrunning.Operation

  rpc :AddBatchJobOperations,
      Google.Ads.Googleads.V20.Services.AddBatchJobOperationsRequest,
      Google.Ads.Googleads.V20.Services.AddBatchJobOperationsResponse
end

defmodule Google.Ads.Googleads.V20.Services.BatchJobService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V20.Services.BatchJobService.Service
end
