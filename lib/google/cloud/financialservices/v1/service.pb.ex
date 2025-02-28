defmodule Google.Cloud.Financialservices.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.AML.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.financialservices.v1.AML",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListInstances,
      Google.Cloud.Financialservices.V1.ListInstancesRequest,
      Google.Cloud.Financialservices.V1.ListInstancesResponse

  rpc :GetInstance,
      Google.Cloud.Financialservices.V1.GetInstanceRequest,
      Google.Cloud.Financialservices.V1.Instance

  rpc :CreateInstance,
      Google.Cloud.Financialservices.V1.CreateInstanceRequest,
      Google.Longrunning.Operation

  rpc :UpdateInstance,
      Google.Cloud.Financialservices.V1.UpdateInstanceRequest,
      Google.Longrunning.Operation

  rpc :DeleteInstance,
      Google.Cloud.Financialservices.V1.DeleteInstanceRequest,
      Google.Longrunning.Operation

  rpc :ImportRegisteredParties,
      Google.Cloud.Financialservices.V1.ImportRegisteredPartiesRequest,
      Google.Longrunning.Operation

  rpc :ExportRegisteredParties,
      Google.Cloud.Financialservices.V1.ExportRegisteredPartiesRequest,
      Google.Longrunning.Operation

  rpc :ListDatasets,
      Google.Cloud.Financialservices.V1.ListDatasetsRequest,
      Google.Cloud.Financialservices.V1.ListDatasetsResponse

  rpc :GetDataset,
      Google.Cloud.Financialservices.V1.GetDatasetRequest,
      Google.Cloud.Financialservices.V1.Dataset

  rpc :CreateDataset,
      Google.Cloud.Financialservices.V1.CreateDatasetRequest,
      Google.Longrunning.Operation

  rpc :UpdateDataset,
      Google.Cloud.Financialservices.V1.UpdateDatasetRequest,
      Google.Longrunning.Operation

  rpc :DeleteDataset,
      Google.Cloud.Financialservices.V1.DeleteDatasetRequest,
      Google.Longrunning.Operation

  rpc :ListModels,
      Google.Cloud.Financialservices.V1.ListModelsRequest,
      Google.Cloud.Financialservices.V1.ListModelsResponse

  rpc :GetModel,
      Google.Cloud.Financialservices.V1.GetModelRequest,
      Google.Cloud.Financialservices.V1.Model

  rpc :CreateModel,
      Google.Cloud.Financialservices.V1.CreateModelRequest,
      Google.Longrunning.Operation

  rpc :UpdateModel,
      Google.Cloud.Financialservices.V1.UpdateModelRequest,
      Google.Longrunning.Operation

  rpc :ExportModelMetadata,
      Google.Cloud.Financialservices.V1.ExportModelMetadataRequest,
      Google.Longrunning.Operation

  rpc :DeleteModel,
      Google.Cloud.Financialservices.V1.DeleteModelRequest,
      Google.Longrunning.Operation

  rpc :ListEngineConfigs,
      Google.Cloud.Financialservices.V1.ListEngineConfigsRequest,
      Google.Cloud.Financialservices.V1.ListEngineConfigsResponse

  rpc :GetEngineConfig,
      Google.Cloud.Financialservices.V1.GetEngineConfigRequest,
      Google.Cloud.Financialservices.V1.EngineConfig

  rpc :CreateEngineConfig,
      Google.Cloud.Financialservices.V1.CreateEngineConfigRequest,
      Google.Longrunning.Operation

  rpc :UpdateEngineConfig,
      Google.Cloud.Financialservices.V1.UpdateEngineConfigRequest,
      Google.Longrunning.Operation

  rpc :ExportEngineConfigMetadata,
      Google.Cloud.Financialservices.V1.ExportEngineConfigMetadataRequest,
      Google.Longrunning.Operation

  rpc :DeleteEngineConfig,
      Google.Cloud.Financialservices.V1.DeleteEngineConfigRequest,
      Google.Longrunning.Operation

  rpc :GetEngineVersion,
      Google.Cloud.Financialservices.V1.GetEngineVersionRequest,
      Google.Cloud.Financialservices.V1.EngineVersion

  rpc :ListEngineVersions,
      Google.Cloud.Financialservices.V1.ListEngineVersionsRequest,
      Google.Cloud.Financialservices.V1.ListEngineVersionsResponse

  rpc :ListPredictionResults,
      Google.Cloud.Financialservices.V1.ListPredictionResultsRequest,
      Google.Cloud.Financialservices.V1.ListPredictionResultsResponse

  rpc :GetPredictionResult,
      Google.Cloud.Financialservices.V1.GetPredictionResultRequest,
      Google.Cloud.Financialservices.V1.PredictionResult

  rpc :CreatePredictionResult,
      Google.Cloud.Financialservices.V1.CreatePredictionResultRequest,
      Google.Longrunning.Operation

  rpc :UpdatePredictionResult,
      Google.Cloud.Financialservices.V1.UpdatePredictionResultRequest,
      Google.Longrunning.Operation

  rpc :ExportPredictionResultMetadata,
      Google.Cloud.Financialservices.V1.ExportPredictionResultMetadataRequest,
      Google.Longrunning.Operation

  rpc :DeletePredictionResult,
      Google.Cloud.Financialservices.V1.DeletePredictionResultRequest,
      Google.Longrunning.Operation

  rpc :ListBacktestResults,
      Google.Cloud.Financialservices.V1.ListBacktestResultsRequest,
      Google.Cloud.Financialservices.V1.ListBacktestResultsResponse

  rpc :GetBacktestResult,
      Google.Cloud.Financialservices.V1.GetBacktestResultRequest,
      Google.Cloud.Financialservices.V1.BacktestResult

  rpc :CreateBacktestResult,
      Google.Cloud.Financialservices.V1.CreateBacktestResultRequest,
      Google.Longrunning.Operation

  rpc :UpdateBacktestResult,
      Google.Cloud.Financialservices.V1.UpdateBacktestResultRequest,
      Google.Longrunning.Operation

  rpc :ExportBacktestResultMetadata,
      Google.Cloud.Financialservices.V1.ExportBacktestResultMetadataRequest,
      Google.Longrunning.Operation

  rpc :DeleteBacktestResult,
      Google.Cloud.Financialservices.V1.DeleteBacktestResultRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Financialservices.V1.AML.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Financialservices.V1.AML.Service
end
