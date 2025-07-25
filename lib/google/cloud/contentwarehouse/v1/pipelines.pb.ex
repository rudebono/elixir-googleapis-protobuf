defmodule Google.Cloud.Contentwarehouse.V1.RunPipelineResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Contentwarehouse.V1.RunPipelineMetadata.GcsIngestPipelineMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :input_path, 1, type: :string, json_name: "inputPath"
end

defmodule Google.Cloud.Contentwarehouse.V1.RunPipelineMetadata.ExportToCdwPipelineMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :documents, 1, repeated: true, type: :string
  field :doc_ai_dataset, 2, type: :string, json_name: "docAiDataset"
  field :output_path, 3, type: :string, json_name: "outputPath"
end

defmodule Google.Cloud.Contentwarehouse.V1.RunPipelineMetadata.ProcessWithDocAiPipelineMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :documents, 1, repeated: true, type: :string

  field :processor_info, 2,
    type: Google.Cloud.Contentwarehouse.V1.ProcessorInfo,
    json_name: "processorInfo"
end

defmodule Google.Cloud.Contentwarehouse.V1.RunPipelineMetadata.IndividualDocumentStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :document_id, 1, type: :string, json_name: "documentId"
  field :status, 2, type: Google.Rpc.Status
end

defmodule Google.Cloud.Contentwarehouse.V1.RunPipelineMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :pipeline_metadata, 0

  field :total_file_count, 1, type: :int32, json_name: "totalFileCount"
  field :failed_file_count, 2, type: :int32, json_name: "failedFileCount"
  field :user_info, 3, type: Google.Cloud.Contentwarehouse.V1.UserInfo, json_name: "userInfo"

  field :gcs_ingest_pipeline_metadata, 4,
    type: Google.Cloud.Contentwarehouse.V1.RunPipelineMetadata.GcsIngestPipelineMetadata,
    json_name: "gcsIngestPipelineMetadata",
    oneof: 0

  field :export_to_cdw_pipeline_metadata, 6,
    type: Google.Cloud.Contentwarehouse.V1.RunPipelineMetadata.ExportToCdwPipelineMetadata,
    json_name: "exportToCdwPipelineMetadata",
    oneof: 0

  field :process_with_doc_ai_pipeline_metadata, 7,
    type: Google.Cloud.Contentwarehouse.V1.RunPipelineMetadata.ProcessWithDocAiPipelineMetadata,
    json_name: "processWithDocAiPipelineMetadata",
    oneof: 0

  field :individual_document_statuses, 5,
    repeated: true,
    type: Google.Cloud.Contentwarehouse.V1.RunPipelineMetadata.IndividualDocumentStatus,
    json_name: "individualDocumentStatuses"
end

defmodule Google.Cloud.Contentwarehouse.V1.ProcessorInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :processor_name, 1, type: :string, json_name: "processorName"
  field :document_type, 2, type: :string, json_name: "documentType"
  field :schema_name, 3, type: :string, json_name: "schemaName"
end

defmodule Google.Cloud.Contentwarehouse.V1.IngestPipelineConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :document_acl_policy, 1, type: Google.Iam.V1.Policy, json_name: "documentAclPolicy"

  field :enable_document_text_extraction, 2,
    type: :bool,
    json_name: "enableDocumentTextExtraction"

  field :folder, 3, type: :string, deprecated: false
  field :cloud_function, 4, type: :string, json_name: "cloudFunction", deprecated: false
end

defmodule Google.Cloud.Contentwarehouse.V1.GcsIngestPipeline do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :input_path, 1, type: :string, json_name: "inputPath"
  field :schema_name, 2, type: :string, json_name: "schemaName"
  field :processor_type, 3, type: :string, json_name: "processorType"
  field :skip_ingested_documents, 4, type: :bool, json_name: "skipIngestedDocuments"

  field :pipeline_config, 5,
    type: Google.Cloud.Contentwarehouse.V1.IngestPipelineConfig,
    json_name: "pipelineConfig",
    deprecated: false
end

defmodule Google.Cloud.Contentwarehouse.V1.GcsIngestWithDocAiProcessorsPipeline do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :input_path, 1, type: :string, json_name: "inputPath"

  field :split_classify_processor_info, 2,
    type: Google.Cloud.Contentwarehouse.V1.ProcessorInfo,
    json_name: "splitClassifyProcessorInfo"

  field :extract_processor_infos, 3,
    repeated: true,
    type: Google.Cloud.Contentwarehouse.V1.ProcessorInfo,
    json_name: "extractProcessorInfos"

  field :processor_results_folder_path, 4, type: :string, json_name: "processorResultsFolderPath"
  field :skip_ingested_documents, 5, type: :bool, json_name: "skipIngestedDocuments"

  field :pipeline_config, 6,
    type: Google.Cloud.Contentwarehouse.V1.IngestPipelineConfig,
    json_name: "pipelineConfig",
    deprecated: false
end

defmodule Google.Cloud.Contentwarehouse.V1.ExportToCdwPipeline do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :documents, 1, repeated: true, type: :string
  field :export_folder_path, 2, type: :string, json_name: "exportFolderPath"
  field :doc_ai_dataset, 3, type: :string, json_name: "docAiDataset", deprecated: false
  field :training_split_ratio, 4, type: :float, json_name: "trainingSplitRatio"
end

defmodule Google.Cloud.Contentwarehouse.V1.ProcessWithDocAiPipeline do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :documents, 1, repeated: true, type: :string
  field :export_folder_path, 2, type: :string, json_name: "exportFolderPath"

  field :processor_info, 3,
    type: Google.Cloud.Contentwarehouse.V1.ProcessorInfo,
    json_name: "processorInfo"

  field :processor_results_folder_path, 4, type: :string, json_name: "processorResultsFolderPath"
end
