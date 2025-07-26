defmodule Google.Cloud.Automl.V1beta1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :details, 0

  field :delete_details, 8,
    type: Google.Cloud.Automl.V1beta1.DeleteOperationMetadata,
    json_name: "deleteDetails",
    oneof: 0

  field :deploy_model_details, 24,
    type: Google.Cloud.Automl.V1beta1.DeployModelOperationMetadata,
    json_name: "deployModelDetails",
    oneof: 0

  field :undeploy_model_details, 25,
    type: Google.Cloud.Automl.V1beta1.UndeployModelOperationMetadata,
    json_name: "undeployModelDetails",
    oneof: 0

  field :create_model_details, 10,
    type: Google.Cloud.Automl.V1beta1.CreateModelOperationMetadata,
    json_name: "createModelDetails",
    oneof: 0

  field :import_data_details, 15,
    type: Google.Cloud.Automl.V1beta1.ImportDataOperationMetadata,
    json_name: "importDataDetails",
    oneof: 0

  field :batch_predict_details, 16,
    type: Google.Cloud.Automl.V1beta1.BatchPredictOperationMetadata,
    json_name: "batchPredictDetails",
    oneof: 0

  field :export_data_details, 21,
    type: Google.Cloud.Automl.V1beta1.ExportDataOperationMetadata,
    json_name: "exportDataDetails",
    oneof: 0

  field :export_model_details, 22,
    type: Google.Cloud.Automl.V1beta1.ExportModelOperationMetadata,
    json_name: "exportModelDetails",
    oneof: 0

  field :export_evaluated_examples_details, 26,
    type: Google.Cloud.Automl.V1beta1.ExportEvaluatedExamplesOperationMetadata,
    json_name: "exportEvaluatedExamplesDetails",
    oneof: 0

  field :progress_percent, 13, type: :int32, json_name: "progressPercent"

  field :partial_failures, 2,
    repeated: true,
    type: Google.Rpc.Status,
    json_name: "partialFailures"

  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Automl.V1beta1.DeleteOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Automl.V1beta1.DeployModelOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Automl.V1beta1.UndeployModelOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Automl.V1beta1.CreateModelOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Automl.V1beta1.ImportDataOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Automl.V1beta1.ExportDataOperationMetadata.ExportDataOutputInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :output_location, 0

  field :gcs_output_directory, 1, type: :string, json_name: "gcsOutputDirectory", oneof: 0
  field :bigquery_output_dataset, 2, type: :string, json_name: "bigqueryOutputDataset", oneof: 0
end

defmodule Google.Cloud.Automl.V1beta1.ExportDataOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :output_info, 1,
    type: Google.Cloud.Automl.V1beta1.ExportDataOperationMetadata.ExportDataOutputInfo,
    json_name: "outputInfo"
end

defmodule Google.Cloud.Automl.V1beta1.BatchPredictOperationMetadata.BatchPredictOutputInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :output_location, 0

  field :gcs_output_directory, 1, type: :string, json_name: "gcsOutputDirectory", oneof: 0
  field :bigquery_output_dataset, 2, type: :string, json_name: "bigqueryOutputDataset", oneof: 0
end

defmodule Google.Cloud.Automl.V1beta1.BatchPredictOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :input_config, 1,
    type: Google.Cloud.Automl.V1beta1.BatchPredictInputConfig,
    json_name: "inputConfig"

  field :output_info, 2,
    type: Google.Cloud.Automl.V1beta1.BatchPredictOperationMetadata.BatchPredictOutputInfo,
    json_name: "outputInfo"
end

defmodule Google.Cloud.Automl.V1beta1.ExportModelOperationMetadata.ExportModelOutputInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :gcs_output_directory, 1, type: :string, json_name: "gcsOutputDirectory"
end

defmodule Google.Cloud.Automl.V1beta1.ExportModelOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :output_info, 2,
    type: Google.Cloud.Automl.V1beta1.ExportModelOperationMetadata.ExportModelOutputInfo,
    json_name: "outputInfo"
end

defmodule Google.Cloud.Automl.V1beta1.ExportEvaluatedExamplesOperationMetadata.ExportEvaluatedExamplesOutputInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bigquery_output_dataset, 2, type: :string, json_name: "bigqueryOutputDataset"
end

defmodule Google.Cloud.Automl.V1beta1.ExportEvaluatedExamplesOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :output_info, 2,
    type:
      Google.Cloud.Automl.V1beta1.ExportEvaluatedExamplesOperationMetadata.ExportEvaluatedExamplesOutputInfo,
    json_name: "outputInfo"
end
