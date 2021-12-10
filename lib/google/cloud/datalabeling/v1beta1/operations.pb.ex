defmodule Google.Cloud.Datalabeling.V1beta1.ImportDataOperationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset: String.t(),
          total_count: integer,
          import_count: integer
        }

  defstruct dataset: "",
            total_count: 0,
            import_count: 0

  field :dataset, 1, type: :string
  field :total_count, 2, type: :int32, json_name: "totalCount"
  field :import_count, 3, type: :int32, json_name: "importCount"
end
defmodule Google.Cloud.Datalabeling.V1beta1.ExportDataOperationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset: String.t(),
          total_count: integer,
          export_count: integer,
          label_stats: Google.Cloud.Datalabeling.V1beta1.LabelStats.t() | nil,
          output_config: Google.Cloud.Datalabeling.V1beta1.OutputConfig.t() | nil
        }

  defstruct dataset: "",
            total_count: 0,
            export_count: 0,
            label_stats: nil,
            output_config: nil

  field :dataset, 1, type: :string
  field :total_count, 2, type: :int32, json_name: "totalCount"
  field :export_count, 3, type: :int32, json_name: "exportCount"

  field :label_stats, 4,
    type: Google.Cloud.Datalabeling.V1beta1.LabelStats,
    json_name: "labelStats"

  field :output_config, 5,
    type: Google.Cloud.Datalabeling.V1beta1.OutputConfig,
    json_name: "outputConfig"
end
defmodule Google.Cloud.Datalabeling.V1beta1.ImportDataOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset: String.t(),
          partial_failures: [Google.Rpc.Status.t()],
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct dataset: "",
            partial_failures: [],
            create_time: nil

  field :dataset, 1, type: :string

  field :partial_failures, 2,
    repeated: true,
    type: Google.Rpc.Status,
    json_name: "partialFailures"

  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
end
defmodule Google.Cloud.Datalabeling.V1beta1.ExportDataOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset: String.t(),
          partial_failures: [Google.Rpc.Status.t()],
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct dataset: "",
            partial_failures: [],
            create_time: nil

  field :dataset, 1, type: :string

  field :partial_failures, 2,
    repeated: true,
    type: Google.Rpc.Status,
    json_name: "partialFailures"

  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
end
defmodule Google.Cloud.Datalabeling.V1beta1.LabelOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          details:
            {:image_classification_details,
             Google.Cloud.Datalabeling.V1beta1.LabelImageClassificationOperationMetadata.t() | nil}
            | {:image_bounding_box_details,
               Google.Cloud.Datalabeling.V1beta1.LabelImageBoundingBoxOperationMetadata.t() | nil}
            | {:image_bounding_poly_details,
               Google.Cloud.Datalabeling.V1beta1.LabelImageBoundingPolyOperationMetadata.t() | nil}
            | {:image_oriented_bounding_box_details,
               Google.Cloud.Datalabeling.V1beta1.LabelImageOrientedBoundingBoxOperationMetadata.t()
               | nil}
            | {:image_polyline_details,
               Google.Cloud.Datalabeling.V1beta1.LabelImagePolylineOperationMetadata.t() | nil}
            | {:image_segmentation_details,
               Google.Cloud.Datalabeling.V1beta1.LabelImageSegmentationOperationMetadata.t() | nil}
            | {:video_classification_details,
               Google.Cloud.Datalabeling.V1beta1.LabelVideoClassificationOperationMetadata.t()
               | nil}
            | {:video_object_detection_details,
               Google.Cloud.Datalabeling.V1beta1.LabelVideoObjectDetectionOperationMetadata.t()
               | nil}
            | {:video_object_tracking_details,
               Google.Cloud.Datalabeling.V1beta1.LabelVideoObjectTrackingOperationMetadata.t()
               | nil}
            | {:video_event_details,
               Google.Cloud.Datalabeling.V1beta1.LabelVideoEventOperationMetadata.t() | nil}
            | {:text_classification_details,
               Google.Cloud.Datalabeling.V1beta1.LabelTextClassificationOperationMetadata.t()
               | nil}
            | {:text_entity_extraction_details,
               Google.Cloud.Datalabeling.V1beta1.LabelTextEntityExtractionOperationMetadata.t()
               | nil},
          progress_percent: integer,
          partial_failures: [Google.Rpc.Status.t()],
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct details: nil,
            progress_percent: 0,
            partial_failures: [],
            create_time: nil

  oneof :details, 0

  field :image_classification_details, 3,
    type: Google.Cloud.Datalabeling.V1beta1.LabelImageClassificationOperationMetadata,
    json_name: "imageClassificationDetails",
    oneof: 0

  field :image_bounding_box_details, 4,
    type: Google.Cloud.Datalabeling.V1beta1.LabelImageBoundingBoxOperationMetadata,
    json_name: "imageBoundingBoxDetails",
    oneof: 0

  field :image_bounding_poly_details, 11,
    type: Google.Cloud.Datalabeling.V1beta1.LabelImageBoundingPolyOperationMetadata,
    json_name: "imageBoundingPolyDetails",
    oneof: 0

  field :image_oriented_bounding_box_details, 14,
    type: Google.Cloud.Datalabeling.V1beta1.LabelImageOrientedBoundingBoxOperationMetadata,
    json_name: "imageOrientedBoundingBoxDetails",
    oneof: 0

  field :image_polyline_details, 12,
    type: Google.Cloud.Datalabeling.V1beta1.LabelImagePolylineOperationMetadata,
    json_name: "imagePolylineDetails",
    oneof: 0

  field :image_segmentation_details, 15,
    type: Google.Cloud.Datalabeling.V1beta1.LabelImageSegmentationOperationMetadata,
    json_name: "imageSegmentationDetails",
    oneof: 0

  field :video_classification_details, 5,
    type: Google.Cloud.Datalabeling.V1beta1.LabelVideoClassificationOperationMetadata,
    json_name: "videoClassificationDetails",
    oneof: 0

  field :video_object_detection_details, 6,
    type: Google.Cloud.Datalabeling.V1beta1.LabelVideoObjectDetectionOperationMetadata,
    json_name: "videoObjectDetectionDetails",
    oneof: 0

  field :video_object_tracking_details, 7,
    type: Google.Cloud.Datalabeling.V1beta1.LabelVideoObjectTrackingOperationMetadata,
    json_name: "videoObjectTrackingDetails",
    oneof: 0

  field :video_event_details, 8,
    type: Google.Cloud.Datalabeling.V1beta1.LabelVideoEventOperationMetadata,
    json_name: "videoEventDetails",
    oneof: 0

  field :text_classification_details, 9,
    type: Google.Cloud.Datalabeling.V1beta1.LabelTextClassificationOperationMetadata,
    json_name: "textClassificationDetails",
    oneof: 0

  field :text_entity_extraction_details, 13,
    type: Google.Cloud.Datalabeling.V1beta1.LabelTextEntityExtractionOperationMetadata,
    json_name: "textEntityExtractionDetails",
    oneof: 0

  field :progress_percent, 1, type: :int32, json_name: "progressPercent"

  field :partial_failures, 2,
    repeated: true,
    type: Google.Rpc.Status,
    json_name: "partialFailures"

  field :create_time, 16, type: Google.Protobuf.Timestamp, json_name: "createTime"
end
defmodule Google.Cloud.Datalabeling.V1beta1.LabelImageClassificationOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          basic_config: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig.t() | nil
        }

  defstruct basic_config: nil

  field :basic_config, 1,
    type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig,
    json_name: "basicConfig"
end
defmodule Google.Cloud.Datalabeling.V1beta1.LabelImageBoundingBoxOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          basic_config: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig.t() | nil
        }

  defstruct basic_config: nil

  field :basic_config, 1,
    type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig,
    json_name: "basicConfig"
end
defmodule Google.Cloud.Datalabeling.V1beta1.LabelImageOrientedBoundingBoxOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          basic_config: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig.t() | nil
        }

  defstruct basic_config: nil

  field :basic_config, 1,
    type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig,
    json_name: "basicConfig"
end
defmodule Google.Cloud.Datalabeling.V1beta1.LabelImageBoundingPolyOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          basic_config: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig.t() | nil
        }

  defstruct basic_config: nil

  field :basic_config, 1,
    type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig,
    json_name: "basicConfig"
end
defmodule Google.Cloud.Datalabeling.V1beta1.LabelImagePolylineOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          basic_config: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig.t() | nil
        }

  defstruct basic_config: nil

  field :basic_config, 1,
    type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig,
    json_name: "basicConfig"
end
defmodule Google.Cloud.Datalabeling.V1beta1.LabelImageSegmentationOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          basic_config: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig.t() | nil
        }

  defstruct basic_config: nil

  field :basic_config, 1,
    type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig,
    json_name: "basicConfig"
end
defmodule Google.Cloud.Datalabeling.V1beta1.LabelVideoClassificationOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          basic_config: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig.t() | nil
        }

  defstruct basic_config: nil

  field :basic_config, 1,
    type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig,
    json_name: "basicConfig"
end
defmodule Google.Cloud.Datalabeling.V1beta1.LabelVideoObjectDetectionOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          basic_config: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig.t() | nil
        }

  defstruct basic_config: nil

  field :basic_config, 1,
    type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig,
    json_name: "basicConfig"
end
defmodule Google.Cloud.Datalabeling.V1beta1.LabelVideoObjectTrackingOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          basic_config: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig.t() | nil
        }

  defstruct basic_config: nil

  field :basic_config, 1,
    type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig,
    json_name: "basicConfig"
end
defmodule Google.Cloud.Datalabeling.V1beta1.LabelVideoEventOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          basic_config: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig.t() | nil
        }

  defstruct basic_config: nil

  field :basic_config, 1,
    type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig,
    json_name: "basicConfig"
end
defmodule Google.Cloud.Datalabeling.V1beta1.LabelTextClassificationOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          basic_config: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig.t() | nil
        }

  defstruct basic_config: nil

  field :basic_config, 1,
    type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig,
    json_name: "basicConfig"
end
defmodule Google.Cloud.Datalabeling.V1beta1.LabelTextEntityExtractionOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          basic_config: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig.t() | nil
        }

  defstruct basic_config: nil

  field :basic_config, 1,
    type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig,
    json_name: "basicConfig"
end
defmodule Google.Cloud.Datalabeling.V1beta1.CreateInstructionMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instruction: String.t(),
          partial_failures: [Google.Rpc.Status.t()],
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct instruction: "",
            partial_failures: [],
            create_time: nil

  field :instruction, 1, type: :string

  field :partial_failures, 2,
    repeated: true,
    type: Google.Rpc.Status,
    json_name: "partialFailures"

  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
end
