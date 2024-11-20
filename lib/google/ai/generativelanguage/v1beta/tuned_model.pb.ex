defmodule Google.Ai.Generativelanguage.V1beta.TunedModel.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :FAILED, 3
end

defmodule Google.Ai.Generativelanguage.V1beta.TunedModel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :source_model, 0

  field :tuned_model_source, 3,
    type: Google.Ai.Generativelanguage.V1beta.TunedModelSource,
    json_name: "tunedModelSource",
    oneof: 0,
    deprecated: false

  field :base_model, 4, type: :string, json_name: "baseModel", oneof: 0, deprecated: false
  field :name, 1, type: :string, deprecated: false
  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false
  field :description, 6, type: :string, deprecated: false
  field :temperature, 11, proto3_optional: true, type: :float, deprecated: false
  field :top_p, 12, proto3_optional: true, type: :float, json_name: "topP", deprecated: false
  field :top_k, 13, proto3_optional: true, type: :int32, json_name: "topK", deprecated: false

  field :state, 7,
    type: Google.Ai.Generativelanguage.V1beta.TunedModel.State,
    enum: true,
    deprecated: false

  field :create_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :tuning_task, 10,
    type: Google.Ai.Generativelanguage.V1beta.TuningTask,
    json_name: "tuningTask",
    deprecated: false

  field :reader_project_numbers, 14,
    repeated: true,
    type: :int64,
    json_name: "readerProjectNumbers",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.TunedModelSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :tuned_model, 1, type: :string, json_name: "tunedModel", deprecated: false
  field :base_model, 2, type: :string, json_name: "baseModel", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.TuningTask do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false

  field :complete_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "completeTime",
    deprecated: false

  field :snapshots, 3,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.TuningSnapshot,
    deprecated: false

  field :training_data, 4,
    type: Google.Ai.Generativelanguage.V1beta.Dataset,
    json_name: "trainingData",
    deprecated: false

  field :hyperparameters, 5,
    type: Google.Ai.Generativelanguage.V1beta.Hyperparameters,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.Hyperparameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :learning_rate_option, 0

  field :learning_rate, 16, type: :float, json_name: "learningRate", oneof: 0, deprecated: false

  field :learning_rate_multiplier, 17,
    type: :float,
    json_name: "learningRateMultiplier",
    oneof: 0,
    deprecated: false

  field :epoch_count, 14,
    proto3_optional: true,
    type: :int32,
    json_name: "epochCount",
    deprecated: false

  field :batch_size, 15,
    proto3_optional: true,
    type: :int32,
    json_name: "batchSize",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.Dataset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :dataset, 0

  field :examples, 1,
    type: Google.Ai.Generativelanguage.V1beta.TuningExamples,
    oneof: 0,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.TuningExamples do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :examples, 1, repeated: true, type: Google.Ai.Generativelanguage.V1beta.TuningExample
end

defmodule Google.Ai.Generativelanguage.V1beta.TuningExample do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :model_input, 0

  field :text_input, 1, type: :string, json_name: "textInput", oneof: 0, deprecated: false
  field :output, 3, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.TuningSnapshot do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :step, 1, type: :int32, deprecated: false
  field :epoch, 2, type: :int32, deprecated: false
  field :mean_loss, 3, type: :float, json_name: "meanLoss", deprecated: false

  field :compute_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "computeTime",
    deprecated: false
end