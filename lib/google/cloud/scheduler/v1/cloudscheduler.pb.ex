defmodule Google.Cloud.Scheduler.V1.ListJobsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 5, type: :int32, json_name: "pageSize"
  field :page_token, 6, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Scheduler.V1.ListJobsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :jobs, 1, repeated: true, type: Google.Cloud.Scheduler.V1.Job
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Scheduler.V1.GetJobRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Scheduler.V1.CreateJobRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :job, 2, type: Google.Cloud.Scheduler.V1.Job, deprecated: false
end

defmodule Google.Cloud.Scheduler.V1.UpdateJobRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :job, 1, type: Google.Cloud.Scheduler.V1.Job, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Scheduler.V1.DeleteJobRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Scheduler.V1.PauseJobRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Scheduler.V1.ResumeJobRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Scheduler.V1.RunJobRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Scheduler.V1.CloudScheduler.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.scheduler.v1.CloudScheduler",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListJobs,
      Google.Cloud.Scheduler.V1.ListJobsRequest,
      Google.Cloud.Scheduler.V1.ListJobsResponse

  rpc :GetJob, Google.Cloud.Scheduler.V1.GetJobRequest, Google.Cloud.Scheduler.V1.Job

  rpc :CreateJob, Google.Cloud.Scheduler.V1.CreateJobRequest, Google.Cloud.Scheduler.V1.Job

  rpc :UpdateJob, Google.Cloud.Scheduler.V1.UpdateJobRequest, Google.Cloud.Scheduler.V1.Job

  rpc :DeleteJob, Google.Cloud.Scheduler.V1.DeleteJobRequest, Google.Protobuf.Empty

  rpc :PauseJob, Google.Cloud.Scheduler.V1.PauseJobRequest, Google.Cloud.Scheduler.V1.Job

  rpc :ResumeJob, Google.Cloud.Scheduler.V1.ResumeJobRequest, Google.Cloud.Scheduler.V1.Job

  rpc :RunJob, Google.Cloud.Scheduler.V1.RunJobRequest, Google.Cloud.Scheduler.V1.Job
end

defmodule Google.Cloud.Scheduler.V1.CloudScheduler.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Scheduler.V1.CloudScheduler.Service
end