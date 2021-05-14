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

  defstruct [
    :name,
    :display_name,
    :description,
    :create_time,
    :input_configs,
    :blocking_resources,
    :data_item_count
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :description, 3, type: :string
  field :create_time, 4, type: Google.Protobuf.Timestamp
  field :input_configs, 5, repeated: true, type: Google.Cloud.Datalabeling.V1beta1.InputConfig
  field :blocking_resources, 6, repeated: true, type: :string
  field :data_item_count, 7, type: :int64
end

defmodule Google.Cloud.Datalabeling.V1beta1.InputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_type_metadata: {atom, any},
          source: {atom, any},
          data_type: Google.Cloud.Datalabeling.V1beta1.DataType.t(),
          annotation_type: Google.Cloud.Datalabeling.V1beta1.AnnotationType.t(),
          classification_metadata:
            Google.Cloud.Datalabeling.V1beta1.ClassificationMetadata.t() | nil
        }

  defstruct [:data_type_metadata, :source, :data_type, :annotation_type, :classification_metadata]

  oneof :data_type_metadata, 0
  oneof :source, 1
  field :text_metadata, 6, type: Google.Cloud.Datalabeling.V1beta1.TextMetadata, oneof: 0
  field :gcs_source, 2, type: Google.Cloud.Datalabeling.V1beta1.GcsSource, oneof: 1
  field :bigquery_source, 5, type: Google.Cloud.Datalabeling.V1beta1.BigQuerySource, oneof: 1
  field :data_type, 1, type: Google.Cloud.Datalabeling.V1beta1.DataType, enum: true
  field :annotation_type, 3, type: Google.Cloud.Datalabeling.V1beta1.AnnotationType, enum: true

  field :classification_metadata, 4,
    type: Google.Cloud.Datalabeling.V1beta1.ClassificationMetadata
end

defmodule Google.Cloud.Datalabeling.V1beta1.TextMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          language_code: String.t()
        }

  defstruct [:language_code]

  field :language_code, 1, type: :string
end

defmodule Google.Cloud.Datalabeling.V1beta1.ClassificationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          is_multi_label: boolean
        }

  defstruct [:is_multi_label]

  field :is_multi_label, 1, type: :bool
end

defmodule Google.Cloud.Datalabeling.V1beta1.GcsSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_uri: String.t(),
          mime_type: String.t()
        }

  defstruct [:input_uri, :mime_type]

  field :input_uri, 1, type: :string
  field :mime_type, 2, type: :string
end

defmodule Google.Cloud.Datalabeling.V1beta1.BigQuerySource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_uri: String.t()
        }

  defstruct [:input_uri]

  field :input_uri, 1, type: :string
end

defmodule Google.Cloud.Datalabeling.V1beta1.OutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {atom, any}
        }

  defstruct [:destination]

  oneof :destination, 0
  field :gcs_destination, 1, type: Google.Cloud.Datalabeling.V1beta1.GcsDestination, oneof: 0

  field :gcs_folder_destination, 2,
    type: Google.Cloud.Datalabeling.V1beta1.GcsFolderDestination,
    oneof: 0
end

defmodule Google.Cloud.Datalabeling.V1beta1.GcsDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_uri: String.t(),
          mime_type: String.t()
        }

  defstruct [:output_uri, :mime_type]

  field :output_uri, 1, type: :string
  field :mime_type, 2, type: :string
end

defmodule Google.Cloud.Datalabeling.V1beta1.GcsFolderDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_folder_uri: String.t()
        }

  defstruct [:output_folder_uri]

  field :output_folder_uri, 1, type: :string
end

defmodule Google.Cloud.Datalabeling.V1beta1.DataItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          payload: {atom, any},
          name: String.t()
        }

  defstruct [:payload, :name]

  oneof :payload, 0
  field :image_payload, 2, type: Google.Cloud.Datalabeling.V1beta1.ImagePayload, oneof: 0
  field :text_payload, 3, type: Google.Cloud.Datalabeling.V1beta1.TextPayload, oneof: 0
  field :video_payload, 4, type: Google.Cloud.Datalabeling.V1beta1.VideoPayload, oneof: 0
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

  defstruct [
    :name,
    :display_name,
    :description,
    :annotation_source,
    :annotation_type,
    :example_count,
    :completed_example_count,
    :label_stats,
    :create_time,
    :metadata,
    :blocking_resources
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :description, 9, type: :string

  field :annotation_source, 3,
    type: Google.Cloud.Datalabeling.V1beta1.AnnotationSource,
    enum: true

  field :annotation_type, 8, type: Google.Cloud.Datalabeling.V1beta1.AnnotationType, enum: true
  field :example_count, 4, type: :int64
  field :completed_example_count, 5, type: :int64
  field :label_stats, 6, type: Google.Cloud.Datalabeling.V1beta1.LabelStats
  field :create_time, 7, type: Google.Protobuf.Timestamp
  field :metadata, 10, type: Google.Cloud.Datalabeling.V1beta1.AnnotatedDatasetMetadata
  field :blocking_resources, 11, repeated: true, type: :string
end

defmodule Google.Cloud.Datalabeling.V1beta1.LabelStats.ExampleCountEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: integer
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :int64
end

defmodule Google.Cloud.Datalabeling.V1beta1.LabelStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          example_count: %{String.t() => integer}
        }

  defstruct [:example_count]

  field :example_count, 1,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.LabelStats.ExampleCountEntry,
    map: true
end

defmodule Google.Cloud.Datalabeling.V1beta1.AnnotatedDatasetMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_request_config: {atom, any},
          human_annotation_config:
            Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig.t() | nil
        }

  defstruct [:annotation_request_config, :human_annotation_config]

  oneof :annotation_request_config, 0

  field :image_classification_config, 2,
    type: Google.Cloud.Datalabeling.V1beta1.ImageClassificationConfig,
    oneof: 0

  field :bounding_poly_config, 3,
    type: Google.Cloud.Datalabeling.V1beta1.BoundingPolyConfig,
    oneof: 0

  field :polyline_config, 4, type: Google.Cloud.Datalabeling.V1beta1.PolylineConfig, oneof: 0

  field :segmentation_config, 5,
    type: Google.Cloud.Datalabeling.V1beta1.SegmentationConfig,
    oneof: 0

  field :video_classification_config, 6,
    type: Google.Cloud.Datalabeling.V1beta1.VideoClassificationConfig,
    oneof: 0

  field :object_detection_config, 7,
    type: Google.Cloud.Datalabeling.V1beta1.ObjectDetectionConfig,
    oneof: 0

  field :object_tracking_config, 8,
    type: Google.Cloud.Datalabeling.V1beta1.ObjectTrackingConfig,
    oneof: 0

  field :event_config, 9, type: Google.Cloud.Datalabeling.V1beta1.EventConfig, oneof: 0

  field :text_classification_config, 10,
    type: Google.Cloud.Datalabeling.V1beta1.TextClassificationConfig,
    oneof: 0

  field :text_entity_extraction_config, 11,
    type: Google.Cloud.Datalabeling.V1beta1.TextEntityExtractionConfig,
    oneof: 0

  field :human_annotation_config, 1, type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig
end

defmodule Google.Cloud.Datalabeling.V1beta1.Example do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          payload: {atom, any},
          name: String.t(),
          annotations: [Google.Cloud.Datalabeling.V1beta1.Annotation.t()]
        }

  defstruct [:payload, :name, :annotations]

  oneof :payload, 0
  field :image_payload, 2, type: Google.Cloud.Datalabeling.V1beta1.ImagePayload, oneof: 0
  field :text_payload, 6, type: Google.Cloud.Datalabeling.V1beta1.TextPayload, oneof: 0
  field :video_payload, 7, type: Google.Cloud.Datalabeling.V1beta1.VideoPayload, oneof: 0
  field :name, 1, type: :string
  field :annotations, 5, repeated: true, type: Google.Cloud.Datalabeling.V1beta1.Annotation
end
