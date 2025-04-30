defmodule Google.Cloud.Aiplatform.V1beta1.AssessDataRequest.TuningValidationAssessmentConfig.DatasetUsage do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DATASET_USAGE_UNSPECIFIED, 0
  field :SFT_TRAINING, 1
  field :SFT_VALIDATION, 2
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :dataset, 2, type: Google.Cloud.Aiplatform.V1beta1.Dataset, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateDatasetOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :read_mask, 2, type: Google.Protobuf.FieldMask, json_name: "readMask"
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :dataset, 1, type: Google.Cloud.Aiplatform.V1beta1.Dataset, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateDatasetVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :dataset_version, 1,
    type: Google.Cloud.Aiplatform.V1beta1.DatasetVersion,
    json_name: "datasetVersion",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListDatasetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
  field :order_by, 6, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListDatasetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :datasets, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Dataset
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ImportDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :import_configs, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ImportDataConfig,
    json_name: "importConfigs",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ImportDataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.ImportDataOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExportDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :export_config, 2,
    type: Google.Cloud.Aiplatform.V1beta1.ExportDataConfig,
    json_name: "exportConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExportDataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :exported_files, 1, repeated: true, type: :string, json_name: "exportedFiles"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExportDataOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :gcs_output_directory, 2, type: :string, json_name: "gcsOutputDirectory"
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateDatasetVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :dataset_version, 2,
    type: Google.Cloud.Aiplatform.V1beta1.DatasetVersion,
    json_name: "datasetVersion",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateDatasetVersionOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteDatasetVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetDatasetVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :read_mask, 2, type: Google.Protobuf.FieldMask, json_name: "readMask"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListDatasetVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask", deprecated: false
  field :order_by, 6, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListDatasetVersionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :dataset_versions, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.DatasetVersion,
    json_name: "datasetVersions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.RestoreDatasetVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.RestoreDatasetVersionOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListDataItemsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
  field :order_by, 6, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListDataItemsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :data_items, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.DataItem,
    json_name: "dataItems"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.SearchDataItemsRequest.OrderByAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :saved_query, 1, type: :string, json_name: "savedQuery", deprecated: false
  field :order_by, 2, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Aiplatform.V1beta1.SearchDataItemsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :order, 0

  field :order_by_data_item, 12, type: :string, json_name: "orderByDataItem", oneof: 0

  field :order_by_annotation, 13,
    type: Google.Cloud.Aiplatform.V1beta1.SearchDataItemsRequest.OrderByAnnotation,
    json_name: "orderByAnnotation",
    oneof: 0

  field :dataset, 1, type: :string, deprecated: false
  field :saved_query, 2, type: :string, json_name: "savedQuery", deprecated: true
  field :data_labeling_job, 3, type: :string, json_name: "dataLabelingJob"
  field :data_item_filter, 4, type: :string, json_name: "dataItemFilter"
  field :annotations_filter, 5, type: :string, json_name: "annotationsFilter", deprecated: true
  field :annotation_filters, 11, repeated: true, type: :string, json_name: "annotationFilters"
  field :field_mask, 6, type: Google.Protobuf.FieldMask, json_name: "fieldMask"
  field :annotations_limit, 7, type: :int32, json_name: "annotationsLimit"
  field :page_size, 8, type: :int32, json_name: "pageSize"
  field :order_by, 9, type: :string, json_name: "orderBy", deprecated: true
  field :page_token, 10, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.SearchDataItemsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :data_item_views, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.DataItemView,
    json_name: "dataItemViews"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.DataItemView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :data_item, 1, type: Google.Cloud.Aiplatform.V1beta1.DataItem, json_name: "dataItem"
  field :annotations, 2, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Annotation
  field :has_truncated_annotations, 3, type: :bool, json_name: "hasTruncatedAnnotations"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListSavedQueriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
  field :order_by, 6, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListSavedQueriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :saved_queries, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.SavedQuery,
    json_name: "savedQueries"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteSavedQueryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetAnnotationSpecRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :read_mask, 2, type: Google.Protobuf.FieldMask, json_name: "readMask"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListAnnotationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
  field :order_by, 6, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListAnnotationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :annotations, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Annotation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.AssessDataRequest.TuningValidationAssessmentConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :model_name, 1, type: :string, json_name: "modelName", deprecated: false

  field :dataset_usage, 2,
    type:
      Google.Cloud.Aiplatform.V1beta1.AssessDataRequest.TuningValidationAssessmentConfig.DatasetUsage,
    json_name: "datasetUsage",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.AssessDataRequest.TuningResourceUsageAssessmentConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :model_name, 1, type: :string, json_name: "modelName", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.AssessDataRequest.BatchPredictionValidationAssessmentConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :model_name, 1, type: :string, json_name: "modelName", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.AssessDataRequest.BatchPredictionResourceUsageAssessmentConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :model_name, 1, type: :string, json_name: "modelName", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.AssessDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :assessment_config, 0

  oneof :read_config, 1

  field :tuning_validation_assessment_config, 2,
    type: Google.Cloud.Aiplatform.V1beta1.AssessDataRequest.TuningValidationAssessmentConfig,
    json_name: "tuningValidationAssessmentConfig",
    oneof: 0,
    deprecated: false

  field :tuning_resource_usage_assessment_config, 3,
    type: Google.Cloud.Aiplatform.V1beta1.AssessDataRequest.TuningResourceUsageAssessmentConfig,
    json_name: "tuningResourceUsageAssessmentConfig",
    oneof: 0,
    deprecated: false

  field :batch_prediction_validation_assessment_config, 6,
    type:
      Google.Cloud.Aiplatform.V1beta1.AssessDataRequest.BatchPredictionValidationAssessmentConfig,
    json_name: "batchPredictionValidationAssessmentConfig",
    oneof: 0,
    deprecated: false

  field :batch_prediction_resource_usage_assessment_config, 7,
    type:
      Google.Cloud.Aiplatform.V1beta1.AssessDataRequest.BatchPredictionResourceUsageAssessmentConfig,
    json_name: "batchPredictionResourceUsageAssessmentConfig",
    oneof: 0,
    deprecated: false

  field :gemini_template_config, 4,
    type: Google.Cloud.Aiplatform.V1beta1.GeminiTemplateConfig,
    json_name: "geminiTemplateConfig",
    oneof: 1,
    deprecated: false

  field :request_column_name, 5,
    type: :string,
    json_name: "requestColumnName",
    oneof: 1,
    deprecated: false

  field :name, 1, type: :string, deprecated: false

  field :gemini_request_read_config, 8,
    type: Google.Cloud.Aiplatform.V1beta1.GeminiRequestReadConfig,
    json_name: "geminiRequestReadConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.AssessDataResponse.TuningValidationAssessmentResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :errors, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.AssessDataResponse.TuningResourceUsageAssessmentResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :token_count, 1, type: :int64, json_name: "tokenCount"
  field :billable_character_count, 2, type: :int64, json_name: "billableCharacterCount"
end

defmodule Google.Cloud.Aiplatform.V1beta1.AssessDataResponse.BatchPredictionValidationAssessmentResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.AssessDataResponse.BatchPredictionResourceUsageAssessmentResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :token_count, 1, type: :int64, json_name: "tokenCount"
  field :audio_token_count, 2, type: :int64, json_name: "audioTokenCount"
end

defmodule Google.Cloud.Aiplatform.V1beta1.AssessDataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :assessment_result, 0

  field :tuning_validation_assessment_result, 1,
    type: Google.Cloud.Aiplatform.V1beta1.AssessDataResponse.TuningValidationAssessmentResult,
    json_name: "tuningValidationAssessmentResult",
    oneof: 0,
    deprecated: false

  field :tuning_resource_usage_assessment_result, 2,
    type: Google.Cloud.Aiplatform.V1beta1.AssessDataResponse.TuningResourceUsageAssessmentResult,
    json_name: "tuningResourceUsageAssessmentResult",
    oneof: 0,
    deprecated: false

  field :batch_prediction_validation_assessment_result, 3,
    type:
      Google.Cloud.Aiplatform.V1beta1.AssessDataResponse.BatchPredictionValidationAssessmentResult,
    json_name: "batchPredictionValidationAssessmentResult",
    oneof: 0,
    deprecated: false

  field :batch_prediction_resource_usage_assessment_result, 4,
    type:
      Google.Cloud.Aiplatform.V1beta1.AssessDataResponse.BatchPredictionResourceUsageAssessmentResult,
    json_name: "batchPredictionResourceUsageAssessmentResult",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.AssessDataOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.GeminiTemplateConfig.FieldMappingEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.GeminiTemplateConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :gemini_example, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GeminiExample,
    json_name: "geminiExample",
    deprecated: false

  field :field_mapping, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.GeminiTemplateConfig.FieldMappingEntry,
    json_name: "fieldMapping",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GeminiRequestReadConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :read_config, 0

  field :template_config, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GeminiTemplateConfig,
    json_name: "templateConfig",
    oneof: 0

  field :assembled_request_column_name, 4,
    type: :string,
    json_name: "assembledRequestColumnName",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GeminiExample.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.GeminiExample do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :model, 1, type: :string, deprecated: false

  field :contents, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Content,
    deprecated: false

  field :system_instruction, 8,
    proto3_optional: true,
    type: Google.Cloud.Aiplatform.V1beta1.Content,
    json_name: "systemInstruction",
    deprecated: false

  field :cached_content, 9, type: :string, json_name: "cachedContent", deprecated: false
  field :tools, 6, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Tool, deprecated: false

  field :tool_config, 7,
    type: Google.Cloud.Aiplatform.V1beta1.ToolConfig,
    json_name: "toolConfig",
    deprecated: false

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.GeminiExample.LabelsEntry,
    map: true,
    deprecated: false

  field :safety_settings, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.SafetySetting,
    json_name: "safetySettings",
    deprecated: false

  field :generation_config, 4,
    type: Google.Cloud.Aiplatform.V1beta1.GenerationConfig,
    json_name: "generationConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.AssembleDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :read_config, 0

  field :gemini_template_config, 2,
    type: Google.Cloud.Aiplatform.V1beta1.GeminiTemplateConfig,
    json_name: "geminiTemplateConfig",
    oneof: 0,
    deprecated: false

  field :request_column_name, 5,
    type: :string,
    json_name: "requestColumnName",
    oneof: 0,
    deprecated: false

  field :name, 1, type: :string, deprecated: false

  field :gemini_request_read_config, 6,
    type: Google.Cloud.Aiplatform.V1beta1.GeminiRequestReadConfig,
    json_name: "geminiRequestReadConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.AssembleDataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :bigquery_destination, 1, type: :string, json_name: "bigqueryDestination"
end

defmodule Google.Cloud.Aiplatform.V1beta1.AssembleDataOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.DatasetService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1beta1.DatasetService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CreateDataset,
      Google.Cloud.Aiplatform.V1beta1.CreateDatasetRequest,
      Google.Longrunning.Operation

  rpc :GetDataset,
      Google.Cloud.Aiplatform.V1beta1.GetDatasetRequest,
      Google.Cloud.Aiplatform.V1beta1.Dataset

  rpc :UpdateDataset,
      Google.Cloud.Aiplatform.V1beta1.UpdateDatasetRequest,
      Google.Cloud.Aiplatform.V1beta1.Dataset

  rpc :ListDatasets,
      Google.Cloud.Aiplatform.V1beta1.ListDatasetsRequest,
      Google.Cloud.Aiplatform.V1beta1.ListDatasetsResponse

  rpc :DeleteDataset,
      Google.Cloud.Aiplatform.V1beta1.DeleteDatasetRequest,
      Google.Longrunning.Operation

  rpc :ImportData, Google.Cloud.Aiplatform.V1beta1.ImportDataRequest, Google.Longrunning.Operation

  rpc :ExportData, Google.Cloud.Aiplatform.V1beta1.ExportDataRequest, Google.Longrunning.Operation

  rpc :CreateDatasetVersion,
      Google.Cloud.Aiplatform.V1beta1.CreateDatasetVersionRequest,
      Google.Longrunning.Operation

  rpc :UpdateDatasetVersion,
      Google.Cloud.Aiplatform.V1beta1.UpdateDatasetVersionRequest,
      Google.Cloud.Aiplatform.V1beta1.DatasetVersion

  rpc :DeleteDatasetVersion,
      Google.Cloud.Aiplatform.V1beta1.DeleteDatasetVersionRequest,
      Google.Longrunning.Operation

  rpc :GetDatasetVersion,
      Google.Cloud.Aiplatform.V1beta1.GetDatasetVersionRequest,
      Google.Cloud.Aiplatform.V1beta1.DatasetVersion

  rpc :ListDatasetVersions,
      Google.Cloud.Aiplatform.V1beta1.ListDatasetVersionsRequest,
      Google.Cloud.Aiplatform.V1beta1.ListDatasetVersionsResponse

  rpc :RestoreDatasetVersion,
      Google.Cloud.Aiplatform.V1beta1.RestoreDatasetVersionRequest,
      Google.Longrunning.Operation

  rpc :ListDataItems,
      Google.Cloud.Aiplatform.V1beta1.ListDataItemsRequest,
      Google.Cloud.Aiplatform.V1beta1.ListDataItemsResponse

  rpc :SearchDataItems,
      Google.Cloud.Aiplatform.V1beta1.SearchDataItemsRequest,
      Google.Cloud.Aiplatform.V1beta1.SearchDataItemsResponse

  rpc :ListSavedQueries,
      Google.Cloud.Aiplatform.V1beta1.ListSavedQueriesRequest,
      Google.Cloud.Aiplatform.V1beta1.ListSavedQueriesResponse

  rpc :DeleteSavedQuery,
      Google.Cloud.Aiplatform.V1beta1.DeleteSavedQueryRequest,
      Google.Longrunning.Operation

  rpc :GetAnnotationSpec,
      Google.Cloud.Aiplatform.V1beta1.GetAnnotationSpecRequest,
      Google.Cloud.Aiplatform.V1beta1.AnnotationSpec

  rpc :ListAnnotations,
      Google.Cloud.Aiplatform.V1beta1.ListAnnotationsRequest,
      Google.Cloud.Aiplatform.V1beta1.ListAnnotationsResponse

  rpc :AssessData, Google.Cloud.Aiplatform.V1beta1.AssessDataRequest, Google.Longrunning.Operation

  rpc :AssembleData,
      Google.Cloud.Aiplatform.V1beta1.AssembleDataRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Aiplatform.V1beta1.DatasetService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.DatasetService.Service
end
