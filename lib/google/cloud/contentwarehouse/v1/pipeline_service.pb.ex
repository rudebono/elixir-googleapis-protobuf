defmodule Google.Cloud.Contentwarehouse.V1.RunPipelineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :pipeline, 0

  field :name, 1, type: :string, deprecated: false

  field :gcs_ingest_pipeline, 2,
    type: Google.Cloud.Contentwarehouse.V1.GcsIngestPipeline,
    json_name: "gcsIngestPipeline",
    oneof: 0

  field :gcs_ingest_with_doc_ai_processors_pipeline, 3,
    type: Google.Cloud.Contentwarehouse.V1.GcsIngestWithDocAiProcessorsPipeline,
    json_name: "gcsIngestWithDocAiProcessorsPipeline",
    oneof: 0

  field :export_cdw_pipeline, 4,
    type: Google.Cloud.Contentwarehouse.V1.ExportToCdwPipeline,
    json_name: "exportCdwPipeline",
    oneof: 0

  field :process_with_doc_ai_pipeline, 5,
    type: Google.Cloud.Contentwarehouse.V1.ProcessWithDocAiPipeline,
    json_name: "processWithDocAiPipeline",
    oneof: 0

  field :request_metadata, 6,
    type: Google.Cloud.Contentwarehouse.V1.RequestMetadata,
    json_name: "requestMetadata"
end

defmodule Google.Cloud.Contentwarehouse.V1.PipelineService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.contentwarehouse.v1.PipelineService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :RunPipeline,
      Google.Cloud.Contentwarehouse.V1.RunPipelineRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Contentwarehouse.V1.PipelineService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Contentwarehouse.V1.PipelineService.Service
end
