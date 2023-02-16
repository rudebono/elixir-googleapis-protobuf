defmodule Google.Ads.Googleads.V13.Errors.MediaUploadErrorEnum.MediaUploadError do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :FILE_TOO_BIG, 2
  field :UNPARSEABLE_IMAGE, 3
  field :ANIMATED_IMAGE_NOT_ALLOWED, 4
  field :FORMAT_NOT_ALLOWED, 5
  field :EXTERNAL_URL_NOT_ALLOWED, 6
  field :INVALID_URL_REFERENCE, 7
  field :MISSING_PRIMARY_MEDIA_BUNDLE_ENTRY, 8
  field :ANIMATED_VISUAL_EFFECT, 9
  field :ANIMATION_TOO_LONG, 10
  field :ASPECT_RATIO_NOT_ALLOWED, 11
  field :AUDIO_NOT_ALLOWED_IN_MEDIA_BUNDLE, 12
  field :CMYK_JPEG_NOT_ALLOWED, 13
  field :FLASH_NOT_ALLOWED, 14
  field :FRAME_RATE_TOO_HIGH, 15
  field :GOOGLE_WEB_DESIGNER_ZIP_FILE_NOT_PUBLISHED, 16
  field :IMAGE_CONSTRAINTS_VIOLATED, 17
  field :INVALID_MEDIA_BUNDLE, 18
  field :INVALID_MEDIA_BUNDLE_ENTRY, 19
  field :INVALID_MIME_TYPE, 20
  field :INVALID_PATH, 21
  field :LAYOUT_PROBLEM, 22
  field :MALFORMED_URL, 23
  field :MEDIA_BUNDLE_NOT_ALLOWED, 24
  field :MEDIA_BUNDLE_NOT_COMPATIBLE_TO_PRODUCT_TYPE, 25
  field :MEDIA_BUNDLE_REJECTED_BY_MULTIPLE_ASSET_SPECS, 26
  field :TOO_MANY_FILES_IN_MEDIA_BUNDLE, 27
  field :UNSUPPORTED_GOOGLE_WEB_DESIGNER_ENVIRONMENT, 28
  field :UNSUPPORTED_HTML5_FEATURE, 29
  field :URL_IN_MEDIA_BUNDLE_NOT_SSL_COMPLIANT, 30
  field :VIDEO_FILE_NAME_TOO_LONG, 31
  field :VIDEO_MULTIPLE_FILES_WITH_SAME_NAME, 32
  field :VIDEO_NOT_ALLOWED_IN_MEDIA_BUNDLE, 33
  field :CANNOT_UPLOAD_MEDIA_TYPE_THROUGH_API, 34
  field :DIMENSIONS_NOT_ALLOWED, 35
end

defmodule Google.Ads.Googleads.V13.Errors.MediaUploadErrorEnum do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end