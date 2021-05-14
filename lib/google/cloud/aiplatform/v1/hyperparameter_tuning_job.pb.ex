defmodule Google.Cloud.Aiplatform.V1.HyperparameterTuningJob.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.HyperparameterTuningJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          study_spec: Google.Cloud.Aiplatform.V1.StudySpec.t() | nil,
          max_trial_count: integer,
          parallel_trial_count: integer,
          max_failed_trial_count: integer,
          trial_job_spec: Google.Cloud.Aiplatform.V1.CustomJobSpec.t() | nil,
          trials: [Google.Cloud.Aiplatform.V1.Trial.t()],
          state: Google.Cloud.Aiplatform.V1.JobState.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          error: Google.Rpc.Status.t() | nil,
          labels: %{String.t() => String.t()},
          encryption_spec: Google.Cloud.Aiplatform.V1.EncryptionSpec.t() | nil
        }

  defstruct [
    :name,
    :display_name,
    :study_spec,
    :max_trial_count,
    :parallel_trial_count,
    :max_failed_trial_count,
    :trial_job_spec,
    :trials,
    :state,
    :create_time,
    :start_time,
    :end_time,
    :update_time,
    :error,
    :labels,
    :encryption_spec
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :study_spec, 4, type: Google.Cloud.Aiplatform.V1.StudySpec
  field :max_trial_count, 5, type: :int32
  field :parallel_trial_count, 6, type: :int32
  field :max_failed_trial_count, 7, type: :int32
  field :trial_job_spec, 8, type: Google.Cloud.Aiplatform.V1.CustomJobSpec
  field :trials, 9, repeated: true, type: Google.Cloud.Aiplatform.V1.Trial
  field :state, 10, type: Google.Cloud.Aiplatform.V1.JobState, enum: true
  field :create_time, 11, type: Google.Protobuf.Timestamp
  field :start_time, 12, type: Google.Protobuf.Timestamp
  field :end_time, 13, type: Google.Protobuf.Timestamp
  field :update_time, 14, type: Google.Protobuf.Timestamp
  field :error, 15, type: Google.Rpc.Status

  field :labels, 16,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.HyperparameterTuningJob.LabelsEntry,
    map: true

  field :encryption_spec, 17, type: Google.Cloud.Aiplatform.V1.EncryptionSpec
end
