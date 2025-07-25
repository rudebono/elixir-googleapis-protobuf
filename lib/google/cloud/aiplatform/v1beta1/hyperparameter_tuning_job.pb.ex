defmodule Google.Cloud.Aiplatform.V1beta1.HyperparameterTuningJob.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.HyperparameterTuningJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :study_spec, 4,
    type: Google.Cloud.Aiplatform.V1beta1.StudySpec,
    json_name: "studySpec",
    deprecated: false

  field :max_trial_count, 5, type: :int32, json_name: "maxTrialCount", deprecated: false
  field :parallel_trial_count, 6, type: :int32, json_name: "parallelTrialCount", deprecated: false
  field :max_failed_trial_count, 7, type: :int32, json_name: "maxFailedTrialCount"

  field :trial_job_spec, 8,
    type: Google.Cloud.Aiplatform.V1beta1.CustomJobSpec,
    json_name: "trialJobSpec",
    deprecated: false

  field :trials, 9, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Trial, deprecated: false
  field :state, 10, type: Google.Cloud.Aiplatform.V1beta1.JobState, enum: true, deprecated: false

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
    type: Google.Cloud.Aiplatform.V1beta1.HyperparameterTuningJob.LabelsEntry,
    map: true

  field :encryption_spec, 17,
    type: Google.Cloud.Aiplatform.V1beta1.EncryptionSpec,
    json_name: "encryptionSpec"

  field :satisfies_pzs, 19, type: :bool, json_name: "satisfiesPzs", deprecated: false
  field :satisfies_pzi, 20, type: :bool, json_name: "satisfiesPzi", deprecated: false
end
