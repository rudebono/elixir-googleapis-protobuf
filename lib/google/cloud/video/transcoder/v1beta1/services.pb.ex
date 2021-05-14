defmodule Google.Cloud.Video.Transcoder.V1beta1.CreateJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          job: Google.Cloud.Video.Transcoder.V1beta1.Job.t() | nil
        }

  defstruct [:parent, :job]

  field :parent, 1, type: :string
  field :job, 2, type: Google.Cloud.Video.Transcoder.V1beta1.Job
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.ListJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.GetJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.DeleteJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.ListJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          jobs: [Google.Cloud.Video.Transcoder.V1beta1.Job.t()],
          next_page_token: String.t()
        }

  defstruct [:jobs, :next_page_token]

  field :jobs, 1, repeated: true, type: Google.Cloud.Video.Transcoder.V1beta1.Job
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.CreateJobTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          job_template: Google.Cloud.Video.Transcoder.V1beta1.JobTemplate.t() | nil,
          job_template_id: String.t()
        }

  defstruct [:parent, :job_template, :job_template_id]

  field :parent, 1, type: :string
  field :job_template, 2, type: Google.Cloud.Video.Transcoder.V1beta1.JobTemplate
  field :job_template_id, 3, type: :string
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.ListJobTemplatesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.GetJobTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.DeleteJobTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.ListJobTemplatesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_templates: [Google.Cloud.Video.Transcoder.V1beta1.JobTemplate.t()],
          next_page_token: String.t()
        }

  defstruct [:job_templates, :next_page_token]

  field :job_templates, 1, repeated: true, type: Google.Cloud.Video.Transcoder.V1beta1.JobTemplate
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.TranscoderService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.video.transcoder.v1beta1.TranscoderService"

  rpc :CreateJob,
      Google.Cloud.Video.Transcoder.V1beta1.CreateJobRequest,
      Google.Cloud.Video.Transcoder.V1beta1.Job

  rpc :ListJobs,
      Google.Cloud.Video.Transcoder.V1beta1.ListJobsRequest,
      Google.Cloud.Video.Transcoder.V1beta1.ListJobsResponse

  rpc :GetJob,
      Google.Cloud.Video.Transcoder.V1beta1.GetJobRequest,
      Google.Cloud.Video.Transcoder.V1beta1.Job

  rpc :DeleteJob, Google.Cloud.Video.Transcoder.V1beta1.DeleteJobRequest, Google.Protobuf.Empty

  rpc :CreateJobTemplate,
      Google.Cloud.Video.Transcoder.V1beta1.CreateJobTemplateRequest,
      Google.Cloud.Video.Transcoder.V1beta1.JobTemplate

  rpc :ListJobTemplates,
      Google.Cloud.Video.Transcoder.V1beta1.ListJobTemplatesRequest,
      Google.Cloud.Video.Transcoder.V1beta1.ListJobTemplatesResponse

  rpc :GetJobTemplate,
      Google.Cloud.Video.Transcoder.V1beta1.GetJobTemplateRequest,
      Google.Cloud.Video.Transcoder.V1beta1.JobTemplate

  rpc :DeleteJobTemplate,
      Google.Cloud.Video.Transcoder.V1beta1.DeleteJobTemplateRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.TranscoderService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Video.Transcoder.V1beta1.TranscoderService.Service
end
