defmodule Google.Chromeos.Uidetection.V1.UiDetectionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :image_png, 1, type: :bytes, json_name: "imagePng", deprecated: false
  field :request, 2, type: Google.Chromeos.Uidetection.V1.DetectionRequest, deprecated: false
end

defmodule Google.Chromeos.Uidetection.V1.DetectionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :word, 1, type: :string, deprecated: false
  field :regex_mode, 2, type: :bool, json_name: "regexMode"
  field :disable_approx_match, 3, type: :bool, json_name: "disableApproxMatch"
  field :max_edit_distance, 4, proto3_optional: true, type: :int32, json_name: "maxEditDistance"
end

defmodule Google.Chromeos.Uidetection.V1.TextBlockDetectionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :words, 1, repeated: true, type: :string, deprecated: false
  field :regex_mode, 2, type: :bool, json_name: "regexMode"
  field :disable_approx_match, 3, type: :bool, json_name: "disableApproxMatch"
  field :max_edit_distance, 4, proto3_optional: true, type: :int32, json_name: "maxEditDistance"
end

defmodule Google.Chromeos.Uidetection.V1.CustomIconDetectionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :icon_png, 1, type: :bytes, json_name: "iconPng", deprecated: false
  field :match_count, 2, type: :int32, json_name: "matchCount"
  field :min_confidence_threshold, 3, type: :double, json_name: "minConfidenceThreshold"
end

defmodule Google.Chromeos.Uidetection.V1.UiDetectionResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :bounding_boxes, 1,
    repeated: true,
    type: Google.Chromeos.Uidetection.V1.BoundingBox,
    json_name: "boundingBoxes"
end

defmodule Google.Chromeos.Uidetection.V1.BoundingBox do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :text, 1, type: :string
  field :top, 2, type: :int32
  field :left, 3, type: :int32
  field :bottom, 4, type: :int32
  field :right, 5, type: :int32
end

defmodule Google.Chromeos.Uidetection.V1.UiDetectionService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.chromeos.uidetection.v1.UiDetectionService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ExecuteDetection,
      Google.Chromeos.Uidetection.V1.UiDetectionRequest,
      Google.Chromeos.Uidetection.V1.UiDetectionResponse
end

defmodule Google.Chromeos.Uidetection.V1.UiDetectionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Chromeos.Uidetection.V1.UiDetectionService.Service
end