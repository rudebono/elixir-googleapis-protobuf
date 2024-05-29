defmodule Google.Cloud.Discoveryengine.V1alpha.CustomTuningModel.ModelState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :MODEL_STATE_UNSPECIFIED, 0
  field :TRAINING_PAUSED, 1
  field :TRAINING, 2
  field :TRAINING_COMPLETE, 3
  field :READY_FOR_SERVING, 4
  field :TRAINING_FAILED, 5
end

defmodule Google.Cloud.Discoveryengine.V1alpha.CustomTuningModel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :model_version, 3, type: :int64, json_name: "modelVersion"

  field :model_state, 4,
    type: Google.Cloud.Discoveryengine.V1alpha.CustomTuningModel.ModelState,
    json_name: "modelState",
    enum: true

  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :training_start_time, 6, type: Google.Protobuf.Timestamp, json_name: "trainingStartTime"
end