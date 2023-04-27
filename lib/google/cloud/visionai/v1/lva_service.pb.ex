defmodule Google.Cloud.Visionai.V1.ListAnalysesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Visionai.V1.ListAnalysesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :analyses, 1, repeated: true, type: Google.Cloud.Visionai.V1.Analysis
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Visionai.V1.GetAnalysisRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.CreateAnalysisRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :analysis_id, 2, type: :string, json_name: "analysisId", deprecated: false
  field :analysis, 3, type: Google.Cloud.Visionai.V1.Analysis, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1.UpdateAnalysisRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :analysis, 2, type: Google.Cloud.Visionai.V1.Analysis, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1.DeleteAnalysisRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1.ListProcessesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Visionai.V1.ListProcessesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :processes, 1, repeated: true, type: Google.Cloud.Visionai.V1.Process
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Visionai.V1.GetProcessRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.CreateProcessRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :process_id, 2, type: :string, json_name: "processId", deprecated: false
  field :process, 3, type: Google.Cloud.Visionai.V1.Process, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1.UpdateProcessRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :process, 2, type: Google.Cloud.Visionai.V1.Process, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1.DeleteProcessRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1.BatchRunProcessRequest.BatchRunProcessOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :retry_count, 1, type: :int32, json_name: "retryCount"
  field :batch_size, 2, type: :int32, json_name: "batchSize"
end

defmodule Google.Cloud.Visionai.V1.BatchRunProcessRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1.CreateProcessRequest,
    deprecated: false

  field :options, 3,
    type: Google.Cloud.Visionai.V1.BatchRunProcessRequest.BatchRunProcessOptions,
    deprecated: false

  field :batch_id, 4, type: :string, json_name: "batchId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1.BatchRunProcessResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :batch_id, 1, type: :string, json_name: "batchId"
  field :processes, 2, repeated: true, type: Google.Cloud.Visionai.V1.Process
end

defmodule Google.Cloud.Visionai.V1.LiveVideoAnalytics.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.visionai.v1.LiveVideoAnalytics",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListAnalyses,
      Google.Cloud.Visionai.V1.ListAnalysesRequest,
      Google.Cloud.Visionai.V1.ListAnalysesResponse

  rpc :GetAnalysis, Google.Cloud.Visionai.V1.GetAnalysisRequest, Google.Cloud.Visionai.V1.Analysis

  rpc :CreateAnalysis,
      Google.Cloud.Visionai.V1.CreateAnalysisRequest,
      Google.Longrunning.Operation

  rpc :UpdateAnalysis,
      Google.Cloud.Visionai.V1.UpdateAnalysisRequest,
      Google.Longrunning.Operation

  rpc :DeleteAnalysis,
      Google.Cloud.Visionai.V1.DeleteAnalysisRequest,
      Google.Longrunning.Operation

  rpc :ListProcesses,
      Google.Cloud.Visionai.V1.ListProcessesRequest,
      Google.Cloud.Visionai.V1.ListProcessesResponse

  rpc :GetProcess, Google.Cloud.Visionai.V1.GetProcessRequest, Google.Cloud.Visionai.V1.Process

  rpc :CreateProcess, Google.Cloud.Visionai.V1.CreateProcessRequest, Google.Longrunning.Operation

  rpc :UpdateProcess, Google.Cloud.Visionai.V1.UpdateProcessRequest, Google.Longrunning.Operation

  rpc :DeleteProcess, Google.Cloud.Visionai.V1.DeleteProcessRequest, Google.Longrunning.Operation

  rpc :BatchRunProcess,
      Google.Cloud.Visionai.V1.BatchRunProcessRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Visionai.V1.LiveVideoAnalytics.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Visionai.V1.LiveVideoAnalytics.Service
end