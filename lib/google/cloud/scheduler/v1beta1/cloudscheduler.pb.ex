defmodule Google.Cloud.Scheduler.V1beta1.ListJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 4, type: :string
  field :page_size, 5, type: :int32, json_name: "pageSize"
  field :page_token, 6, type: :string, json_name: "pageToken"
  field :legacy_app_engine_cron, 7, type: :bool, json_name: "legacyAppEngineCron"
end

defmodule Google.Cloud.Scheduler.V1beta1.ListJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :jobs, 1, repeated: true, type: Google.Cloud.Scheduler.V1beta1.Job
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Scheduler.V1beta1.GetJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Scheduler.V1beta1.CreateJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :job, 2, type: Google.Cloud.Scheduler.V1beta1.Job, deprecated: false
end

defmodule Google.Cloud.Scheduler.V1beta1.UpdateJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :job, 1, type: Google.Cloud.Scheduler.V1beta1.Job, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Scheduler.V1beta1.DeleteJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :legacy_app_engine_cron, 2, type: :bool, json_name: "legacyAppEngineCron"
end

defmodule Google.Cloud.Scheduler.V1beta1.PauseJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Scheduler.V1beta1.ResumeJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Scheduler.V1beta1.RunJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :legacy_app_engine_cron, 2, type: :bool, json_name: "legacyAppEngineCron"
end

defmodule Google.Cloud.Scheduler.V1beta1.CloudScheduler.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.scheduler.v1beta1.CloudScheduler",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListJobs,
      Google.Cloud.Scheduler.V1beta1.ListJobsRequest,
      Google.Cloud.Scheduler.V1beta1.ListJobsResponse

  rpc :GetJob, Google.Cloud.Scheduler.V1beta1.GetJobRequest, Google.Cloud.Scheduler.V1beta1.Job

  rpc :CreateJob,
      Google.Cloud.Scheduler.V1beta1.CreateJobRequest,
      Google.Cloud.Scheduler.V1beta1.Job

  rpc :UpdateJob,
      Google.Cloud.Scheduler.V1beta1.UpdateJobRequest,
      Google.Cloud.Scheduler.V1beta1.Job

  rpc :DeleteJob, Google.Cloud.Scheduler.V1beta1.DeleteJobRequest, Google.Protobuf.Empty

  rpc :PauseJob,
      Google.Cloud.Scheduler.V1beta1.PauseJobRequest,
      Google.Cloud.Scheduler.V1beta1.Job

  rpc :ResumeJob,
      Google.Cloud.Scheduler.V1beta1.ResumeJobRequest,
      Google.Cloud.Scheduler.V1beta1.Job

  rpc :RunJob, Google.Cloud.Scheduler.V1beta1.RunJobRequest, Google.Cloud.Scheduler.V1beta1.Job
end

defmodule Google.Cloud.Scheduler.V1beta1.CloudScheduler.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Scheduler.V1beta1.CloudScheduler.Service
end
