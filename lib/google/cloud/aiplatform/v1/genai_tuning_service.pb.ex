defmodule Google.Cloud.Aiplatform.V1.CreateTuningJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :tuning_job, 2,
    type: Google.Cloud.Aiplatform.V1.TuningJob,
    json_name: "tuningJob",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.GetTuningJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ListTuningJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ListTuningJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :tuning_jobs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.TuningJob,
    json_name: "tuningJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.CancelTuningJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.GenAiTuningService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1.GenAiTuningService",
    protoc_gen_elixir_version: "0.12.0"

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
end

defmodule Google.Cloud.Aiplatform.V1.GenAiTuningService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1.GenAiTuningService.Service
end