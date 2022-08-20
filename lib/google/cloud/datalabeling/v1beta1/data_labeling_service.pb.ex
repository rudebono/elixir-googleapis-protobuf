defmodule Google.Cloud.Datalabeling.V1beta1.LabelImageRequest.Feature do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :FEATURE_UNSPECIFIED, 0
  field :CLASSIFICATION, 1
  field :BOUNDING_BOX, 2
  field :ORIENTED_BOUNDING_BOX, 6
  field :BOUNDING_POLY, 3
  field :POLYLINE, 4
  field :SEGMENTATION, 5
end

defmodule Google.Cloud.Datalabeling.V1beta1.LabelVideoRequest.Feature do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :FEATURE_UNSPECIFIED, 0
  field :CLASSIFICATION, 1
  field :OBJECT_DETECTION, 2
  field :OBJECT_TRACKING, 3
  field :EVENT, 4
end

defmodule Google.Cloud.Datalabeling.V1beta1.LabelTextRequest.Feature do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :FEATURE_UNSPECIFIED, 0
  field :TEXT_CLASSIFICATION, 1
  field :TEXT_ENTITY_EXTRACTION, 2
end

defmodule Google.Cloud.Datalabeling.V1beta1.CreateDatasetRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :dataset, 2, type: Google.Cloud.Datalabeling.V1beta1.Dataset, deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.GetDatasetRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.ListDatasetsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.ListDatasetsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :datasets, 1, repeated: true, type: Google.Cloud.Datalabeling.V1beta1.Dataset
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Datalabeling.V1beta1.DeleteDatasetRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.ImportDataRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :input_config, 2,
    type: Google.Cloud.Datalabeling.V1beta1.InputConfig,
    json_name: "inputConfig",
    deprecated: false

  field :user_email_address, 3, type: :string, json_name: "userEmailAddress"
end

defmodule Google.Cloud.Datalabeling.V1beta1.ExportDataRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :annotated_dataset, 2, type: :string, json_name: "annotatedDataset", deprecated: false
  field :filter, 3, type: :string, deprecated: false

  field :output_config, 4,
    type: Google.Cloud.Datalabeling.V1beta1.OutputConfig,
    json_name: "outputConfig",
    deprecated: false

  field :user_email_address, 5, type: :string, json_name: "userEmailAddress"
end

defmodule Google.Cloud.Datalabeling.V1beta1.GetDataItemRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.ListDataItemsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.ListDataItemsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data_items, 1,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.DataItem,
    json_name: "dataItems"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Datalabeling.V1beta1.GetAnnotatedDatasetRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.ListAnnotatedDatasetsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.ListAnnotatedDatasetsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :annotated_datasets, 1,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.AnnotatedDataset,
    json_name: "annotatedDatasets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Datalabeling.V1beta1.DeleteAnnotatedDatasetRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.LabelImageRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :request_config, 0

  field :image_classification_config, 4,
    type: Google.Cloud.Datalabeling.V1beta1.ImageClassificationConfig,
    json_name: "imageClassificationConfig",
    oneof: 0

  field :bounding_poly_config, 5,
    type: Google.Cloud.Datalabeling.V1beta1.BoundingPolyConfig,
    json_name: "boundingPolyConfig",
    oneof: 0

  field :polyline_config, 6,
    type: Google.Cloud.Datalabeling.V1beta1.PolylineConfig,
    json_name: "polylineConfig",
    oneof: 0

  field :segmentation_config, 7,
    type: Google.Cloud.Datalabeling.V1beta1.SegmentationConfig,
    json_name: "segmentationConfig",
    oneof: 0

  field :parent, 1, type: :string, deprecated: false

  field :basic_config, 2,
    type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig,
    json_name: "basicConfig",
    deprecated: false

  field :feature, 3,
    type: Google.Cloud.Datalabeling.V1beta1.LabelImageRequest.Feature,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.LabelVideoRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :request_config, 0

  field :video_classification_config, 4,
    type: Google.Cloud.Datalabeling.V1beta1.VideoClassificationConfig,
    json_name: "videoClassificationConfig",
    oneof: 0

  field :object_detection_config, 5,
    type: Google.Cloud.Datalabeling.V1beta1.ObjectDetectionConfig,
    json_name: "objectDetectionConfig",
    oneof: 0

  field :object_tracking_config, 6,
    type: Google.Cloud.Datalabeling.V1beta1.ObjectTrackingConfig,
    json_name: "objectTrackingConfig",
    oneof: 0

  field :event_config, 7,
    type: Google.Cloud.Datalabeling.V1beta1.EventConfig,
    json_name: "eventConfig",
    oneof: 0

  field :parent, 1, type: :string, deprecated: false

  field :basic_config, 2,
    type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig,
    json_name: "basicConfig",
    deprecated: false

  field :feature, 3,
    type: Google.Cloud.Datalabeling.V1beta1.LabelVideoRequest.Feature,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.LabelTextRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :request_config, 0

  field :text_classification_config, 4,
    type: Google.Cloud.Datalabeling.V1beta1.TextClassificationConfig,
    json_name: "textClassificationConfig",
    oneof: 0

  field :text_entity_extraction_config, 5,
    type: Google.Cloud.Datalabeling.V1beta1.TextEntityExtractionConfig,
    json_name: "textEntityExtractionConfig",
    oneof: 0

  field :parent, 1, type: :string, deprecated: false

  field :basic_config, 2,
    type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig,
    json_name: "basicConfig",
    deprecated: false

  field :feature, 6,
    type: Google.Cloud.Datalabeling.V1beta1.LabelTextRequest.Feature,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.GetExampleRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.ListExamplesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.ListExamplesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :examples, 1, repeated: true, type: Google.Cloud.Datalabeling.V1beta1.Example
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Datalabeling.V1beta1.CreateAnnotationSpecSetRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :annotation_spec_set, 2,
    type: Google.Cloud.Datalabeling.V1beta1.AnnotationSpecSet,
    json_name: "annotationSpecSet",
    deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.GetAnnotationSpecSetRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.ListAnnotationSpecSetsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.ListAnnotationSpecSetsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :annotation_spec_sets, 1,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.AnnotationSpecSet,
    json_name: "annotationSpecSets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Datalabeling.V1beta1.DeleteAnnotationSpecSetRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.CreateInstructionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :instruction, 2, type: Google.Cloud.Datalabeling.V1beta1.Instruction, deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.GetInstructionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.DeleteInstructionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.ListInstructionsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.ListInstructionsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instructions, 1, repeated: true, type: Google.Cloud.Datalabeling.V1beta1.Instruction
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Datalabeling.V1beta1.GetEvaluationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.SearchEvaluationsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.SearchEvaluationsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :evaluations, 1, repeated: true, type: Google.Cloud.Datalabeling.V1beta1.Evaluation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Datalabeling.V1beta1.SearchExampleComparisonsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.SearchExampleComparisonsResponse.ExampleComparison do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ground_truth_example, 1,
    type: Google.Cloud.Datalabeling.V1beta1.Example,
    json_name: "groundTruthExample"

  field :model_created_examples, 2,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.Example,
    json_name: "modelCreatedExamples"
end

defmodule Google.Cloud.Datalabeling.V1beta1.SearchExampleComparisonsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :example_comparisons, 1,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.SearchExampleComparisonsResponse.ExampleComparison,
    json_name: "exampleComparisons"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Datalabeling.V1beta1.CreateEvaluationJobRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :job, 2, type: Google.Cloud.Datalabeling.V1beta1.EvaluationJob, deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.UpdateEvaluationJobRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :evaluation_job, 1,
    type: Google.Cloud.Datalabeling.V1beta1.EvaluationJob,
    json_name: "evaluationJob",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.GetEvaluationJobRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.PauseEvaluationJobRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.ResumeEvaluationJobRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.DeleteEvaluationJobRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.ListEvaluationJobsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.ListEvaluationJobsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :evaluation_jobs, 1,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.EvaluationJob,
    json_name: "evaluationJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Datalabeling.V1beta1.DataLabelingService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.datalabeling.v1beta1.DataLabelingService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :CreateDataset,
      Google.Cloud.Datalabeling.V1beta1.CreateDatasetRequest,
      Google.Cloud.Datalabeling.V1beta1.Dataset

  rpc :GetDataset,
      Google.Cloud.Datalabeling.V1beta1.GetDatasetRequest,
      Google.Cloud.Datalabeling.V1beta1.Dataset

  rpc :ListDatasets,
      Google.Cloud.Datalabeling.V1beta1.ListDatasetsRequest,
      Google.Cloud.Datalabeling.V1beta1.ListDatasetsResponse

  rpc :DeleteDataset,
      Google.Cloud.Datalabeling.V1beta1.DeleteDatasetRequest,
      Google.Protobuf.Empty

  rpc :ImportData,
      Google.Cloud.Datalabeling.V1beta1.ImportDataRequest,
      Google.Longrunning.Operation

  rpc :ExportData,
      Google.Cloud.Datalabeling.V1beta1.ExportDataRequest,
      Google.Longrunning.Operation

  rpc :GetDataItem,
      Google.Cloud.Datalabeling.V1beta1.GetDataItemRequest,
      Google.Cloud.Datalabeling.V1beta1.DataItem

  rpc :ListDataItems,
      Google.Cloud.Datalabeling.V1beta1.ListDataItemsRequest,
      Google.Cloud.Datalabeling.V1beta1.ListDataItemsResponse

  rpc :GetAnnotatedDataset,
      Google.Cloud.Datalabeling.V1beta1.GetAnnotatedDatasetRequest,
      Google.Cloud.Datalabeling.V1beta1.AnnotatedDataset

  rpc :ListAnnotatedDatasets,
      Google.Cloud.Datalabeling.V1beta1.ListAnnotatedDatasetsRequest,
      Google.Cloud.Datalabeling.V1beta1.ListAnnotatedDatasetsResponse

  rpc :DeleteAnnotatedDataset,
      Google.Cloud.Datalabeling.V1beta1.DeleteAnnotatedDatasetRequest,
      Google.Protobuf.Empty

  rpc :LabelImage,
      Google.Cloud.Datalabeling.V1beta1.LabelImageRequest,
      Google.Longrunning.Operation

  rpc :LabelVideo,
      Google.Cloud.Datalabeling.V1beta1.LabelVideoRequest,
      Google.Longrunning.Operation

  rpc :LabelText, Google.Cloud.Datalabeling.V1beta1.LabelTextRequest, Google.Longrunning.Operation

  rpc :GetExample,
      Google.Cloud.Datalabeling.V1beta1.GetExampleRequest,
      Google.Cloud.Datalabeling.V1beta1.Example

  rpc :ListExamples,
      Google.Cloud.Datalabeling.V1beta1.ListExamplesRequest,
      Google.Cloud.Datalabeling.V1beta1.ListExamplesResponse

  rpc :CreateAnnotationSpecSet,
      Google.Cloud.Datalabeling.V1beta1.CreateAnnotationSpecSetRequest,
      Google.Cloud.Datalabeling.V1beta1.AnnotationSpecSet

  rpc :GetAnnotationSpecSet,
      Google.Cloud.Datalabeling.V1beta1.GetAnnotationSpecSetRequest,
      Google.Cloud.Datalabeling.V1beta1.AnnotationSpecSet

  rpc :ListAnnotationSpecSets,
      Google.Cloud.Datalabeling.V1beta1.ListAnnotationSpecSetsRequest,
      Google.Cloud.Datalabeling.V1beta1.ListAnnotationSpecSetsResponse

  rpc :DeleteAnnotationSpecSet,
      Google.Cloud.Datalabeling.V1beta1.DeleteAnnotationSpecSetRequest,
      Google.Protobuf.Empty

  rpc :CreateInstruction,
      Google.Cloud.Datalabeling.V1beta1.CreateInstructionRequest,
      Google.Longrunning.Operation

  rpc :GetInstruction,
      Google.Cloud.Datalabeling.V1beta1.GetInstructionRequest,
      Google.Cloud.Datalabeling.V1beta1.Instruction

  rpc :ListInstructions,
      Google.Cloud.Datalabeling.V1beta1.ListInstructionsRequest,
      Google.Cloud.Datalabeling.V1beta1.ListInstructionsResponse

  rpc :DeleteInstruction,
      Google.Cloud.Datalabeling.V1beta1.DeleteInstructionRequest,
      Google.Protobuf.Empty

  rpc :GetEvaluation,
      Google.Cloud.Datalabeling.V1beta1.GetEvaluationRequest,
      Google.Cloud.Datalabeling.V1beta1.Evaluation

  rpc :SearchEvaluations,
      Google.Cloud.Datalabeling.V1beta1.SearchEvaluationsRequest,
      Google.Cloud.Datalabeling.V1beta1.SearchEvaluationsResponse

  rpc :SearchExampleComparisons,
      Google.Cloud.Datalabeling.V1beta1.SearchExampleComparisonsRequest,
      Google.Cloud.Datalabeling.V1beta1.SearchExampleComparisonsResponse

  rpc :CreateEvaluationJob,
      Google.Cloud.Datalabeling.V1beta1.CreateEvaluationJobRequest,
      Google.Cloud.Datalabeling.V1beta1.EvaluationJob

  rpc :UpdateEvaluationJob,
      Google.Cloud.Datalabeling.V1beta1.UpdateEvaluationJobRequest,
      Google.Cloud.Datalabeling.V1beta1.EvaluationJob

  rpc :GetEvaluationJob,
      Google.Cloud.Datalabeling.V1beta1.GetEvaluationJobRequest,
      Google.Cloud.Datalabeling.V1beta1.EvaluationJob

  rpc :PauseEvaluationJob,
      Google.Cloud.Datalabeling.V1beta1.PauseEvaluationJobRequest,
      Google.Protobuf.Empty

  rpc :ResumeEvaluationJob,
      Google.Cloud.Datalabeling.V1beta1.ResumeEvaluationJobRequest,
      Google.Protobuf.Empty

  rpc :DeleteEvaluationJob,
      Google.Cloud.Datalabeling.V1beta1.DeleteEvaluationJobRequest,
      Google.Protobuf.Empty

  rpc :ListEvaluationJobs,
      Google.Cloud.Datalabeling.V1beta1.ListEvaluationJobsRequest,
      Google.Cloud.Datalabeling.V1beta1.ListEvaluationJobsResponse
end

defmodule Google.Cloud.Datalabeling.V1beta1.DataLabelingService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Datalabeling.V1beta1.DataLabelingService.Service
end