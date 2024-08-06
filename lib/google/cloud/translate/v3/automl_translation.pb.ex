defmodule Google.Cloud.Translation.V3.ImportDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :dataset, 1, type: :string, deprecated: false

  field :input_config, 2,
    type: Google.Cloud.Translation.V3.DatasetInputConfig,
    json_name: "inputConfig",
    deprecated: false
end

defmodule Google.Cloud.Translation.V3.DatasetInputConfig.InputFile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  field :usage, 2, type: :string, deprecated: false

  field :gcs_source, 3,
    type: Google.Cloud.Translation.V3.GcsInputSource,
    json_name: "gcsSource",
    oneof: 0
end

defmodule Google.Cloud.Translation.V3.DatasetInputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :input_files, 1,
    repeated: true,
    type: Google.Cloud.Translation.V3.DatasetInputConfig.InputFile,
    json_name: "inputFiles"
end

defmodule Google.Cloud.Translation.V3.ImportDataMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Translation.V3.OperationState, enum: true
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :error, 4, type: Google.Rpc.Status
end

defmodule Google.Cloud.Translation.V3.ExportDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :dataset, 1, type: :string, deprecated: false

  field :output_config, 2,
    type: Google.Cloud.Translation.V3.DatasetOutputConfig,
    json_name: "outputConfig",
    deprecated: false
end

defmodule Google.Cloud.Translation.V3.DatasetOutputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Translation.V3.GcsOutputDestination,
    json_name: "gcsDestination",
    oneof: 0
end

defmodule Google.Cloud.Translation.V3.ExportDataMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Translation.V3.OperationState, enum: true
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :error, 4, type: Google.Rpc.Status
end

defmodule Google.Cloud.Translation.V3.DeleteDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Translation.V3.DeleteDatasetMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Translation.V3.OperationState, enum: true
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :error, 4, type: Google.Rpc.Status
end

defmodule Google.Cloud.Translation.V3.GetDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Translation.V3.ListDatasetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Translation.V3.ListDatasetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :datasets, 1, repeated: true, type: Google.Cloud.Translation.V3.Dataset
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Translation.V3.CreateDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :dataset, 2, type: Google.Cloud.Translation.V3.Dataset, deprecated: false
end

defmodule Google.Cloud.Translation.V3.CreateDatasetMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Translation.V3.OperationState, enum: true
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :error, 4, type: Google.Rpc.Status
end

defmodule Google.Cloud.Translation.V3.ListExamplesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Translation.V3.ListExamplesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :examples, 1, repeated: true, type: Google.Cloud.Translation.V3.Example
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Translation.V3.Example do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :source_text, 2, type: :string, json_name: "sourceText"
  field :target_text, 3, type: :string, json_name: "targetText"
  field :usage, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Translation.V3.BatchTransferResourcesResponse.TransferResourceResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :source, 1, type: :string
  field :target, 2, type: :string
  field :error, 3, type: Google.Rpc.Status
end

defmodule Google.Cloud.Translation.V3.BatchTransferResourcesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :responses, 1,
    repeated: true,
    type: Google.Cloud.Translation.V3.BatchTransferResourcesResponse.TransferResourceResponse
end

defmodule Google.Cloud.Translation.V3.Dataset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :source_language_code, 3, type: :string, json_name: "sourceLanguageCode"
  field :target_language_code, 4, type: :string, json_name: "targetLanguageCode"
  field :example_count, 5, type: :int32, json_name: "exampleCount", deprecated: false
  field :train_example_count, 6, type: :int32, json_name: "trainExampleCount", deprecated: false

  field :validate_example_count, 7,
    type: :int32,
    json_name: "validateExampleCount",
    deprecated: false

  field :test_example_count, 8, type: :int32, json_name: "testExampleCount", deprecated: false

  field :create_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Translation.V3.CreateModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :model, 2, type: Google.Cloud.Translation.V3.Model, deprecated: false
end

defmodule Google.Cloud.Translation.V3.CreateModelMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Translation.V3.OperationState, enum: true
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :error, 4, type: Google.Rpc.Status
end

defmodule Google.Cloud.Translation.V3.ListModelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Translation.V3.ListModelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :models, 1, repeated: true, type: Google.Cloud.Translation.V3.Model
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Translation.V3.GetModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Translation.V3.DeleteModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Translation.V3.DeleteModelMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Translation.V3.OperationState, enum: true
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :error, 4, type: Google.Rpc.Status
end

defmodule Google.Cloud.Translation.V3.Model do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :dataset, 3, type: :string

  field :source_language_code, 4,
    type: :string,
    json_name: "sourceLanguageCode",
    deprecated: false

  field :target_language_code, 5,
    type: :string,
    json_name: "targetLanguageCode",
    deprecated: false

  field :train_example_count, 6, type: :int32, json_name: "trainExampleCount", deprecated: false

  field :validate_example_count, 7,
    type: :int32,
    json_name: "validateExampleCount",
    deprecated: false

  field :test_example_count, 12, type: :int32, json_name: "testExampleCount", deprecated: false

  field :create_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end