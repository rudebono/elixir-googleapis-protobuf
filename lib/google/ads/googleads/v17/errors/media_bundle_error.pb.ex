defmodule Google.Ads.Googleads.V17.Errors.MediaBundleErrorEnum.MediaBundleError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :BAD_REQUEST, 3
  field :DOUBLECLICK_BUNDLE_NOT_ALLOWED, 4
  field :EXTERNAL_URL_NOT_ALLOWED, 5
  field :FILE_TOO_LARGE, 6
  field :GOOGLE_WEB_DESIGNER_ZIP_FILE_NOT_PUBLISHED, 7
  field :INVALID_INPUT, 8
  field :INVALID_MEDIA_BUNDLE, 9
  field :INVALID_MEDIA_BUNDLE_ENTRY, 10
  field :INVALID_MIME_TYPE, 11
  field :INVALID_PATH, 12
  field :INVALID_URL_REFERENCE, 13
  field :MEDIA_DATA_TOO_LARGE, 14
  field :MISSING_PRIMARY_MEDIA_BUNDLE_ENTRY, 15
  field :SERVER_ERROR, 16
  field :STORAGE_ERROR, 17
  field :SWIFFY_BUNDLE_NOT_ALLOWED, 18
  field :TOO_MANY_FILES, 19
  field :UNEXPECTED_SIZE, 20
  field :UNSUPPORTED_GOOGLE_WEB_DESIGNER_ENVIRONMENT, 21
  field :UNSUPPORTED_HTML5_FEATURE, 22
  field :URL_IN_MEDIA_BUNDLE_NOT_SSL_COMPLIANT, 23
  field :CUSTOM_EXIT_NOT_ALLOWED, 24
end

defmodule Google.Ads.Googleads.V17.Errors.MediaBundleErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
