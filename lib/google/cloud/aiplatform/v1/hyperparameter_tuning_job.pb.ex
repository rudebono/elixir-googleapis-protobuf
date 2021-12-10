defmodule Google.Cloud.Aiplatform.V1.HyperparameterTuningJob.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

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

  defstruct name: "",
            display_name: "",
            study_spec: nil,
            max_trial_count: 0,
            parallel_trial_count: 0,
            max_failed_trial_count: 0,
            trial_job_spec: nil,
            trials: [],
            state: :JOB_STATE_UNSPECIFIED,
            create_time: nil,
            start_time: nil,
            end_time: nil,
            update_time: nil,
            error: nil,
            labels: %{},
            encryption_spec: nil

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :study_spec, 4,
    type: Google.Cloud.Aiplatform.V1.StudySpec,
    json_name: "studySpec",
    deprecated: false

  field :max_trial_count, 5, type: :int32, json_name: "maxTrialCount", deprecated: false
  field :parallel_trial_count, 6, type: :int32, json_name: "parallelTrialCount", deprecated: false
  field :max_failed_trial_count, 7, type: :int32, json_name: "maxFailedTrialCount"

  field :trial_job_spec, 8,
    type: Google.Cloud.Aiplatform.V1.CustomJobSpec,
    json_name: "trialJobSpec",
    deprecated: false

  field :trials, 9, repeated: true, type: Google.Cloud.Aiplatform.V1.Trial, deprecated: false
  field :state, 10, type: Google.Cloud.Aiplatform.V1.JobState, enum: true, deprecated: false

  field :create_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :start_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "startTime",
    deprecated: false

  field :end_time, 13, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :update_time, 14,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :error, 15, type: Google.Rpc.Status, deprecated: false

  field :labels, 16,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.HyperparameterTuningJob.LabelsEntry,
    map: true

  field :encryption_spec, 17,
    type: Google.Cloud.Aiplatform.V1.EncryptionSpec,
    json_name: "encryptionSpec"
end
