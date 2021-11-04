defmodule Google.Cloud.Vision.V1p4beta1.Likelihood do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNKNOWN | :VERY_UNLIKELY | :UNLIKELY | :POSSIBLE | :LIKELY | :VERY_LIKELY

  field :UNKNOWN, 0
  field :VERY_UNLIKELY, 1
  field :UNLIKELY, 2
  field :POSSIBLE, 3
  field :LIKELY, 4
  field :VERY_LIKELY, 5
end

defmodule Google.Cloud.Vision.V1p4beta1.Feature.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TYPE_UNSPECIFIED
          | :FACE_DETECTION
          | :LANDMARK_DETECTION
          | :LOGO_DETECTION
          | :LABEL_DETECTION
          | :TEXT_DETECTION
          | :DOCUMENT_TEXT_DETECTION
          | :SAFE_SEARCH_DETECTION
          | :IMAGE_PROPERTIES
          | :CROP_HINTS
          | :WEB_DETECTION
          | :PRODUCT_SEARCH
          | :OBJECT_LOCALIZATION

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
  field :PRODUCT_SEARCH, 12
  field :OBJECT_LOCALIZATION, 19
end

defmodule Google.Cloud.Vision.V1p4beta1.FaceAnnotation.Landmark.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNKNOWN_LANDMARK
          | :LEFT_EYE
          | :RIGHT_EYE
          | :LEFT_OF_LEFT_EYEBROW
          | :RIGHT_OF_LEFT_EYEBROW
          | :LEFT_OF_RIGHT_EYEBROW
          | :RIGHT_OF_RIGHT_EYEBROW
          | :MIDPOINT_BETWEEN_EYES
          | :NOSE_TIP
          | :UPPER_LIP
          | :LOWER_LIP
          | :MOUTH_LEFT
          | :MOUTH_RIGHT
          | :MOUTH_CENTER
          | :NOSE_BOTTOM_RIGHT
          | :NOSE_BOTTOM_LEFT
          | :NOSE_BOTTOM_CENTER
          | :LEFT_EYE_TOP_BOUNDARY
          | :LEFT_EYE_RIGHT_CORNER
          | :LEFT_EYE_BOTTOM_BOUNDARY
          | :LEFT_EYE_LEFT_CORNER
          | :RIGHT_EYE_TOP_BOUNDARY
          | :RIGHT_EYE_RIGHT_CORNER
          | :RIGHT_EYE_BOTTOM_BOUNDARY
          | :RIGHT_EYE_LEFT_CORNER
          | :LEFT_EYEBROW_UPPER_MIDPOINT
          | :RIGHT_EYEBROW_UPPER_MIDPOINT
          | :LEFT_EAR_TRAGION
          | :RIGHT_EAR_TRAGION
          | :LEFT_EYE_PUPIL
          | :RIGHT_EYE_PUPIL
          | :FOREHEAD_GLABELLA
          | :CHIN_GNATHION
          | :CHIN_LEFT_GONION
          | :CHIN_RIGHT_GONION

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

defmodule Google.Cloud.Vision.V1p4beta1.OperationMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :CREATED | :RUNNING | :DONE | :CANCELLED

  field :STATE_UNSPECIFIED, 0
  field :CREATED, 1
  field :RUNNING, 2
  field :DONE, 3
  field :CANCELLED, 4
end

defmodule Google.Cloud.Vision.V1p4beta1.Feature do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Vision.V1p4beta1.Feature.Type.t(),
          max_results: integer,
          model: String.t()
        }

  defstruct [:type, :max_results, :model]

  field :type, 1, type: Google.Cloud.Vision.V1p4beta1.Feature.Type, enum: true
  field :max_results, 2, type: :int32, json_name: "maxResults"
  field :model, 3, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.ImageSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_image_uri: String.t(),
          image_uri: String.t()
        }

  defstruct [:gcs_image_uri, :image_uri]

  field :gcs_image_uri, 1, type: :string, json_name: "gcsImageUri"
  field :image_uri, 2, type: :string, json_name: "imageUri"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.Image do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: binary,
          source: Google.Cloud.Vision.V1p4beta1.ImageSource.t() | nil
        }

  defstruct [:content, :source]

  field :content, 1, type: :bytes
  field :source, 2, type: Google.Cloud.Vision.V1p4beta1.ImageSource

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.FaceAnnotation.Landmark do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Vision.V1p4beta1.FaceAnnotation.Landmark.Type.t(),
          position: Google.Cloud.Vision.V1p4beta1.Position.t() | nil
        }

  defstruct [:type, :position]

  field :type, 3, type: Google.Cloud.Vision.V1p4beta1.FaceAnnotation.Landmark.Type, enum: true
  field :position, 4, type: Google.Cloud.Vision.V1p4beta1.Position

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.FaceAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bounding_poly: Google.Cloud.Vision.V1p4beta1.BoundingPoly.t() | nil,
          fd_bounding_poly: Google.Cloud.Vision.V1p4beta1.BoundingPoly.t() | nil,
          landmarks: [Google.Cloud.Vision.V1p4beta1.FaceAnnotation.Landmark.t()],
          roll_angle: float | :infinity | :negative_infinity | :nan,
          pan_angle: float | :infinity | :negative_infinity | :nan,
          tilt_angle: float | :infinity | :negative_infinity | :nan,
          detection_confidence: float | :infinity | :negative_infinity | :nan,
          landmarking_confidence: float | :infinity | :negative_infinity | :nan,
          joy_likelihood: Google.Cloud.Vision.V1p4beta1.Likelihood.t(),
          sorrow_likelihood: Google.Cloud.Vision.V1p4beta1.Likelihood.t(),
          anger_likelihood: Google.Cloud.Vision.V1p4beta1.Likelihood.t(),
          surprise_likelihood: Google.Cloud.Vision.V1p4beta1.Likelihood.t(),
          under_exposed_likelihood: Google.Cloud.Vision.V1p4beta1.Likelihood.t(),
          blurred_likelihood: Google.Cloud.Vision.V1p4beta1.Likelihood.t(),
          headwear_likelihood: Google.Cloud.Vision.V1p4beta1.Likelihood.t(),
          recognition_result: [Google.Cloud.Vision.V1p4beta1.FaceRecognitionResult.t()]
        }

  defstruct [
    :bounding_poly,
    :fd_bounding_poly,
    :landmarks,
    :roll_angle,
    :pan_angle,
    :tilt_angle,
    :detection_confidence,
    :landmarking_confidence,
    :joy_likelihood,
    :sorrow_likelihood,
    :anger_likelihood,
    :surprise_likelihood,
    :under_exposed_likelihood,
    :blurred_likelihood,
    :headwear_likelihood,
    :recognition_result
  ]

  field :bounding_poly, 1,
    type: Google.Cloud.Vision.V1p4beta1.BoundingPoly,
    json_name: "boundingPoly"

  field :fd_bounding_poly, 2,
    type: Google.Cloud.Vision.V1p4beta1.BoundingPoly,
    json_name: "fdBoundingPoly"

  field :landmarks, 3, repeated: true, type: Google.Cloud.Vision.V1p4beta1.FaceAnnotation.Landmark
  field :roll_angle, 4, type: :float, json_name: "rollAngle"
  field :pan_angle, 5, type: :float, json_name: "panAngle"
  field :tilt_angle, 6, type: :float, json_name: "tiltAngle"
  field :detection_confidence, 7, type: :float, json_name: "detectionConfidence"
  field :landmarking_confidence, 8, type: :float, json_name: "landmarkingConfidence"

  field :joy_likelihood, 9,
    type: Google.Cloud.Vision.V1p4beta1.Likelihood,
    enum: true,
    json_name: "joyLikelihood"

  field :sorrow_likelihood, 10,
    type: Google.Cloud.Vision.V1p4beta1.Likelihood,
    enum: true,
    json_name: "sorrowLikelihood"

  field :anger_likelihood, 11,
    type: Google.Cloud.Vision.V1p4beta1.Likelihood,
    enum: true,
    json_name: "angerLikelihood"

  field :surprise_likelihood, 12,
    type: Google.Cloud.Vision.V1p4beta1.Likelihood,
    enum: true,
    json_name: "surpriseLikelihood"

  field :under_exposed_likelihood, 13,
    type: Google.Cloud.Vision.V1p4beta1.Likelihood,
    enum: true,
    json_name: "underExposedLikelihood"

  field :blurred_likelihood, 14,
    type: Google.Cloud.Vision.V1p4beta1.Likelihood,
    enum: true,
    json_name: "blurredLikelihood"

  field :headwear_likelihood, 15,
    type: Google.Cloud.Vision.V1p4beta1.Likelihood,
    enum: true,
    json_name: "headwearLikelihood"

  field :recognition_result, 16,
    repeated: true,
    type: Google.Cloud.Vision.V1p4beta1.FaceRecognitionResult,
    json_name: "recognitionResult"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.LocationInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          lat_lng: Google.Type.LatLng.t() | nil
        }

  defstruct [:lat_lng]

  field :lat_lng, 1, type: Google.Type.LatLng, json_name: "latLng"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.Property do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: String.t(),
          uint64_value: non_neg_integer
        }

  defstruct [:name, :value, :uint64_value]

  field :name, 1, type: :string
  field :value, 2, type: :string
  field :uint64_value, 3, type: :uint64, json_name: "uint64Value"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.EntityAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mid: String.t(),
          locale: String.t(),
          description: String.t(),
          score: float | :infinity | :negative_infinity | :nan,
          confidence: float | :infinity | :negative_infinity | :nan,
          topicality: float | :infinity | :negative_infinity | :nan,
          bounding_poly: Google.Cloud.Vision.V1p4beta1.BoundingPoly.t() | nil,
          locations: [Google.Cloud.Vision.V1p4beta1.LocationInfo.t()],
          properties: [Google.Cloud.Vision.V1p4beta1.Property.t()]
        }

  defstruct [
    :mid,
    :locale,
    :description,
    :score,
    :confidence,
    :topicality,
    :bounding_poly,
    :locations,
    :properties
  ]

  field :mid, 1, type: :string
  field :locale, 2, type: :string
  field :description, 3, type: :string
  field :score, 4, type: :float
  field :confidence, 5, type: :float, deprecated: true
  field :topicality, 6, type: :float

  field :bounding_poly, 7,
    type: Google.Cloud.Vision.V1p4beta1.BoundingPoly,
    json_name: "boundingPoly"

  field :locations, 8, repeated: true, type: Google.Cloud.Vision.V1p4beta1.LocationInfo
  field :properties, 9, repeated: true, type: Google.Cloud.Vision.V1p4beta1.Property

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.LocalizedObjectAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mid: String.t(),
          language_code: String.t(),
          name: String.t(),
          score: float | :infinity | :negative_infinity | :nan,
          bounding_poly: Google.Cloud.Vision.V1p4beta1.BoundingPoly.t() | nil
        }

  defstruct [:mid, :language_code, :name, :score, :bounding_poly]

  field :mid, 1, type: :string
  field :language_code, 2, type: :string, json_name: "languageCode"
  field :name, 3, type: :string
  field :score, 4, type: :float

  field :bounding_poly, 5,
    type: Google.Cloud.Vision.V1p4beta1.BoundingPoly,
    json_name: "boundingPoly"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.SafeSearchAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          adult: Google.Cloud.Vision.V1p4beta1.Likelihood.t(),
          spoof: Google.Cloud.Vision.V1p4beta1.Likelihood.t(),
          medical: Google.Cloud.Vision.V1p4beta1.Likelihood.t(),
          violence: Google.Cloud.Vision.V1p4beta1.Likelihood.t(),
          racy: Google.Cloud.Vision.V1p4beta1.Likelihood.t()
        }

  defstruct [:adult, :spoof, :medical, :violence, :racy]

  field :adult, 1, type: Google.Cloud.Vision.V1p4beta1.Likelihood, enum: true
  field :spoof, 2, type: Google.Cloud.Vision.V1p4beta1.Likelihood, enum: true
  field :medical, 3, type: Google.Cloud.Vision.V1p4beta1.Likelihood, enum: true
  field :violence, 4, type: Google.Cloud.Vision.V1p4beta1.Likelihood, enum: true
  field :racy, 9, type: Google.Cloud.Vision.V1p4beta1.Likelihood, enum: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.LatLongRect do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_lat_lng: Google.Type.LatLng.t() | nil,
          max_lat_lng: Google.Type.LatLng.t() | nil
        }

  defstruct [:min_lat_lng, :max_lat_lng]

  field :min_lat_lng, 1, type: Google.Type.LatLng, json_name: "minLatLng"
  field :max_lat_lng, 2, type: Google.Type.LatLng, json_name: "maxLatLng"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.ColorInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          color: Google.Type.Color.t() | nil,
          score: float | :infinity | :negative_infinity | :nan,
          pixel_fraction: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:color, :score, :pixel_fraction]

  field :color, 1, type: Google.Type.Color
  field :score, 2, type: :float
  field :pixel_fraction, 3, type: :float, json_name: "pixelFraction"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.DominantColorsAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          colors: [Google.Cloud.Vision.V1p4beta1.ColorInfo.t()]
        }

  defstruct [:colors]

  field :colors, 1, repeated: true, type: Google.Cloud.Vision.V1p4beta1.ColorInfo

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.ImageProperties do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dominant_colors: Google.Cloud.Vision.V1p4beta1.DominantColorsAnnotation.t() | nil
        }

  defstruct [:dominant_colors]

  field :dominant_colors, 1,
    type: Google.Cloud.Vision.V1p4beta1.DominantColorsAnnotation,
    json_name: "dominantColors"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.CropHint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bounding_poly: Google.Cloud.Vision.V1p4beta1.BoundingPoly.t() | nil,
          confidence: float | :infinity | :negative_infinity | :nan,
          importance_fraction: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:bounding_poly, :confidence, :importance_fraction]

  field :bounding_poly, 1,
    type: Google.Cloud.Vision.V1p4beta1.BoundingPoly,
    json_name: "boundingPoly"

  field :confidence, 2, type: :float
  field :importance_fraction, 3, type: :float, json_name: "importanceFraction"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.CropHintsAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          crop_hints: [Google.Cloud.Vision.V1p4beta1.CropHint.t()]
        }

  defstruct [:crop_hints]

  field :crop_hints, 1,
    repeated: true,
    type: Google.Cloud.Vision.V1p4beta1.CropHint,
    json_name: "cropHints"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.CropHintsParams do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          aspect_ratios: [float | :infinity | :negative_infinity | :nan]
        }

  defstruct [:aspect_ratios]

  field :aspect_ratios, 1, repeated: true, type: :float, json_name: "aspectRatios"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.WebDetectionParams do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          include_geo_results: boolean
        }

  defstruct [:include_geo_results]

  field :include_geo_results, 2, type: :bool, json_name: "includeGeoResults"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.TextDetectionParams do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_text_detection_confidence_score: boolean
        }

  defstruct [:enable_text_detection_confidence_score]

  field :enable_text_detection_confidence_score, 9,
    type: :bool,
    json_name: "enableTextDetectionConfidenceScore"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.ImageContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          lat_long_rect: Google.Cloud.Vision.V1p4beta1.LatLongRect.t() | nil,
          language_hints: [String.t()],
          crop_hints_params: Google.Cloud.Vision.V1p4beta1.CropHintsParams.t() | nil,
          face_recognition_params: Google.Cloud.Vision.V1p4beta1.FaceRecognitionParams.t() | nil,
          product_search_params: Google.Cloud.Vision.V1p4beta1.ProductSearchParams.t() | nil,
          web_detection_params: Google.Cloud.Vision.V1p4beta1.WebDetectionParams.t() | nil,
          text_detection_params: Google.Cloud.Vision.V1p4beta1.TextDetectionParams.t() | nil
        }

  defstruct [
    :lat_long_rect,
    :language_hints,
    :crop_hints_params,
    :face_recognition_params,
    :product_search_params,
    :web_detection_params,
    :text_detection_params
  ]

  field :lat_long_rect, 1,
    type: Google.Cloud.Vision.V1p4beta1.LatLongRect,
    json_name: "latLongRect"

  field :language_hints, 2, repeated: true, type: :string, json_name: "languageHints"

  field :crop_hints_params, 4,
    type: Google.Cloud.Vision.V1p4beta1.CropHintsParams,
    json_name: "cropHintsParams"

  field :face_recognition_params, 10,
    type: Google.Cloud.Vision.V1p4beta1.FaceRecognitionParams,
    json_name: "faceRecognitionParams"

  field :product_search_params, 5,
    type: Google.Cloud.Vision.V1p4beta1.ProductSearchParams,
    json_name: "productSearchParams"

  field :web_detection_params, 6,
    type: Google.Cloud.Vision.V1p4beta1.WebDetectionParams,
    json_name: "webDetectionParams"

  field :text_detection_params, 12,
    type: Google.Cloud.Vision.V1p4beta1.TextDetectionParams,
    json_name: "textDetectionParams"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.AnnotateImageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image: Google.Cloud.Vision.V1p4beta1.Image.t() | nil,
          features: [Google.Cloud.Vision.V1p4beta1.Feature.t()],
          image_context: Google.Cloud.Vision.V1p4beta1.ImageContext.t() | nil
        }

  defstruct [:image, :features, :image_context]

  field :image, 1, type: Google.Cloud.Vision.V1p4beta1.Image
  field :features, 2, repeated: true, type: Google.Cloud.Vision.V1p4beta1.Feature

  field :image_context, 3,
    type: Google.Cloud.Vision.V1p4beta1.ImageContext,
    json_name: "imageContext"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.ImageAnnotationContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t(),
          page_number: integer
        }

  defstruct [:uri, :page_number]

  field :uri, 1, type: :string
  field :page_number, 2, type: :int32, json_name: "pageNumber"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.AnnotateImageResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          face_annotations: [Google.Cloud.Vision.V1p4beta1.FaceAnnotation.t()],
          landmark_annotations: [Google.Cloud.Vision.V1p4beta1.EntityAnnotation.t()],
          logo_annotations: [Google.Cloud.Vision.V1p4beta1.EntityAnnotation.t()],
          label_annotations: [Google.Cloud.Vision.V1p4beta1.EntityAnnotation.t()],
          localized_object_annotations: [
            Google.Cloud.Vision.V1p4beta1.LocalizedObjectAnnotation.t()
          ],
          text_annotations: [Google.Cloud.Vision.V1p4beta1.EntityAnnotation.t()],
          full_text_annotation: Google.Cloud.Vision.V1p4beta1.TextAnnotation.t() | nil,
          safe_search_annotation: Google.Cloud.Vision.V1p4beta1.SafeSearchAnnotation.t() | nil,
          image_properties_annotation: Google.Cloud.Vision.V1p4beta1.ImageProperties.t() | nil,
          crop_hints_annotation: Google.Cloud.Vision.V1p4beta1.CropHintsAnnotation.t() | nil,
          web_detection: Google.Cloud.Vision.V1p4beta1.WebDetection.t() | nil,
          product_search_results: Google.Cloud.Vision.V1p4beta1.ProductSearchResults.t() | nil,
          error: Google.Rpc.Status.t() | nil,
          context: Google.Cloud.Vision.V1p4beta1.ImageAnnotationContext.t() | nil
        }

  defstruct [
    :face_annotations,
    :landmark_annotations,
    :logo_annotations,
    :label_annotations,
    :localized_object_annotations,
    :text_annotations,
    :full_text_annotation,
    :safe_search_annotation,
    :image_properties_annotation,
    :crop_hints_annotation,
    :web_detection,
    :product_search_results,
    :error,
    :context
  ]

  field :face_annotations, 1,
    repeated: true,
    type: Google.Cloud.Vision.V1p4beta1.FaceAnnotation,
    json_name: "faceAnnotations"

  field :landmark_annotations, 2,
    repeated: true,
    type: Google.Cloud.Vision.V1p4beta1.EntityAnnotation,
    json_name: "landmarkAnnotations"

  field :logo_annotations, 3,
    repeated: true,
    type: Google.Cloud.Vision.V1p4beta1.EntityAnnotation,
    json_name: "logoAnnotations"

  field :label_annotations, 4,
    repeated: true,
    type: Google.Cloud.Vision.V1p4beta1.EntityAnnotation,
    json_name: "labelAnnotations"

  field :localized_object_annotations, 22,
    repeated: true,
    type: Google.Cloud.Vision.V1p4beta1.LocalizedObjectAnnotation,
    json_name: "localizedObjectAnnotations"

  field :text_annotations, 5,
    repeated: true,
    type: Google.Cloud.Vision.V1p4beta1.EntityAnnotation,
    json_name: "textAnnotations"

  field :full_text_annotation, 12,
    type: Google.Cloud.Vision.V1p4beta1.TextAnnotation,
    json_name: "fullTextAnnotation"

  field :safe_search_annotation, 6,
    type: Google.Cloud.Vision.V1p4beta1.SafeSearchAnnotation,
    json_name: "safeSearchAnnotation"

  field :image_properties_annotation, 8,
    type: Google.Cloud.Vision.V1p4beta1.ImageProperties,
    json_name: "imagePropertiesAnnotation"

  field :crop_hints_annotation, 11,
    type: Google.Cloud.Vision.V1p4beta1.CropHintsAnnotation,
    json_name: "cropHintsAnnotation"

  field :web_detection, 13,
    type: Google.Cloud.Vision.V1p4beta1.WebDetection,
    json_name: "webDetection"

  field :product_search_results, 14,
    type: Google.Cloud.Vision.V1p4beta1.ProductSearchResults,
    json_name: "productSearchResults"

  field :error, 9, type: Google.Rpc.Status
  field :context, 21, type: Google.Cloud.Vision.V1p4beta1.ImageAnnotationContext

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.BatchAnnotateImagesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          requests: [Google.Cloud.Vision.V1p4beta1.AnnotateImageRequest.t()]
        }

  defstruct [:requests]

  field :requests, 1, repeated: true, type: Google.Cloud.Vision.V1p4beta1.AnnotateImageRequest

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.BatchAnnotateImagesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          responses: [Google.Cloud.Vision.V1p4beta1.AnnotateImageResponse.t()]
        }

  defstruct [:responses]

  field :responses, 1, repeated: true, type: Google.Cloud.Vision.V1p4beta1.AnnotateImageResponse

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.AnnotateFileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_config: Google.Cloud.Vision.V1p4beta1.InputConfig.t() | nil,
          features: [Google.Cloud.Vision.V1p4beta1.Feature.t()],
          image_context: Google.Cloud.Vision.V1p4beta1.ImageContext.t() | nil,
          pages: [integer]
        }

  defstruct [:input_config, :features, :image_context, :pages]

  field :input_config, 1,
    type: Google.Cloud.Vision.V1p4beta1.InputConfig,
    json_name: "inputConfig"

  field :features, 2, repeated: true, type: Google.Cloud.Vision.V1p4beta1.Feature

  field :image_context, 3,
    type: Google.Cloud.Vision.V1p4beta1.ImageContext,
    json_name: "imageContext"

  field :pages, 4, repeated: true, type: :int32

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.AnnotateFileResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_config: Google.Cloud.Vision.V1p4beta1.InputConfig.t() | nil,
          responses: [Google.Cloud.Vision.V1p4beta1.AnnotateImageResponse.t()],
          total_pages: integer,
          error: Google.Rpc.Status.t() | nil
        }

  defstruct [:input_config, :responses, :total_pages, :error]

  field :input_config, 1,
    type: Google.Cloud.Vision.V1p4beta1.InputConfig,
    json_name: "inputConfig"

  field :responses, 2, repeated: true, type: Google.Cloud.Vision.V1p4beta1.AnnotateImageResponse
  field :total_pages, 3, type: :int32, json_name: "totalPages"
  field :error, 4, type: Google.Rpc.Status

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.BatchAnnotateFilesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          requests: [Google.Cloud.Vision.V1p4beta1.AnnotateFileRequest.t()]
        }

  defstruct [:requests]

  field :requests, 1, repeated: true, type: Google.Cloud.Vision.V1p4beta1.AnnotateFileRequest

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.BatchAnnotateFilesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          responses: [Google.Cloud.Vision.V1p4beta1.AnnotateFileResponse.t()]
        }

  defstruct [:responses]

  field :responses, 1, repeated: true, type: Google.Cloud.Vision.V1p4beta1.AnnotateFileResponse

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.AsyncAnnotateFileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_config: Google.Cloud.Vision.V1p4beta1.InputConfig.t() | nil,
          features: [Google.Cloud.Vision.V1p4beta1.Feature.t()],
          image_context: Google.Cloud.Vision.V1p4beta1.ImageContext.t() | nil,
          output_config: Google.Cloud.Vision.V1p4beta1.OutputConfig.t() | nil
        }

  defstruct [:input_config, :features, :image_context, :output_config]

  field :input_config, 1,
    type: Google.Cloud.Vision.V1p4beta1.InputConfig,
    json_name: "inputConfig"

  field :features, 2, repeated: true, type: Google.Cloud.Vision.V1p4beta1.Feature

  field :image_context, 3,
    type: Google.Cloud.Vision.V1p4beta1.ImageContext,
    json_name: "imageContext"

  field :output_config, 4,
    type: Google.Cloud.Vision.V1p4beta1.OutputConfig,
    json_name: "outputConfig"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.AsyncAnnotateFileResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_config: Google.Cloud.Vision.V1p4beta1.OutputConfig.t() | nil
        }

  defstruct [:output_config]

  field :output_config, 1,
    type: Google.Cloud.Vision.V1p4beta1.OutputConfig,
    json_name: "outputConfig"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.AsyncBatchAnnotateImagesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          requests: [Google.Cloud.Vision.V1p4beta1.AnnotateImageRequest.t()],
          output_config: Google.Cloud.Vision.V1p4beta1.OutputConfig.t() | nil
        }

  defstruct [:requests, :output_config]

  field :requests, 1, repeated: true, type: Google.Cloud.Vision.V1p4beta1.AnnotateImageRequest

  field :output_config, 2,
    type: Google.Cloud.Vision.V1p4beta1.OutputConfig,
    json_name: "outputConfig"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.AsyncBatchAnnotateImagesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_config: Google.Cloud.Vision.V1p4beta1.OutputConfig.t() | nil
        }

  defstruct [:output_config]

  field :output_config, 1,
    type: Google.Cloud.Vision.V1p4beta1.OutputConfig,
    json_name: "outputConfig"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.AsyncBatchAnnotateFilesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          requests: [Google.Cloud.Vision.V1p4beta1.AsyncAnnotateFileRequest.t()]
        }

  defstruct [:requests]

  field :requests, 1, repeated: true, type: Google.Cloud.Vision.V1p4beta1.AsyncAnnotateFileRequest

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.AsyncBatchAnnotateFilesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          responses: [Google.Cloud.Vision.V1p4beta1.AsyncAnnotateFileResponse.t()]
        }

  defstruct [:responses]

  field :responses, 1,
    repeated: true,
    type: Google.Cloud.Vision.V1p4beta1.AsyncAnnotateFileResponse

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.InputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_source: Google.Cloud.Vision.V1p4beta1.GcsSource.t() | nil,
          content: binary,
          mime_type: String.t()
        }

  defstruct [:gcs_source, :content, :mime_type]

  field :gcs_source, 1, type: Google.Cloud.Vision.V1p4beta1.GcsSource, json_name: "gcsSource"
  field :content, 3, type: :bytes
  field :mime_type, 2, type: :string, json_name: "mimeType"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.OutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_destination: Google.Cloud.Vision.V1p4beta1.GcsDestination.t() | nil,
          batch_size: integer
        }

  defstruct [:gcs_destination, :batch_size]

  field :gcs_destination, 1,
    type: Google.Cloud.Vision.V1p4beta1.GcsDestination,
    json_name: "gcsDestination"

  field :batch_size, 2, type: :int32, json_name: "batchSize"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.GcsSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t()
        }

  defstruct [:uri]

  field :uri, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.GcsDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t()
        }

  defstruct [:uri]

  field :uri, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Vision.V1p4beta1.OperationMetadata.State.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:state, :create_time, :update_time]

  field :state, 1, type: Google.Cloud.Vision.V1p4beta1.OperationMetadata.State, enum: true
  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 6, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p4beta1.ImageAnnotator.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.vision.v1p4beta1.ImageAnnotator"

  rpc :BatchAnnotateImages,
      Google.Cloud.Vision.V1p4beta1.BatchAnnotateImagesRequest,
      Google.Cloud.Vision.V1p4beta1.BatchAnnotateImagesResponse

  rpc :BatchAnnotateFiles,
      Google.Cloud.Vision.V1p4beta1.BatchAnnotateFilesRequest,
      Google.Cloud.Vision.V1p4beta1.BatchAnnotateFilesResponse

  rpc :AsyncBatchAnnotateImages,
      Google.Cloud.Vision.V1p4beta1.AsyncBatchAnnotateImagesRequest,
      Google.Longrunning.Operation

  rpc :AsyncBatchAnnotateFiles,
      Google.Cloud.Vision.V1p4beta1.AsyncBatchAnnotateFilesRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Vision.V1p4beta1.ImageAnnotator.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Vision.V1p4beta1.ImageAnnotator.Service
end
