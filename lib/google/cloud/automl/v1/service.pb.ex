defmodule Google.Cloud.Automl.V1.CreateDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :dataset, 2, type: Google.Cloud.Automl.V1.Dataset, deprecated: false
end

defmodule Google.Cloud.Automl.V1.GetDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Automl.V1.ListDatasetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 3, type: :string
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 6, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Automl.V1.ListDatasetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :datasets, 1, repeated: true, type: Google.Cloud.Automl.V1.Dataset
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Automl.V1.UpdateDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :dataset, 1, type: Google.Cloud.Automl.V1.Dataset, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Automl.V1.DeleteDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Automl.V1.ImportDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :input_config, 3,
    type: Google.Cloud.Automl.V1.InputConfig,
    json_name: "inputConfig",
    deprecated: false
end

defmodule Google.Cloud.Automl.V1.ExportDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :output_config, 3,
    type: Google.Cloud.Automl.V1.OutputConfig,
    json_name: "outputConfig",
    deprecated: false
end

defmodule Google.Cloud.Automl.V1.GetAnnotationSpecRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Automl.V1.CreateModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :model, 4, type: Google.Cloud.Automl.V1.Model, deprecated: false
end

defmodule Google.Cloud.Automl.V1.GetModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Automl.V1.ListModelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 3, type: :string
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 6, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Automl.V1.ListModelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :model, 1, repeated: true, type: Google.Cloud.Automl.V1.Model
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Automl.V1.DeleteModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Automl.V1.UpdateModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :model, 1, type: Google.Cloud.Automl.V1.Model, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Automl.V1.DeployModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :model_deployment_metadata, 0

  field :image_object_detection_model_deployment_metadata, 2,
    type: Google.Cloud.Automl.V1.ImageObjectDetectionModelDeploymentMetadata,
    json_name: "imageObjectDetectionModelDeploymentMetadata",
    oneof: 0

  field :image_classification_model_deployment_metadata, 4,
    type: Google.Cloud.Automl.V1.ImageClassificationModelDeploymentMetadata,
    json_name: "imageClassificationModelDeploymentMetadata",
    oneof: 0

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Automl.V1.UndeployModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Automl.V1.ExportModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :output_config, 3,
    type: Google.Cloud.Automl.V1.ModelExportOutputConfig,
    json_name: "outputConfig",
    deprecated: false
end

defmodule Google.Cloud.Automl.V1.GetModelEvaluationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Automl.V1.ListModelEvaluationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 3, type: :string, deprecated: false
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 6, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Automl.V1.ListModelEvaluationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :model_evaluation, 1,
    repeated: true,
    type: Google.Cloud.Automl.V1.ModelEvaluation,
    json_name: "modelEvaluation"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Automl.V1.AutoMl.Service do
  @moduledoc false

  use GRPC.Service, name: "google.cloud.automl.v1.AutoMl", protoc_gen_elixir_version: "0.12.0"

  rpc :CreateDataset, Google.Cloud.Automl.V1.CreateDatasetRequest, Google.Longrunning.Operation

  rpc :GetDataset, Google.Cloud.Automl.V1.GetDatasetRequest, Google.Cloud.Automl.V1.Dataset

  rpc :ListDatasets,
      Google.Cloud.Automl.V1.ListDatasetsRequest,
      Google.Cloud.Automl.V1.ListDatasetsResponse

  rpc :UpdateDataset, Google.Cloud.Automl.V1.UpdateDatasetRequest, Google.Cloud.Automl.V1.Dataset

  rpc :DeleteDataset, Google.Cloud.Automl.V1.DeleteDatasetRequest, Google.Longrunning.Operation

  rpc :ImportData, Google.Cloud.Automl.V1.ImportDataRequest, Google.Longrunning.Operation

  rpc :ExportData, Google.Cloud.Automl.V1.ExportDataRequest, Google.Longrunning.Operation

  rpc :GetAnnotationSpec,
      Google.Cloud.Automl.V1.GetAnnotationSpecRequest,
      Google.Cloud.Automl.V1.AnnotationSpec

  rpc :CreateModel, Google.Cloud.Automl.V1.CreateModelRequest, Google.Longrunning.Operation

  rpc :GetModel, Google.Cloud.Automl.V1.GetModelRequest, Google.Cloud.Automl.V1.Model

  rpc :ListModels,
      Google.Cloud.Automl.V1.ListModelsRequest,
      Google.Cloud.Automl.V1.ListModelsResponse

  rpc :DeleteModel, Google.Cloud.Automl.V1.DeleteModelRequest, Google.Longrunning.Operation

  rpc :UpdateModel, Google.Cloud.Automl.V1.UpdateModelRequest, Google.Cloud.Automl.V1.Model

  rpc :DeployModel, Google.Cloud.Automl.V1.DeployModelRequest, Google.Longrunning.Operation

  rpc :UndeployModel, Google.Cloud.Automl.V1.UndeployModelRequest, Google.Longrunning.Operation

  rpc :ExportModel, Google.Cloud.Automl.V1.ExportModelRequest, Google.Longrunning.Operation

  rpc :GetModelEvaluation,
      Google.Cloud.Automl.V1.GetModelEvaluationRequest,
      Google.Cloud.Automl.V1.ModelEvaluation

  rpc :ListModelEvaluations,
      Google.Cloud.Automl.V1.ListModelEvaluationsRequest,
      Google.Cloud.Automl.V1.ListModelEvaluationsResponse
end

defmodule Google.Cloud.Automl.V1.AutoMl.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Automl.V1.AutoMl.Service
end