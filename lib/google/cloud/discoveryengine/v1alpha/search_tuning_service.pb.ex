defmodule Google.Cloud.Discoveryengine.V1alpha.TrainCustomModelRequest.GcsTrainingInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :corpus_data_path, 1, type: :string, json_name: "corpusDataPath"
  field :query_data_path, 2, type: :string, json_name: "queryDataPath"
  field :train_data_path, 3, type: :string, json_name: "trainDataPath"
  field :test_data_path, 4, type: :string, json_name: "testDataPath"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.TrainCustomModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :training_input, 0

  field :gcs_training_input, 2,
    type: Google.Cloud.Discoveryengine.V1alpha.TrainCustomModelRequest.GcsTrainingInput,
    json_name: "gcsTrainingInput",
    oneof: 0

  field :data_store, 1, type: :string, json_name: "dataStore", deprecated: false
  field :model_type, 3, type: :string, json_name: "modelType"

  field :error_config, 4,
    type: Google.Cloud.Discoveryengine.V1alpha.ImportErrorConfig,
    json_name: "errorConfig"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.TrainCustomModelResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :error_samples, 1, repeated: true, type: Google.Rpc.Status, json_name: "errorSamples"

  field :error_config, 2,
    type: Google.Cloud.Discoveryengine.V1alpha.ImportErrorConfig,
    json_name: "errorConfig"

  field :model_status, 3, type: :string, json_name: "modelStatus"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.TrainCustomModelMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.SearchTuningService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1alpha.SearchTuningService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :TrainCustomModel,
      Google.Cloud.Discoveryengine.V1alpha.TrainCustomModelRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Discoveryengine.V1alpha.SearchTuningService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1alpha.SearchTuningService.Service
end