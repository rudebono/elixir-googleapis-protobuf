defmodule Google.Cloud.Aiplatform.V1.CreateCustomJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          custom_job: Google.Cloud.Aiplatform.V1.CustomJob.t() | nil
        }

  defstruct [:parent, :custom_job]

  field :parent, 1, type: :string
  field :custom_job, 2, type: Google.Cloud.Aiplatform.V1.CustomJob
end

defmodule Google.Cloud.Aiplatform.V1.GetCustomJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.ListCustomJobsRequest do
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

defmodule Google.Cloud.Aiplatform.V1.ListCustomJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          custom_jobs: [Google.Cloud.Aiplatform.V1.CustomJob.t()],
          next_page_token: String.t()
        }

  defstruct [:custom_jobs, :next_page_token]

  field :custom_jobs, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.CustomJob
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.DeleteCustomJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.CancelCustomJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.CreateDataLabelingJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          data_labeling_job: Google.Cloud.Aiplatform.V1.DataLabelingJob.t() | nil
        }

  defstruct [:parent, :data_labeling_job]

  field :parent, 1, type: :string
  field :data_labeling_job, 2, type: Google.Cloud.Aiplatform.V1.DataLabelingJob
end

defmodule Google.Cloud.Aiplatform.V1.GetDataLabelingJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.ListDataLabelingJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil,
          order_by: String.t()
        }

  defstruct [:parent, :filter, :page_size, :page_token, :read_mask, :order_by]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
  field :read_mask, 5, type: Google.Protobuf.FieldMask
  field :order_by, 6, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.ListDataLabelingJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_labeling_jobs: [Google.Cloud.Aiplatform.V1.DataLabelingJob.t()],
          next_page_token: String.t()
        }

  defstruct [:data_labeling_jobs, :next_page_token]

  field :data_labeling_jobs, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.DataLabelingJob
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.DeleteDataLabelingJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.CancelDataLabelingJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.CreateHyperparameterTuningJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          hyperparameter_tuning_job: Google.Cloud.Aiplatform.V1.HyperparameterTuningJob.t() | nil
        }

  defstruct [:parent, :hyperparameter_tuning_job]

  field :parent, 1, type: :string
  field :hyperparameter_tuning_job, 2, type: Google.Cloud.Aiplatform.V1.HyperparameterTuningJob
end

defmodule Google.Cloud.Aiplatform.V1.GetHyperparameterTuningJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.ListHyperparameterTuningJobsRequest do
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

defmodule Google.Cloud.Aiplatform.V1.ListHyperparameterTuningJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hyperparameter_tuning_jobs: [Google.Cloud.Aiplatform.V1.HyperparameterTuningJob.t()],
          next_page_token: String.t()
        }

  defstruct [:hyperparameter_tuning_jobs, :next_page_token]

  field :hyperparameter_tuning_jobs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.HyperparameterTuningJob

  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.DeleteHyperparameterTuningJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.CancelHyperparameterTuningJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.CreateBatchPredictionJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          batch_prediction_job: Google.Cloud.Aiplatform.V1.BatchPredictionJob.t() | nil
        }

  defstruct [:parent, :batch_prediction_job]

  field :parent, 1, type: :string
  field :batch_prediction_job, 2, type: Google.Cloud.Aiplatform.V1.BatchPredictionJob
end

defmodule Google.Cloud.Aiplatform.V1.GetBatchPredictionJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.ListBatchPredictionJobsRequest do
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

defmodule Google.Cloud.Aiplatform.V1.ListBatchPredictionJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          batch_prediction_jobs: [Google.Cloud.Aiplatform.V1.BatchPredictionJob.t()],
          next_page_token: String.t()
        }

  defstruct [:batch_prediction_jobs, :next_page_token]

  field :batch_prediction_jobs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.BatchPredictionJob

  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.DeleteBatchPredictionJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.CancelBatchPredictionJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end
