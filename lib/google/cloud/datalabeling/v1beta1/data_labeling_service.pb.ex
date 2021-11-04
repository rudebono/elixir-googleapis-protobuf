defmodule Google.Cloud.Datalabeling.V1beta1.LabelImageRequest.Feature do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :FEATURE_UNSPECIFIED
          | :CLASSIFICATION
          | :BOUNDING_BOX
          | :ORIENTED_BOUNDING_BOX
          | :BOUNDING_POLY
          | :POLYLINE
          | :SEGMENTATION

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
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :FEATURE_UNSPECIFIED
          | :CLASSIFICATION
          | :OBJECT_DETECTION
          | :OBJECT_TRACKING
          | :EVENT

  field :FEATURE_UNSPECIFIED, 0
  field :CLASSIFICATION, 1
  field :OBJECT_DETECTION, 2
  field :OBJECT_TRACKING, 3
  field :EVENT, 4
end

defmodule Google.Cloud.Datalabeling.V1beta1.LabelTextRequest.Feature do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :FEATURE_UNSPECIFIED | :TEXT_CLASSIFICATION | :TEXT_ENTITY_EXTRACTION

  field :FEATURE_UNSPECIFIED, 0
  field :TEXT_CLASSIFICATION, 1
  field :TEXT_ENTITY_EXTRACTION, 2
end

defmodule Google.Cloud.Datalabeling.V1beta1.CreateDatasetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          dataset: Google.Cloud.Datalabeling.V1beta1.Dataset.t() | nil
        }

  defstruct [:parent, :dataset]

  field :parent, 1, type: :string
  field :dataset, 2, type: Google.Cloud.Datalabeling.V1beta1.Dataset

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.GetDatasetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.ListDatasetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :filter, :page_size, :page_token]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.ListDatasetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          datasets: [Google.Cloud.Datalabeling.V1beta1.Dataset.t()],
          next_page_token: String.t()
        }

  defstruct [:datasets, :next_page_token]

  field :datasets, 1, repeated: true, type: Google.Cloud.Datalabeling.V1beta1.Dataset
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.DeleteDatasetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.ImportDataRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          input_config: Google.Cloud.Datalabeling.V1beta1.InputConfig.t() | nil,
          user_email_address: String.t()
        }

  defstruct [:name, :input_config, :user_email_address]

  field :name, 1, type: :string

  field :input_config, 2,
    type: Google.Cloud.Datalabeling.V1beta1.InputConfig,
    json_name: "inputConfig"

  field :user_email_address, 3, type: :string, json_name: "userEmailAddress"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.ExportDataRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          annotated_dataset: String.t(),
          filter: String.t(),
          output_config: Google.Cloud.Datalabeling.V1beta1.OutputConfig.t() | nil,
          user_email_address: String.t()
        }

  defstruct [:name, :annotated_dataset, :filter, :output_config, :user_email_address]

  field :name, 1, type: :string
  field :annotated_dataset, 2, type: :string, json_name: "annotatedDataset"
  field :filter, 3, type: :string

  field :output_config, 4,
    type: Google.Cloud.Datalabeling.V1beta1.OutputConfig,
    json_name: "outputConfig"

  field :user_email_address, 5, type: :string, json_name: "userEmailAddress"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.GetDataItemRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.ListDataItemsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :filter, :page_size, :page_token]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.ListDataItemsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_items: [Google.Cloud.Datalabeling.V1beta1.DataItem.t()],
          next_page_token: String.t()
        }

  defstruct [:data_items, :next_page_token]

  field :data_items, 1,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.DataItem,
    json_name: "dataItems"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.GetAnnotatedDatasetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.ListAnnotatedDatasetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :filter, :page_size, :page_token]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.ListAnnotatedDatasetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotated_datasets: [Google.Cloud.Datalabeling.V1beta1.AnnotatedDataset.t()],
          next_page_token: String.t()
        }

  defstruct [:annotated_datasets, :next_page_token]

  field :annotated_datasets, 1,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.AnnotatedDataset,
    json_name: "annotatedDatasets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.DeleteAnnotatedDatasetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.LabelImageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request_config:
            {:image_classification_config,
             Google.Cloud.Datalabeling.V1beta1.ImageClassificationConfig.t() | nil}
            | {:bounding_poly_config,
               Google.Cloud.Datalabeling.V1beta1.BoundingPolyConfig.t() | nil}
            | {:polyline_config, Google.Cloud.Datalabeling.V1beta1.PolylineConfig.t() | nil}
            | {:segmentation_config,
               Google.Cloud.Datalabeling.V1beta1.SegmentationConfig.t() | nil},
          parent: String.t(),
          basic_config: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig.t() | nil,
          feature: Google.Cloud.Datalabeling.V1beta1.LabelImageRequest.Feature.t()
        }

  defstruct [:request_config, :parent, :basic_config, :feature]

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

  field :parent, 1, type: :string

  field :basic_config, 2,
    type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig,
    json_name: "basicConfig"

  field :feature, 3, type: Google.Cloud.Datalabeling.V1beta1.LabelImageRequest.Feature, enum: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.LabelVideoRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request_config:
            {:video_classification_config,
             Google.Cloud.Datalabeling.V1beta1.VideoClassificationConfig.t() | nil}
            | {:object_detection_config,
               Google.Cloud.Datalabeling.V1beta1.ObjectDetectionConfig.t() | nil}
            | {:object_tracking_config,
               Google.Cloud.Datalabeling.V1beta1.ObjectTrackingConfig.t() | nil}
            | {:event_config, Google.Cloud.Datalabeling.V1beta1.EventConfig.t() | nil},
          parent: String.t(),
          basic_config: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig.t() | nil,
          feature: Google.Cloud.Datalabeling.V1beta1.LabelVideoRequest.Feature.t()
        }

  defstruct [:request_config, :parent, :basic_config, :feature]

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

  field :parent, 1, type: :string

  field :basic_config, 2,
    type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig,
    json_name: "basicConfig"

  field :feature, 3, type: Google.Cloud.Datalabeling.V1beta1.LabelVideoRequest.Feature, enum: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.LabelTextRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request_config:
            {:text_classification_config,
             Google.Cloud.Datalabeling.V1beta1.TextClassificationConfig.t() | nil}
            | {:text_entity_extraction_config,
               Google.Cloud.Datalabeling.V1beta1.TextEntityExtractionConfig.t() | nil},
          parent: String.t(),
          basic_config: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig.t() | nil,
          feature: Google.Cloud.Datalabeling.V1beta1.LabelTextRequest.Feature.t()
        }

  defstruct [:request_config, :parent, :basic_config, :feature]

  oneof :request_config, 0

  field :text_classification_config, 4,
    type: Google.Cloud.Datalabeling.V1beta1.TextClassificationConfig,
    json_name: "textClassificationConfig",
    oneof: 0

  field :text_entity_extraction_config, 5,
    type: Google.Cloud.Datalabeling.V1beta1.TextEntityExtractionConfig,
    json_name: "textEntityExtractionConfig",
    oneof: 0

  field :parent, 1, type: :string

  field :basic_config, 2,
    type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig,
    json_name: "basicConfig"

  field :feature, 6, type: Google.Cloud.Datalabeling.V1beta1.LabelTextRequest.Feature, enum: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.GetExampleRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          filter: String.t()
        }

  defstruct [:name, :filter]

  field :name, 1, type: :string
  field :filter, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.ListExamplesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :filter, :page_size, :page_token]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.ListExamplesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          examples: [Google.Cloud.Datalabeling.V1beta1.Example.t()],
          next_page_token: String.t()
        }

  defstruct [:examples, :next_page_token]

  field :examples, 1, repeated: true, type: Google.Cloud.Datalabeling.V1beta1.Example
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.CreateAnnotationSpecSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          annotation_spec_set: Google.Cloud.Datalabeling.V1beta1.AnnotationSpecSet.t() | nil
        }

  defstruct [:parent, :annotation_spec_set]

  field :parent, 1, type: :string

  field :annotation_spec_set, 2,
    type: Google.Cloud.Datalabeling.V1beta1.AnnotationSpecSet,
    json_name: "annotationSpecSet"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.GetAnnotationSpecSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.ListAnnotationSpecSetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :filter, :page_size, :page_token]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.ListAnnotationSpecSetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec_sets: [Google.Cloud.Datalabeling.V1beta1.AnnotationSpecSet.t()],
          next_page_token: String.t()
        }

  defstruct [:annotation_spec_sets, :next_page_token]

  field :annotation_spec_sets, 1,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.AnnotationSpecSet,
    json_name: "annotationSpecSets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.DeleteAnnotationSpecSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.CreateInstructionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          instruction: Google.Cloud.Datalabeling.V1beta1.Instruction.t() | nil
        }

  defstruct [:parent, :instruction]

  field :parent, 1, type: :string
  field :instruction, 2, type: Google.Cloud.Datalabeling.V1beta1.Instruction

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.GetInstructionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.DeleteInstructionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.ListInstructionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :filter, :page_size, :page_token]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.ListInstructionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instructions: [Google.Cloud.Datalabeling.V1beta1.Instruction.t()],
          next_page_token: String.t()
        }

  defstruct [:instructions, :next_page_token]

  field :instructions, 1, repeated: true, type: Google.Cloud.Datalabeling.V1beta1.Instruction
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.GetEvaluationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.SearchEvaluationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :filter, :page_size, :page_token]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.SearchEvaluationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          evaluations: [Google.Cloud.Datalabeling.V1beta1.Evaluation.t()],
          next_page_token: String.t()
        }

  defstruct [:evaluations, :next_page_token]

  field :evaluations, 1, repeated: true, type: Google.Cloud.Datalabeling.V1beta1.Evaluation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.SearchExampleComparisonsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.SearchExampleComparisonsResponse.ExampleComparison do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ground_truth_example: Google.Cloud.Datalabeling.V1beta1.Example.t() | nil,
          model_created_examples: [Google.Cloud.Datalabeling.V1beta1.Example.t()]
        }

  defstruct [:ground_truth_example, :model_created_examples]

  field :ground_truth_example, 1,
    type: Google.Cloud.Datalabeling.V1beta1.Example,
    json_name: "groundTruthExample"

  field :model_created_examples, 2,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.Example,
    json_name: "modelCreatedExamples"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.SearchExampleComparisonsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          example_comparisons: [
            Google.Cloud.Datalabeling.V1beta1.SearchExampleComparisonsResponse.ExampleComparison.t()
          ],
          next_page_token: String.t()
        }

  defstruct [:example_comparisons, :next_page_token]

  field :example_comparisons, 1,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.SearchExampleComparisonsResponse.ExampleComparison,
    json_name: "exampleComparisons"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.CreateEvaluationJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          job: Google.Cloud.Datalabeling.V1beta1.EvaluationJob.t() | nil
        }

  defstruct [:parent, :job]

  field :parent, 1, type: :string
  field :job, 2, type: Google.Cloud.Datalabeling.V1beta1.EvaluationJob

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.UpdateEvaluationJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          evaluation_job: Google.Cloud.Datalabeling.V1beta1.EvaluationJob.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:evaluation_job, :update_mask]

  field :evaluation_job, 1,
    type: Google.Cloud.Datalabeling.V1beta1.EvaluationJob,
    json_name: "evaluationJob"

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.GetEvaluationJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.PauseEvaluationJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.ResumeEvaluationJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.DeleteEvaluationJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.ListEvaluationJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :filter, :page_size, :page_token]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.ListEvaluationJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          evaluation_jobs: [Google.Cloud.Datalabeling.V1beta1.EvaluationJob.t()],
          next_page_token: String.t()
        }

  defstruct [:evaluation_jobs, :next_page_token]

  field :evaluation_jobs, 1,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.EvaluationJob,
    json_name: "evaluationJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.DataLabelingService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.datalabeling.v1beta1.DataLabelingService"

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
