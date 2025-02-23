defmodule Google.Cloud.Video.Transcoder.V1.CreateJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :job, 2, type: Google.Cloud.Video.Transcoder.V1.Job, deprecated: false
end

defmodule Google.Cloud.Video.Transcoder.V1.ListJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Video.Transcoder.V1.GetJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Transcoder.V1.DeleteJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :allow_missing, 2, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Video.Transcoder.V1.ListJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :jobs, 1, repeated: true, type: Google.Cloud.Video.Transcoder.V1.Job
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Video.Transcoder.V1.CreateJobTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :job_template, 2,
    type: Google.Cloud.Video.Transcoder.V1.JobTemplate,
    json_name: "jobTemplate",
    deprecated: false

  field :job_template_id, 3, type: :string, json_name: "jobTemplateId", deprecated: false
end

defmodule Google.Cloud.Video.Transcoder.V1.ListJobTemplatesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Video.Transcoder.V1.GetJobTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Transcoder.V1.DeleteJobTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :allow_missing, 2, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Video.Transcoder.V1.ListJobTemplatesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :job_templates, 1,
    repeated: true,
    type: Google.Cloud.Video.Transcoder.V1.JobTemplate,
    json_name: "jobTemplates"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Video.Transcoder.V1.TranscoderService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.video.transcoder.v1.TranscoderService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CreateJob,
      Google.Cloud.Video.Transcoder.V1.CreateJobRequest,
      Google.Cloud.Video.Transcoder.V1.Job

  rpc :ListJobs,
      Google.Cloud.Video.Transcoder.V1.ListJobsRequest,
      Google.Cloud.Video.Transcoder.V1.ListJobsResponse

  rpc :GetJob,
      Google.Cloud.Video.Transcoder.V1.GetJobRequest,
      Google.Cloud.Video.Transcoder.V1.Job

  rpc :DeleteJob, Google.Cloud.Video.Transcoder.V1.DeleteJobRequest, Google.Protobuf.Empty

  rpc :CreateJobTemplate,
      Google.Cloud.Video.Transcoder.V1.CreateJobTemplateRequest,
      Google.Cloud.Video.Transcoder.V1.JobTemplate

  rpc :ListJobTemplates,
      Google.Cloud.Video.Transcoder.V1.ListJobTemplatesRequest,
      Google.Cloud.Video.Transcoder.V1.ListJobTemplatesResponse

  rpc :GetJobTemplate,
      Google.Cloud.Video.Transcoder.V1.GetJobTemplateRequest,
      Google.Cloud.Video.Transcoder.V1.JobTemplate

  rpc :DeleteJobTemplate,
      Google.Cloud.Video.Transcoder.V1.DeleteJobTemplateRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Video.Transcoder.V1.TranscoderService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Video.Transcoder.V1.TranscoderService.Service
end
