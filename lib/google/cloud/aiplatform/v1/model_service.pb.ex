defmodule Google.Cloud.Aiplatform.V1.UploadModelRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :parent_model, 4, type: :string, json_name: "parentModel", deprecated: false
  field :model_id, 5, type: :string, json_name: "modelId", deprecated: false
  field :model, 2, type: Google.Cloud.Aiplatform.V1.Model, deprecated: false
  field :service_account, 6, type: :string, json_name: "serviceAccount", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.UploadModelOperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1.UploadModelResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :model_version_id, 2, type: :string, json_name: "modelVersionId", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.GetModelRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ListModelsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
  field :order_by, 6, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Aiplatform.V1.ListModelsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :models, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.Model
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.ListModelVersionsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
end

defmodule Google.Cloud.Aiplatform.V1.ListModelVersionsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :models, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.Model
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.UpdateModelRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :model, 1, type: Google.Cloud.Aiplatform.V1.Model, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.DeleteModelRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.DeleteModelVersionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.MergeVersionAliasesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :version_aliases, 2,
    repeated: true,
    type: :string,
    json_name: "versionAliases",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ExportModelRequest.OutputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :export_format_id, 1, type: :string, json_name: "exportFormatId"

  field :artifact_destination, 3,
    type: Google.Cloud.Aiplatform.V1.GcsDestination,
    json_name: "artifactDestination"

  field :image_destination, 4,
    type: Google.Cloud.Aiplatform.V1.ContainerRegistryDestination,
    json_name: "imageDestination"
end

defmodule Google.Cloud.Aiplatform.V1.ExportModelRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :output_config, 2,
    type: Google.Cloud.Aiplatform.V1.ExportModelRequest.OutputConfig,
    json_name: "outputConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ExportModelOperationMetadata.OutputInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :artifact_output_uri, 2, type: :string, json_name: "artifactOutputUri", deprecated: false
  field :image_output_uri, 3, type: :string, json_name: "imageOutputUri", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ExportModelOperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :output_info, 2,
    type: Google.Cloud.Aiplatform.V1.ExportModelOperationMetadata.OutputInfo,
    json_name: "outputInfo",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ExportModelResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1.ImportModelEvaluationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :model_evaluation, 2,
    type: Google.Cloud.Aiplatform.V1.ModelEvaluation,
    json_name: "modelEvaluation",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.BatchImportModelEvaluationSlicesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :model_evaluation_slices, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ModelEvaluationSlice,
    json_name: "modelEvaluationSlices",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.BatchImportModelEvaluationSlicesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :imported_model_evaluation_slices, 1,
    repeated: true,
    type: :string,
    json_name: "importedModelEvaluationSlices",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.GetModelEvaluationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ListModelEvaluationsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
end

defmodule Google.Cloud.Aiplatform.V1.ListModelEvaluationsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :model_evaluations, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ModelEvaluation,
    json_name: "modelEvaluations"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.GetModelEvaluationSliceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ListModelEvaluationSlicesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
end

defmodule Google.Cloud.Aiplatform.V1.ListModelEvaluationSlicesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :model_evaluation_slices, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ModelEvaluationSlice,
    json_name: "modelEvaluationSlices"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.ModelService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.aiplatform.v1.ModelService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :UploadModel, Google.Cloud.Aiplatform.V1.UploadModelRequest, Google.Longrunning.Operation

  rpc :GetModel, Google.Cloud.Aiplatform.V1.GetModelRequest, Google.Cloud.Aiplatform.V1.Model

  rpc :ListModels,
      Google.Cloud.Aiplatform.V1.ListModelsRequest,
      Google.Cloud.Aiplatform.V1.ListModelsResponse

  rpc :ListModelVersions,
      Google.Cloud.Aiplatform.V1.ListModelVersionsRequest,
      Google.Cloud.Aiplatform.V1.ListModelVersionsResponse

  rpc :UpdateModel,
      Google.Cloud.Aiplatform.V1.UpdateModelRequest,
      Google.Cloud.Aiplatform.V1.Model

  rpc :DeleteModel, Google.Cloud.Aiplatform.V1.DeleteModelRequest, Google.Longrunning.Operation

  rpc :DeleteModelVersion,
      Google.Cloud.Aiplatform.V1.DeleteModelVersionRequest,
      Google.Longrunning.Operation

  rpc :MergeVersionAliases,
      Google.Cloud.Aiplatform.V1.MergeVersionAliasesRequest,
      Google.Cloud.Aiplatform.V1.Model

  rpc :ExportModel, Google.Cloud.Aiplatform.V1.ExportModelRequest, Google.Longrunning.Operation

  rpc :ImportModelEvaluation,
      Google.Cloud.Aiplatform.V1.ImportModelEvaluationRequest,
      Google.Cloud.Aiplatform.V1.ModelEvaluation

  rpc :BatchImportModelEvaluationSlices,
      Google.Cloud.Aiplatform.V1.BatchImportModelEvaluationSlicesRequest,
      Google.Cloud.Aiplatform.V1.BatchImportModelEvaluationSlicesResponse

  rpc :GetModelEvaluation,
      Google.Cloud.Aiplatform.V1.GetModelEvaluationRequest,
      Google.Cloud.Aiplatform.V1.ModelEvaluation

  rpc :ListModelEvaluations,
      Google.Cloud.Aiplatform.V1.ListModelEvaluationsRequest,
      Google.Cloud.Aiplatform.V1.ListModelEvaluationsResponse

  rpc :GetModelEvaluationSlice,
      Google.Cloud.Aiplatform.V1.GetModelEvaluationSliceRequest,
      Google.Cloud.Aiplatform.V1.ModelEvaluationSlice

  rpc :ListModelEvaluationSlices,
      Google.Cloud.Aiplatform.V1.ListModelEvaluationSlicesRequest,
      Google.Cloud.Aiplatform.V1.ListModelEvaluationSlicesResponse
end

defmodule Google.Cloud.Aiplatform.V1.ModelService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1.ModelService.Service
end