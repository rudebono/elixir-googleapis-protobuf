defmodule Google.Cloud.Discoveryengine.V1.ListCustomModelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :data_store, 1, type: :string, json_name: "dataStore", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.ListCustomModelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :models, 1, repeated: true, type: Google.Cloud.Discoveryengine.V1.CustomTuningModel
end

defmodule Google.Cloud.Discoveryengine.V1.TrainCustomModelRequest.GcsTrainingInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :corpus_data_path, 1, type: :string, json_name: "corpusDataPath"
  field :query_data_path, 2, type: :string, json_name: "queryDataPath"
  field :train_data_path, 3, type: :string, json_name: "trainDataPath"
  field :test_data_path, 4, type: :string, json_name: "testDataPath"
end

defmodule Google.Cloud.Discoveryengine.V1.TrainCustomModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :training_input, 0

  field :gcs_training_input, 2,
    type: Google.Cloud.Discoveryengine.V1.TrainCustomModelRequest.GcsTrainingInput,
    json_name: "gcsTrainingInput",
    oneof: 0

  field :data_store, 1, type: :string, json_name: "dataStore", deprecated: false
  field :model_type, 3, type: :string, json_name: "modelType"

  field :error_config, 4,
    type: Google.Cloud.Discoveryengine.V1.ImportErrorConfig,
    json_name: "errorConfig"

  field :model_id, 5, type: :string, json_name: "modelId"
end

defmodule Google.Cloud.Discoveryengine.V1.TrainCustomModelResponse.MetricsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :double
end

defmodule Google.Cloud.Discoveryengine.V1.TrainCustomModelResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :error_samples, 1, repeated: true, type: Google.Rpc.Status, json_name: "errorSamples"

  field :error_config, 2,
    type: Google.Cloud.Discoveryengine.V1.ImportErrorConfig,
    json_name: "errorConfig"

  field :model_status, 3, type: :string, json_name: "modelStatus"

  field :metrics, 4,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.TrainCustomModelResponse.MetricsEntry,
    map: true

  field :model_name, 5, type: :string, json_name: "modelName"
end

defmodule Google.Cloud.Discoveryengine.V1.TrainCustomModelMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1.SearchTuningService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1.SearchTuningService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :TrainCustomModel,
      Google.Cloud.Discoveryengine.V1.TrainCustomModelRequest,
      Google.Longrunning.Operation

  rpc :ListCustomModels,
      Google.Cloud.Discoveryengine.V1.ListCustomModelsRequest,
      Google.Cloud.Discoveryengine.V1.ListCustomModelsResponse
end

defmodule Google.Cloud.Discoveryengine.V1.SearchTuningService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1.SearchTuningService.Service
end