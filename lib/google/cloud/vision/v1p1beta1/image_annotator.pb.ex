defmodule Google.Cloud.Vision.V1p1beta1.Likelihood do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNKNOWN, 0
  field :VERY_UNLIKELY, 1
  field :UNLIKELY, 2
  field :POSSIBLE, 3
  field :LIKELY, 4
  field :VERY_LIKELY, 5
end

defmodule Google.Cloud.Vision.V1p1beta1.Feature.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :FACE_DETECTION, 1
  field :LANDMARK_DETECTION, 2
  field :LOGO_DETECTION, 3
  field :LABEL_DETECTION, 4
  field :TEXT_DETECTION, 5
  field :DOCUMENT_TEXT_DETECTION, 11
  field :SAFE_SEARCH_DETECTION, 6
  field :IMAGE_PROPERTIES, 7
  field :CROP_HINTS, 9
  field :WEB_DETECTION, 10
end

defmodule Google.Cloud.Vision.V1p1beta1.FaceAnnotation.Landmark.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNKNOWN_LANDMARK, 0
  field :LEFT_EYE, 1
  field :RIGHT_EYE, 2
  field :LEFT_OF_LEFT_EYEBROW, 3
  field :RIGHT_OF_LEFT_EYEBROW, 4
  field :LEFT_OF_RIGHT_EYEBROW, 5
  field :RIGHT_OF_RIGHT_EYEBROW, 6
  field :MIDPOINT_BETWEEN_EYES, 7
  field :NOSE_TIP, 8
  field :UPPER_LIP, 9
  field :LOWER_LIP, 10
  field :MOUTH_LEFT, 11
  field :MOUTH_RIGHT, 12
  field :MOUTH_CENTER, 13
  field :NOSE_BOTTOM_RIGHT, 14
  field :NOSE_BOTTOM_LEFT, 15
  field :NOSE_BOTTOM_CENTER, 16
  field :LEFT_EYE_TOP_BOUNDARY, 17
  field :LEFT_EYE_RIGHT_CORNER, 18
  field :LEFT_EYE_BOTTOM_BOUNDARY, 19
  field :LEFT_EYE_LEFT_CORNER, 20
  field :RIGHT_EYE_TOP_BOUNDARY, 21
  field :RIGHT_EYE_RIGHT_CORNER, 22
  field :RIGHT_EYE_BOTTOM_BOUNDARY, 23
  field :RIGHT_EYE_LEFT_CORNER, 24
  field :LEFT_EYEBROW_UPPER_MIDPOINT, 25
  field :RIGHT_EYEBROW_UPPER_MIDPOINT, 26
  field :LEFT_EAR_TRAGION, 27
  field :RIGHT_EAR_TRAGION, 28
  field :LEFT_EYE_PUPIL, 29
  field :RIGHT_EYE_PUPIL, 30
  field :FOREHEAD_GLABELLA, 31
  field :CHIN_GNATHION, 32
  field :CHIN_LEFT_GONION, 33
  field :CHIN_RIGHT_GONION, 34
end

defmodule Google.Cloud.Vision.V1p1beta1.Feature do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Vision.V1p1beta1.Feature.Type, enum: true
  field :max_results, 2, type: :int32, json_name: "maxResults"
  field :model, 3, type: :string
end

defmodule Google.Cloud.Vision.V1p1beta1.ImageSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :gcs_image_uri, 1, type: :string, json_name: "gcsImageUri"
  field :image_uri, 2, type: :string, json_name: "imageUri"
end

defmodule Google.Cloud.Vision.V1p1beta1.Image do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :content, 1, type: :bytes
  field :source, 2, type: Google.Cloud.Vision.V1p1beta1.ImageSource
end

defmodule Google.Cloud.Vision.V1p1beta1.FaceAnnotation.Landmark do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 3, type: Google.Cloud.Vision.V1p1beta1.FaceAnnotation.Landmark.Type, enum: true
  field :position, 4, type: Google.Cloud.Vision.V1p1beta1.Position
end

defmodule Google.Cloud.Vision.V1p1beta1.FaceAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :bounding_poly, 1,
    type: Google.Cloud.Vision.V1p1beta1.BoundingPoly,
    json_name: "boundingPoly"

  field :fd_bounding_poly, 2,
    type: Google.Cloud.Vision.V1p1beta1.BoundingPoly,
    json_name: "fdBoundingPoly"

  field :landmarks, 3, repeated: true, type: Google.Cloud.Vision.V1p1beta1.FaceAnnotation.Landmark
  field :roll_angle, 4, type: :float, json_name: "rollAngle"
  field :pan_angle, 5, type: :float, json_name: "panAngle"
  field :tilt_angle, 6, type: :float, json_name: "tiltAngle"
  field :detection_confidence, 7, type: :float, json_name: "detectionConfidence"
  field :landmarking_confidence, 8, type: :float, json_name: "landmarkingConfidence"

  field :joy_likelihood, 9,
    type: Google.Cloud.Vision.V1p1beta1.Likelihood,
    json_name: "joyLikelihood",
    enum: true

  field :sorrow_likelihood, 10,
    type: Google.Cloud.Vision.V1p1beta1.Likelihood,
    json_name: "sorrowLikelihood",
    enum: true

  field :anger_likelihood, 11,
    type: Google.Cloud.Vision.V1p1beta1.Likelihood,
    json_name: "angerLikelihood",
    enum: true

  field :surprise_likelihood, 12,
    type: Google.Cloud.Vision.V1p1beta1.Likelihood,
    json_name: "surpriseLikelihood",
    enum: true

  field :under_exposed_likelihood, 13,
    type: Google.Cloud.Vision.V1p1beta1.Likelihood,
    json_name: "underExposedLikelihood",
    enum: true

  field :blurred_likelihood, 14,
    type: Google.Cloud.Vision.V1p1beta1.Likelihood,
    json_name: "blurredLikelihood",
    enum: true

  field :headwear_likelihood, 15,
    type: Google.Cloud.Vision.V1p1beta1.Likelihood,
    json_name: "headwearLikelihood",
    enum: true
end

defmodule Google.Cloud.Vision.V1p1beta1.LocationInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :lat_lng, 1, type: Google.Type.LatLng, json_name: "latLng"
end

defmodule Google.Cloud.Vision.V1p1beta1.Property do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :value, 2, type: :string
  field :uint64_value, 3, type: :uint64, json_name: "uint64Value"
end

defmodule Google.Cloud.Vision.V1p1beta1.EntityAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :mid, 1, type: :string
  field :locale, 2, type: :string
  field :description, 3, type: :string
  field :score, 4, type: :float
  field :confidence, 5, type: :float
  field :topicality, 6, type: :float

  field :bounding_poly, 7,
    type: Google.Cloud.Vision.V1p1beta1.BoundingPoly,
    json_name: "boundingPoly"

  field :locations, 8, repeated: true, type: Google.Cloud.Vision.V1p1beta1.LocationInfo
  field :properties, 9, repeated: true, type: Google.Cloud.Vision.V1p1beta1.Property
end

defmodule Google.Cloud.Vision.V1p1beta1.SafeSearchAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :adult, 1, type: Google.Cloud.Vision.V1p1beta1.Likelihood, enum: true
  field :spoof, 2, type: Google.Cloud.Vision.V1p1beta1.Likelihood, enum: true
  field :medical, 3, type: Google.Cloud.Vision.V1p1beta1.Likelihood, enum: true
  field :violence, 4, type: Google.Cloud.Vision.V1p1beta1.Likelihood, enum: true
  field :racy, 9, type: Google.Cloud.Vision.V1p1beta1.Likelihood, enum: true
end

defmodule Google.Cloud.Vision.V1p1beta1.LatLongRect do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :min_lat_lng, 1, type: Google.Type.LatLng, json_name: "minLatLng"
  field :max_lat_lng, 2, type: Google.Type.LatLng, json_name: "maxLatLng"
end

defmodule Google.Cloud.Vision.V1p1beta1.ColorInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :color, 1, type: Google.Type.Color
  field :score, 2, type: :float
  field :pixel_fraction, 3, type: :float, json_name: "pixelFraction"
end

defmodule Google.Cloud.Vision.V1p1beta1.DominantColorsAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :colors, 1, repeated: true, type: Google.Cloud.Vision.V1p1beta1.ColorInfo
end

defmodule Google.Cloud.Vision.V1p1beta1.ImageProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :dominant_colors, 1,
    type: Google.Cloud.Vision.V1p1beta1.DominantColorsAnnotation,
    json_name: "dominantColors"
end

defmodule Google.Cloud.Vision.V1p1beta1.CropHint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :bounding_poly, 1,
    type: Google.Cloud.Vision.V1p1beta1.BoundingPoly,
    json_name: "boundingPoly"

  field :confidence, 2, type: :float
  field :importance_fraction, 3, type: :float, json_name: "importanceFraction"
end

defmodule Google.Cloud.Vision.V1p1beta1.CropHintsAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :crop_hints, 1,
    repeated: true,
    type: Google.Cloud.Vision.V1p1beta1.CropHint,
    json_name: "cropHints"
end

defmodule Google.Cloud.Vision.V1p1beta1.CropHintsParams do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :aspect_ratios, 1, repeated: true, type: :float, json_name: "aspectRatios"
end

defmodule Google.Cloud.Vision.V1p1beta1.WebDetectionParams do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :include_geo_results, 2, type: :bool, json_name: "includeGeoResults"
end

defmodule Google.Cloud.Vision.V1p1beta1.TextDetectionParams do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :enable_text_detection_confidence_score, 9,
    type: :bool,
    json_name: "enableTextDetectionConfidenceScore"

  field :advanced_ocr_options, 11, repeated: true, type: :string, json_name: "advancedOcrOptions"
end

defmodule Google.Cloud.Vision.V1p1beta1.ImageContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :lat_long_rect, 1,
    type: Google.Cloud.Vision.V1p1beta1.LatLongRect,
    json_name: "latLongRect"

  field :language_hints, 2, repeated: true, type: :string, json_name: "languageHints"

  field :crop_hints_params, 4,
    type: Google.Cloud.Vision.V1p1beta1.CropHintsParams,
    json_name: "cropHintsParams"

  field :web_detection_params, 6,
    type: Google.Cloud.Vision.V1p1beta1.WebDetectionParams,
    json_name: "webDetectionParams"

  field :text_detection_params, 12,
    type: Google.Cloud.Vision.V1p1beta1.TextDetectionParams,
    json_name: "textDetectionParams"
end

defmodule Google.Cloud.Vision.V1p1beta1.AnnotateImageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :image, 1, type: Google.Cloud.Vision.V1p1beta1.Image
  field :features, 2, repeated: true, type: Google.Cloud.Vision.V1p1beta1.Feature

  field :image_context, 3,
    type: Google.Cloud.Vision.V1p1beta1.ImageContext,
    json_name: "imageContext"
end

defmodule Google.Cloud.Vision.V1p1beta1.AnnotateImageResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :face_annotations, 1,
    repeated: true,
    type: Google.Cloud.Vision.V1p1beta1.FaceAnnotation,
    json_name: "faceAnnotations"

  field :landmark_annotations, 2,
    repeated: true,
    type: Google.Cloud.Vision.V1p1beta1.EntityAnnotation,
    json_name: "landmarkAnnotations"

  field :logo_annotations, 3,
    repeated: true,
    type: Google.Cloud.Vision.V1p1beta1.EntityAnnotation,
    json_name: "logoAnnotations"

  field :label_annotations, 4,
    repeated: true,
    type: Google.Cloud.Vision.V1p1beta1.EntityAnnotation,
    json_name: "labelAnnotations"

  field :text_annotations, 5,
    repeated: true,
    type: Google.Cloud.Vision.V1p1beta1.EntityAnnotation,
    json_name: "textAnnotations"

  field :full_text_annotation, 12,
    type: Google.Cloud.Vision.V1p1beta1.TextAnnotation,
    json_name: "fullTextAnnotation"

  field :safe_search_annotation, 6,
    type: Google.Cloud.Vision.V1p1beta1.SafeSearchAnnotation,
    json_name: "safeSearchAnnotation"

  field :image_properties_annotation, 8,
    type: Google.Cloud.Vision.V1p1beta1.ImageProperties,
    json_name: "imagePropertiesAnnotation"

  field :crop_hints_annotation, 11,
    type: Google.Cloud.Vision.V1p1beta1.CropHintsAnnotation,
    json_name: "cropHintsAnnotation"

  field :web_detection, 13,
    type: Google.Cloud.Vision.V1p1beta1.WebDetection,
    json_name: "webDetection"

  field :error, 9, type: Google.Rpc.Status
end

defmodule Google.Cloud.Vision.V1p1beta1.BatchAnnotateImagesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :requests, 1,
    repeated: true,
    type: Google.Cloud.Vision.V1p1beta1.AnnotateImageRequest,
    deprecated: false
end

defmodule Google.Cloud.Vision.V1p1beta1.BatchAnnotateImagesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :responses, 1, repeated: true, type: Google.Cloud.Vision.V1p1beta1.AnnotateImageResponse
end

defmodule Google.Cloud.Vision.V1p1beta1.ImageAnnotator.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.vision.v1p1beta1.ImageAnnotator",
    protoc_gen_elixir_version: "0.12.0"

  rpc :BatchAnnotateImages,
      Google.Cloud.Vision.V1p1beta1.BatchAnnotateImagesRequest,
      Google.Cloud.Vision.V1p1beta1.BatchAnnotateImagesResponse
end

defmodule Google.Cloud.Vision.V1p1beta1.ImageAnnotator.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Vision.V1p1beta1.ImageAnnotator.Service
end