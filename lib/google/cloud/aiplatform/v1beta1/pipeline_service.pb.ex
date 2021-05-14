defmodule Google.Cloud.Aiplatform.V1beta1.CreateTrainingPipelineRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          training_pipeline: Google.Cloud.Aiplatform.V1beta1.TrainingPipeline.t() | nil
        }

  defstruct [:parent, :training_pipeline]

  field :parent, 1, type: :string
  field :training_pipeline, 2, type: Google.Cloud.Aiplatform.V1beta1.TrainingPipeline
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetTrainingPipelineRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListTrainingPipelinesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:parent, :filter, :page_size, :page_token, :read_mask]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
  field :read_mask, 5, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListTrainingPipelinesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          training_pipelines: [Google.Cloud.Aiplatform.V1beta1.TrainingPipeline.t()],
          next_page_token: String.t()
        }

  defstruct [:training_pipelines, :next_page_token]

  field :training_pipelines, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.TrainingPipeline

  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteTrainingPipelineRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.CancelTrainingPipelineRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreatePipelineJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          pipeline_job: Google.Cloud.Aiplatform.V1beta1.PipelineJob.t() | nil,
          pipeline_job_id: String.t()
        }

  defstruct [:parent, :pipeline_job, :pipeline_job_id]

  field :parent, 1, type: :string
  field :pipeline_job, 2, type: Google.Cloud.Aiplatform.V1beta1.PipelineJob
  field :pipeline_job_id, 3, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetPipelineJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListPipelineJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :filter, :page_size, :page_token]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListPipelineJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pipeline_jobs: [Google.Cloud.Aiplatform.V1beta1.PipelineJob.t()],
          next_page_token: String.t()
        }

  defstruct [:pipeline_jobs, :next_page_token]

  field :pipeline_jobs, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.PipelineJob
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeletePipelineJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.CancelPipelineJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end
