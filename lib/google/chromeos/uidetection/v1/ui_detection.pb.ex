defmodule Google.Chromeos.Uidetection.V1.UiDetectionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image_png: binary,
          request: Google.Chromeos.Uidetection.V1.DetectionRequest.t() | nil
        }

  defstruct image_png: "",
            request: nil

  field :image_png, 1, type: :bytes, json_name: "imagePng", deprecated: false
  field :request, 2, type: Google.Chromeos.Uidetection.V1.DetectionRequest, deprecated: false
end
defmodule Google.Chromeos.Uidetection.V1.DetectionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          detection_request_type:
            {:word_detection_request,
             Google.Chromeos.Uidetection.V1.WordDetectionRequest.t() | nil}
            | {:text_block_detection_request,
               Google.Chromeos.Uidetection.V1.TextBlockDetectionRequest.t() | nil}
            | {:custom_icon_detection_request,
               Google.Chromeos.Uidetection.V1.CustomIconDetectionRequest.t() | nil}
        }

  defstruct detection_request_type: nil

  oneof :detection_request_type, 0

  field :word_detection_request, 1,
    type: Google.Chromeos.Uidetection.V1.WordDetectionRequest,
    json_name: "wordDetectionRequest",
    oneof: 0

  field :text_block_detection_request, 2,
    type: Google.Chromeos.Uidetection.V1.TextBlockDetectionRequest,
    json_name: "textBlockDetectionRequest",
    oneof: 0

  field :custom_icon_detection_request, 3,
    type: Google.Chromeos.Uidetection.V1.CustomIconDetectionRequest,
    json_name: "customIconDetectionRequest",
    oneof: 0
end
defmodule Google.Chromeos.Uidetection.V1.WordDetectionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          word: String.t()
        }

  defstruct word: ""

  field :word, 1, type: :string, deprecated: false
end
defmodule Google.Chromeos.Uidetection.V1.TextBlockDetectionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          words: [String.t()]
        }

  defstruct words: []

  field :words, 1, repeated: true, type: :string, deprecated: false
end
defmodule Google.Chromeos.Uidetection.V1.CustomIconDetectionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          icon_png: binary
        }

  defstruct icon_png: ""

  field :icon_png, 1, type: :bytes, json_name: "iconPng", deprecated: false
end
defmodule Google.Chromeos.Uidetection.V1.UiDetectionResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bounding_boxes: [Google.Chromeos.Uidetection.V1.BoundingBox.t()]
        }

  defstruct bounding_boxes: []

  field :bounding_boxes, 1,
    repeated: true,
    type: Google.Chromeos.Uidetection.V1.BoundingBox,
    json_name: "boundingBoxes"
end
defmodule Google.Chromeos.Uidetection.V1.BoundingBox do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t(),
          top: integer,
          left: integer,
          bottom: integer,
          right: integer
        }

  defstruct text: "",
            top: 0,
            left: 0,
            bottom: 0,
            right: 0

  field :text, 1, type: :string
  field :top, 2, type: :int32
  field :left, 3, type: :int32
  field :bottom, 4, type: :int32
  field :right, 5, type: :int32
end
defmodule Google.Chromeos.Uidetection.V1.UiDetectionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.chromeos.uidetection.v1.UiDetectionService"

  rpc :ExecuteDetection,
      Google.Chromeos.Uidetection.V1.UiDetectionRequest,
      Google.Chromeos.Uidetection.V1.UiDetectionResponse
end

defmodule Google.Chromeos.Uidetection.V1.UiDetectionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Chromeos.Uidetection.V1.UiDetectionService.Service
end
