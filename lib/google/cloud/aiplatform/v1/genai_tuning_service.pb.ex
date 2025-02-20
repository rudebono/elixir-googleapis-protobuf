defmodule Google.Cloud.Aiplatform.V1.CreateTuningJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :tuning_job, 2,
    type: Google.Cloud.Aiplatform.V1.TuningJob,
    json_name: "tuningJob",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.GetTuningJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ListTuningJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ListTuningJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tuning_jobs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.TuningJob,
    json_name: "tuningJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.CancelTuningJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.RebaseTunedModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :tuned_model_ref, 2,
    type: Google.Cloud.Aiplatform.V1.TunedModelRef,
    json_name: "tunedModelRef",
    deprecated: false

  field :tuning_job, 3,
    type: Google.Cloud.Aiplatform.V1.TuningJob,
    json_name: "tuningJob",
    deprecated: false

  field :artifact_destination, 4,
    type: Google.Cloud.Aiplatform.V1.GcsDestination,
    json_name: "artifactDestination",
    deprecated: false

  field :deploy_to_same_endpoint, 5,
    type: :bool,
    json_name: "deployToSameEndpoint",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.RebaseTunedModelOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1.GenAiTuningService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1.GenAiTuningService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CreateTuningJob,
      Google.Cloud.Aiplatform.V1.CreateTuningJobRequest,
      Google.Cloud.Aiplatform.V1.TuningJob

  rpc :GetTuningJob,
      Google.Cloud.Aiplatform.V1.GetTuningJobRequest,
      Google.Cloud.Aiplatform.V1.TuningJob

  rpc :ListTuningJobs,
      Google.Cloud.Aiplatform.V1.ListTuningJobsRequest,
      Google.Cloud.Aiplatform.V1.ListTuningJobsResponse

  rpc :CancelTuningJob, Google.Cloud.Aiplatform.V1.CancelTuningJobRequest, Google.Protobuf.Empty

  rpc :RebaseTunedModel,
      Google.Cloud.Aiplatform.V1.RebaseTunedModelRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Aiplatform.V1.GenAiTuningService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1.GenAiTuningService.Service
end
