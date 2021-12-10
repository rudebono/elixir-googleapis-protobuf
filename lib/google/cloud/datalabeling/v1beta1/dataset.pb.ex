defmodule Google.Cloud.Datalabeling.V1beta1.DataType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :DATA_TYPE_UNSPECIFIED | :IMAGE | :VIDEO | :TEXT | :GENERAL_DATA

  field :DATA_TYPE_UNSPECIFIED, 0
  field :IMAGE, 1
  field :VIDEO, 2
  field :TEXT, 4
  field :GENERAL_DATA, 6
end
defmodule Google.Cloud.Datalabeling.V1beta1.Dataset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          input_configs: [Google.Cloud.Datalabeling.V1beta1.InputConfig.t()],
          blocking_resources: [String.t()],
          data_item_count: integer
        }

  defstruct name: "",
            display_name: "",
            description: "",
            create_time: nil,
            input_configs: [],
            blocking_resources: [],
            data_item_count: 0

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string
  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"

  field :input_configs, 5,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.InputConfig,
    json_name: "inputConfigs"

  field :blocking_resources, 6, repeated: true, type: :string, json_name: "blockingResources"
  field :data_item_count, 7, type: :int64, json_name: "dataItemCount"
end
defmodule Google.Cloud.Datalabeling.V1beta1.InputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_type_metadata:
            {:text_metadata, Google.Cloud.Datalabeling.V1beta1.TextMetadata.t() | nil},
          source:
            {:gcs_source, Google.Cloud.Datalabeling.V1beta1.GcsSource.t() | nil}
            | {:bigquery_source, Google.Cloud.Datalabeling.V1beta1.BigQuerySource.t() | nil},
          data_type: Google.Cloud.Datalabeling.V1beta1.DataType.t(),
          annotation_type: Google.Cloud.Datalabeling.V1beta1.AnnotationType.t(),
          classification_metadata:
            Google.Cloud.Datalabeling.V1beta1.ClassificationMetadata.t() | nil
        }

  defstruct data_type_metadata: nil,
            source: nil,
            data_type: :DATA_TYPE_UNSPECIFIED,
            annotation_type: :ANNOTATION_TYPE_UNSPECIFIED,
            classification_metadata: nil

  oneof :data_type_metadata, 0
  oneof :source, 1

  field :text_metadata, 6,
    type: Google.Cloud.Datalabeling.V1beta1.TextMetadata,
    json_name: "textMetadata",
    oneof: 0

  field :gcs_source, 2,
    type: Google.Cloud.Datalabeling.V1beta1.GcsSource,
    json_name: "gcsSource",
    oneof: 1

  field :bigquery_source, 5,
    type: Google.Cloud.Datalabeling.V1beta1.BigQuerySource,
    json_name: "bigquerySource",
    oneof: 1

  field :data_type, 1,
    type: Google.Cloud.Datalabeling.V1beta1.DataType,
    json_name: "dataType",
    enum: true

  field :annotation_type, 3,
    type: Google.Cloud.Datalabeling.V1beta1.AnnotationType,
    json_name: "annotationType",
    enum: true

  field :classification_metadata, 4,
    type: Google.Cloud.Datalabeling.V1beta1.ClassificationMetadata,
    json_name: "classificationMetadata"
end
defmodule Google.Cloud.Datalabeling.V1beta1.TextMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          language_code: String.t()
        }

  defstruct language_code: ""

  field :language_code, 1, type: :string, json_name: "languageCode"
end
defmodule Google.Cloud.Datalabeling.V1beta1.ClassificationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          is_multi_label: boolean
        }

  defstruct is_multi_label: false

  field :is_multi_label, 1, type: :bool, json_name: "isMultiLabel"
end
defmodule Google.Cloud.Datalabeling.V1beta1.GcsSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_uri: String.t(),
          mime_type: String.t()
        }

  defstruct input_uri: "",
            mime_type: ""

  field :input_uri, 1, type: :string, json_name: "inputUri"
  field :mime_type, 2, type: :string, json_name: "mimeType"
end
defmodule Google.Cloud.Datalabeling.V1beta1.BigQuerySource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_uri: String.t()
        }

  defstruct input_uri: ""

  field :input_uri, 1, type: :string, json_name: "inputUri"
end
defmodule Google.Cloud.Datalabeling.V1beta1.OutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination:
            {:gcs_destination, Google.Cloud.Datalabeling.V1beta1.GcsDestination.t() | nil}
            | {:gcs_folder_destination,
               Google.Cloud.Datalabeling.V1beta1.GcsFolderDestination.t() | nil}
        }

  defstruct destination: nil

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Datalabeling.V1beta1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0

  field :gcs_folder_destination, 2,
    type: Google.Cloud.Datalabeling.V1beta1.GcsFolderDestination,
    json_name: "gcsFolderDestination",
    oneof: 0
end
defmodule Google.Cloud.Datalabeling.V1beta1.GcsDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_uri: String.t(),
          mime_type: String.t()
        }

  defstruct output_uri: "",
            mime_type: ""

  field :output_uri, 1, type: :string, json_name: "outputUri"
  field :mime_type, 2, type: :string, json_name: "mimeType"
end
defmodule Google.Cloud.Datalabeling.V1beta1.GcsFolderDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_folder_uri: String.t()
        }

  defstruct output_folder_uri: ""

  field :output_folder_uri, 1, type: :string, json_name: "outputFolderUri"
end
defmodule Google.Cloud.Datalabeling.V1beta1.DataItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          payload:
            {:image_payload, Google.Cloud.Datalabeling.V1beta1.ImagePayload.t() | nil}
            | {:text_payload, Google.Cloud.Datalabeling.V1beta1.TextPayload.t() | nil}
            | {:video_payload, Google.Cloud.Datalabeling.V1beta1.VideoPayload.t() | nil},
          name: String.t()
        }

  defstruct payload: nil,
            name: ""

  oneof :payload, 0

  field :image_payload, 2,
    type: Google.Cloud.Datalabeling.V1beta1.ImagePayload,
    json_name: "imagePayload",
    oneof: 0

  field :text_payload, 3,
    type: Google.Cloud.Datalabeling.V1beta1.TextPayload,
    json_name: "textPayload",
    oneof: 0

  field :video_payload, 4,
    type: Google.Cloud.Datalabeling.V1beta1.VideoPayload,
    json_name: "videoPayload",
    oneof: 0

  field :name, 1, type: :string
end
defmodule Google.Cloud.Datalabeling.V1beta1.AnnotatedDataset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          annotation_source: Google.Cloud.Datalabeling.V1beta1.AnnotationSource.t(),
          annotation_type: Google.Cloud.Datalabeling.V1beta1.AnnotationType.t(),
          example_count: integer,
          completed_example_count: integer,
          label_stats: Google.Cloud.Datalabeling.V1beta1.LabelStats.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          metadata: Google.Cloud.Datalabeling.V1beta1.AnnotatedDatasetMetadata.t() | nil,
          blocking_resources: [String.t()]
        }

  defstruct name: "",
            display_name: "",
            description: "",
            annotation_source: :ANNOTATION_SOURCE_UNSPECIFIED,
            annotation_type: :ANNOTATION_TYPE_UNSPECIFIED,
            example_count: 0,
            completed_example_count: 0,
            label_stats: nil,
            create_time: nil,
            metadata: nil,
            blocking_resources: []

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 9, type: :string

  field :annotation_source, 3,
    type: Google.Cloud.Datalabeling.V1beta1.AnnotationSource,
    json_name: "annotationSource",
    enum: true

  field :annotation_type, 8,
    type: Google.Cloud.Datalabeling.V1beta1.AnnotationType,
    json_name: "annotationType",
    enum: true

  field :example_count, 4, type: :int64, json_name: "exampleCount"
  field :completed_example_count, 5, type: :int64, json_name: "completedExampleCount"

  field :label_stats, 6,
    type: Google.Cloud.Datalabeling.V1beta1.LabelStats,
    json_name: "labelStats"

  field :create_time, 7, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :metadata, 10, type: Google.Cloud.Datalabeling.V1beta1.AnnotatedDatasetMetadata
  field :blocking_resources, 11, repeated: true, type: :string, json_name: "blockingResources"
end
defmodule Google.Cloud.Datalabeling.V1beta1.LabelStats.ExampleCountEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: integer
        }

  defstruct key: "",
            value: 0

  field :key, 1, type: :string
  field :value, 2, type: :int64
end
defmodule Google.Cloud.Datalabeling.V1beta1.LabelStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          example_count: %{String.t() => integer}
        }

  defstruct example_count: %{}

  field :example_count, 1,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.LabelStats.ExampleCountEntry,
    json_name: "exampleCount",
    map: true
end
defmodule Google.Cloud.Datalabeling.V1beta1.AnnotatedDatasetMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_request_config:
            {:image_classification_config,
             Google.Cloud.Datalabeling.V1beta1.ImageClassificationConfig.t() | nil}
            | {:bounding_poly_config,
               Google.Cloud.Datalabeling.V1beta1.BoundingPolyConfig.t() | nil}
            | {:polyline_config, Google.Cloud.Datalabeling.V1beta1.PolylineConfig.t() | nil}
            | {:segmentation_config,
               Google.Cloud.Datalabeling.V1beta1.SegmentationConfig.t() | nil}
            | {:video_classification_config,
               Google.Cloud.Datalabeling.V1beta1.VideoClassificationConfig.t() | nil}
            | {:object_detection_config,
               Google.Cloud.Datalabeling.V1beta1.ObjectDetectionConfig.t() | nil}
            | {:object_tracking_config,
               Google.Cloud.Datalabeling.V1beta1.ObjectTrackingConfig.t() | nil}
            | {:event_config, Google.Cloud.Datalabeling.V1beta1.EventConfig.t() | nil}
            | {:text_classification_config,
               Google.Cloud.Datalabeling.V1beta1.TextClassificationConfig.t() | nil}
            | {:text_entity_extraction_config,
               Google.Cloud.Datalabeling.V1beta1.TextEntityExtractionConfig.t() | nil},
          human_annotation_config:
            Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig.t() | nil
        }

  defstruct annotation_request_config: nil,
            human_annotation_config: nil

  oneof :annotation_request_config, 0

  field :image_classification_config, 2,
    type: Google.Cloud.Datalabeling.V1beta1.ImageClassificationConfig,
    json_name: "imageClassificationConfig",
    oneof: 0

  field :bounding_poly_config, 3,
    type: Google.Cloud.Datalabeling.V1beta1.BoundingPolyConfig,
    json_name: "boundingPolyConfig",
    oneof: 0

  field :polyline_config, 4,
    type: Google.Cloud.Datalabeling.V1beta1.PolylineConfig,
    json_name: "polylineConfig",
    oneof: 0

  field :segmentation_config, 5,
    type: Google.Cloud.Datalabeling.V1beta1.SegmentationConfig,
    json_name: "segmentationConfig",
    oneof: 0

  field :video_classification_config, 6,
    type: Google.Cloud.Datalabeling.V1beta1.VideoClassificationConfig,
    json_name: "videoClassificationConfig",
    oneof: 0

  field :object_detection_config, 7,
    type: Google.Cloud.Datalabeling.V1beta1.ObjectDetectionConfig,
    json_name: "objectDetectionConfig",
    oneof: 0

  field :object_tracking_config, 8,
    type: Google.Cloud.Datalabeling.V1beta1.ObjectTrackingConfig,
    json_name: "objectTrackingConfig",
    oneof: 0

  field :event_config, 9,
    type: Google.Cloud.Datalabeling.V1beta1.EventConfig,
    json_name: "eventConfig",
    oneof: 0

  field :text_classification_config, 10,
    type: Google.Cloud.Datalabeling.V1beta1.TextClassificationConfig,
    json_name: "textClassificationConfig",
    oneof: 0

  field :text_entity_extraction_config, 11,
    type: Google.Cloud.Datalabeling.V1beta1.TextEntityExtractionConfig,
    json_name: "textEntityExtractionConfig",
    oneof: 0

  field :human_annotation_config, 1,
    type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig,
    json_name: "humanAnnotationConfig"
end
defmodule Google.Cloud.Datalabeling.V1beta1.Example do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          payload:
            {:image_payload, Google.Cloud.Datalabeling.V1beta1.ImagePayload.t() | nil}
            | {:text_payload, Google.Cloud.Datalabeling.V1beta1.TextPayload.t() | nil}
            | {:video_payload, Google.Cloud.Datalabeling.V1beta1.VideoPayload.t() | nil},
          name: String.t(),
          annotations: [Google.Cloud.Datalabeling.V1beta1.Annotation.t()]
        }

  defstruct payload: nil,
            name: "",
            annotations: []

  oneof :payload, 0

  field :image_payload, 2,
    type: Google.Cloud.Datalabeling.V1beta1.ImagePayload,
    json_name: "imagePayload",
    oneof: 0

  field :text_payload, 6,
    type: Google.Cloud.Datalabeling.V1beta1.TextPayload,
    json_name: "textPayload",
    oneof: 0

  field :video_payload, 7,
    type: Google.Cloud.Datalabeling.V1beta1.VideoPayload,
    json_name: "videoPayload",
    oneof: 0

  field :name, 1, type: :string
  field :annotations, 5, repeated: true, type: Google.Cloud.Datalabeling.V1beta1.Annotation
end
