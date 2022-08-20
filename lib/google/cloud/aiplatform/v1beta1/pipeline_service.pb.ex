defmodule Google.Cloud.Aiplatform.V1beta1.CreateTrainingPipelineRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :training_pipeline, 2,
    type: Google.Cloud.Aiplatform.V1beta1.TrainingPipeline,
    json_name: "trainingPipeline",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetTrainingPipelineRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListTrainingPipelinesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListTrainingPipelinesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :training_pipelines, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.TrainingPipeline,
    json_name: "trainingPipelines"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteTrainingPipelineRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CancelTrainingPipelineRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreatePipelineJobRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :pipeline_job, 2,
    type: Google.Cloud.Aiplatform.V1beta1.PipelineJob,
    json_name: "pipelineJob",
    deprecated: false

  field :pipeline_job_id, 3, type: :string, json_name: "pipelineJobId"
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetPipelineJobRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListPipelineJobsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :order_by, 6, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListPipelineJobsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pipeline_jobs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.PipelineJob,
    json_name: "pipelineJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeletePipelineJobRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CancelPipelineJobRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PipelineService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.aiplatform.v1beta1.PipelineService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :CreateTrainingPipeline,
      Google.Cloud.Aiplatform.V1beta1.CreateTrainingPipelineRequest,
      Google.Cloud.Aiplatform.V1beta1.TrainingPipeline

  rpc :GetTrainingPipeline,
      Google.Cloud.Aiplatform.V1beta1.GetTrainingPipelineRequest,
      Google.Cloud.Aiplatform.V1beta1.TrainingPipeline

  rpc :ListTrainingPipelines,
      Google.Cloud.Aiplatform.V1beta1.ListTrainingPipelinesRequest,
      Google.Cloud.Aiplatform.V1beta1.ListTrainingPipelinesResponse

  rpc :DeleteTrainingPipeline,
      Google.Cloud.Aiplatform.V1beta1.DeleteTrainingPipelineRequest,
      Google.Longrunning.Operation

  rpc :CancelTrainingPipeline,
      Google.Cloud.Aiplatform.V1beta1.CancelTrainingPipelineRequest,
      Google.Protobuf.Empty

  rpc :CreatePipelineJob,
      Google.Cloud.Aiplatform.V1beta1.CreatePipelineJobRequest,
      Google.Cloud.Aiplatform.V1beta1.PipelineJob

  rpc :GetPipelineJob,
      Google.Cloud.Aiplatform.V1beta1.GetPipelineJobRequest,
      Google.Cloud.Aiplatform.V1beta1.PipelineJob

  rpc :ListPipelineJobs,
      Google.Cloud.Aiplatform.V1beta1.ListPipelineJobsRequest,
      Google.Cloud.Aiplatform.V1beta1.ListPipelineJobsResponse

  rpc :DeletePipelineJob,
      Google.Cloud.Aiplatform.V1beta1.DeletePipelineJobRequest,
      Google.Longrunning.Operation

  rpc :CancelPipelineJob,
      Google.Cloud.Aiplatform.V1beta1.CancelPipelineJobRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Aiplatform.V1beta1.PipelineService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.PipelineService.Service
end