defmodule Google.Cloud.Discoveryengine.V1alpha.GetEvaluationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ListEvaluationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ListEvaluationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :evaluations, 1, repeated: true, type: Google.Cloud.Discoveryengine.V1alpha.Evaluation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.CreateEvaluationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :evaluation, 2, type: Google.Cloud.Discoveryengine.V1alpha.Evaluation, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.CreateEvaluationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ListEvaluationResultsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :evaluation, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ListEvaluationResultsResponse.EvaluationResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :sample_query, 1,
    type: Google.Cloud.Discoveryengine.V1alpha.SampleQuery,
    json_name: "sampleQuery",
    deprecated: false

  field :quality_metrics, 2,
    type: Google.Cloud.Discoveryengine.V1alpha.QualityMetrics,
    json_name: "qualityMetrics",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ListEvaluationResultsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :evaluation_results, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.ListEvaluationResultsResponse.EvaluationResult,
    json_name: "evaluationResults"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.EvaluationService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1alpha.EvaluationService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :GetEvaluation,
      Google.Cloud.Discoveryengine.V1alpha.GetEvaluationRequest,
      Google.Cloud.Discoveryengine.V1alpha.Evaluation

  rpc :ListEvaluations,
      Google.Cloud.Discoveryengine.V1alpha.ListEvaluationsRequest,
      Google.Cloud.Discoveryengine.V1alpha.ListEvaluationsResponse

  rpc :CreateEvaluation,
      Google.Cloud.Discoveryengine.V1alpha.CreateEvaluationRequest,
      Google.Longrunning.Operation

  rpc :ListEvaluationResults,
      Google.Cloud.Discoveryengine.V1alpha.ListEvaluationResultsRequest,
      Google.Cloud.Discoveryengine.V1alpha.ListEvaluationResultsResponse
end

defmodule Google.Cloud.Discoveryengine.V1alpha.EvaluationService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1alpha.EvaluationService.Service
end