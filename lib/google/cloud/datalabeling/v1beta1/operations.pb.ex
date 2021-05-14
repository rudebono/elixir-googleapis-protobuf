defmodule Google.Cloud.Datalabeling.V1beta1.ImportDataOperationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset: String.t(),
          total_count: integer,
          import_count: integer
        }

  defstruct [:dataset, :total_count, :import_count]

  field :dataset, 1, type: :string
  field :total_count, 2, type: :int32
  field :import_count, 3, type: :int32
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

  defstruct [:dataset, :total_count, :export_count, :label_stats, :output_config]

  field :dataset, 1, type: :string
  field :total_count, 2, type: :int32
  field :export_count, 3, type: :int32
  field :label_stats, 4, type: Google.Cloud.Datalabeling.V1beta1.LabelStats
  field :output_config, 5, type: Google.Cloud.Datalabeling.V1beta1.OutputConfig
end

defmodule Google.Cloud.Datalabeling.V1beta1.ImportDataOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset: String.t(),
          partial_failures: [Google.Rpc.Status.t()],
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:dataset, :partial_failures, :create_time]

  field :dataset, 1, type: :string
  field :partial_failures, 2, repeated: true, type: Google.Rpc.Status
  field :create_time, 3, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Datalabeling.V1beta1.ExportDataOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset: String.t(),
          partial_failures: [Google.Rpc.Status.t()],
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:dataset, :partial_failures, :create_time]

  field :dataset, 1, type: :string
  field :partial_failures, 2, repeated: true, type: Google.Rpc.Status
  field :create_time, 3, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Datalabeling.V1beta1.LabelOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          details: {atom, any},
          progress_percent: integer,
          partial_failures: [Google.Rpc.Status.t()],
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:details, :progress_percent, :partial_failures, :create_time]

  oneof :details, 0

  field :image_classification_details, 3,
    type: Google.Cloud.Datalabeling.V1beta1.LabelImageClassificationOperationMetadata,
    oneof: 0

  field :image_bounding_box_details, 4,
    type: Google.Cloud.Datalabeling.V1beta1.LabelImageBoundingBoxOperationMetadata,
    oneof: 0

  field :image_bounding_poly_details, 11,
    type: Google.Cloud.Datalabeling.V1beta1.LabelImageBoundingPolyOperationMetadata,
    oneof: 0

  field :image_oriented_bounding_box_details, 14,
    type: Google.Cloud.Datalabeling.V1beta1.LabelImageOrientedBoundingBoxOperationMetadata,
    oneof: 0

  field :image_polyline_details, 12,
    type: Google.Cloud.Datalabeling.V1beta1.LabelImagePolylineOperationMetadata,
    oneof: 0

  field :image_segmentation_details, 15,
    type: Google.Cloud.Datalabeling.V1beta1.LabelImageSegmentationOperationMetadata,
    oneof: 0

  field :video_classification_details, 5,
    type: Google.Cloud.Datalabeling.V1beta1.LabelVideoClassificationOperationMetadata,
    oneof: 0

  field :video_object_detection_details, 6,
    type: Google.Cloud.Datalabeling.V1beta1.LabelVideoObjectDetectionOperationMetadata,
    oneof: 0

  field :video_object_tracking_details, 7,
    type: Google.Cloud.Datalabeling.V1beta1.LabelVideoObjectTrackingOperationMetadata,
    oneof: 0

  field :video_event_details, 8,
    type: Google.Cloud.Datalabeling.V1beta1.LabelVideoEventOperationMetadata,
    oneof: 0

  field :text_classification_details, 9,
    type: Google.Cloud.Datalabeling.V1beta1.LabelTextClassificationOperationMetadata,
    oneof: 0

  field :text_entity_extraction_details, 13,
    type: Google.Cloud.Datalabeling.V1beta1.LabelTextEntityExtractionOperationMetadata,
    oneof: 0

  field :progress_percent, 1, type: :int32
  field :partial_failures, 2, repeated: true, type: Google.Rpc.Status
  field :create_time, 16, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Datalabeling.V1beta1.LabelImageClassificationOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          basic_config: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig.t() | nil
        }

  defstruct [:basic_config]

  field :basic_config, 1, type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig
end

defmodule Google.Cloud.Datalabeling.V1beta1.LabelImageBoundingBoxOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          basic_config: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig.t() | nil
        }

  defstruct [:basic_config]

  field :basic_config, 1, type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig
end

defmodule Google.Cloud.Datalabeling.V1beta1.LabelImageOrientedBoundingBoxOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          basic_config: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig.t() | nil
        }

  defstruct [:basic_config]

  field :basic_config, 1, type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig
end

defmodule Google.Cloud.Datalabeling.V1beta1.LabelImageBoundingPolyOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          basic_config: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig.t() | nil
        }

  defstruct [:basic_config]

  field :basic_config, 1, type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig
end

defmodule Google.Cloud.Datalabeling.V1beta1.LabelImagePolylineOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          basic_config: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig.t() | nil
        }

  defstruct [:basic_config]

  field :basic_config, 1, type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig
end

defmodule Google.Cloud.Datalabeling.V1beta1.LabelImageSegmentationOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          basic_config: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig.t() | nil
        }

  defstruct [:basic_config]

  field :basic_config, 1, type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig
end

defmodule Google.Cloud.Datalabeling.V1beta1.LabelVideoClassificationOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          basic_config: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig.t() | nil
        }

  defstruct [:basic_config]

  field :basic_config, 1, type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig
end

defmodule Google.Cloud.Datalabeling.V1beta1.LabelVideoObjectDetectionOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          basic_config: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig.t() | nil
        }

  defstruct [:basic_config]

  field :basic_config, 1, type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig
end

defmodule Google.Cloud.Datalabeling.V1beta1.LabelVideoObjectTrackingOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          basic_config: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig.t() | nil
        }

  defstruct [:basic_config]

  field :basic_config, 1, type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig
end

defmodule Google.Cloud.Datalabeling.V1beta1.LabelVideoEventOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          basic_config: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig.t() | nil
        }

  defstruct [:basic_config]

  field :basic_config, 1, type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig
end

defmodule Google.Cloud.Datalabeling.V1beta1.LabelTextClassificationOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          basic_config: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig.t() | nil
        }

  defstruct [:basic_config]

  field :basic_config, 1, type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig
end

defmodule Google.Cloud.Datalabeling.V1beta1.LabelTextEntityExtractionOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          basic_config: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig.t() | nil
        }

  defstruct [:basic_config]

  field :basic_config, 1, type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig
end

defmodule Google.Cloud.Datalabeling.V1beta1.CreateInstructionMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instruction: String.t(),
          partial_failures: [Google.Rpc.Status.t()],
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:instruction, :partial_failures, :create_time]

  field :instruction, 1, type: :string
  field :partial_failures, 2, repeated: true, type: Google.Rpc.Status
  field :create_time, 3, type: Google.Protobuf.Timestamp
end
