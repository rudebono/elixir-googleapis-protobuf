defmodule Google.Ads.Googleads.V4.Errors.MediaUploadErrorEnum.MediaUploadError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :FILE_TOO_BIG
          | :UNPARSEABLE_IMAGE
          | :ANIMATED_IMAGE_NOT_ALLOWED
          | :FORMAT_NOT_ALLOWED
          | :EXTERNAL_URL_NOT_ALLOWED
          | :INVALID_URL_REFERENCE
          | :MISSING_PRIMARY_MEDIA_BUNDLE_ENTRY

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :FILE_TOO_BIG, 2

  field :UNPARSEABLE_IMAGE, 3

  field :ANIMATED_IMAGE_NOT_ALLOWED, 4

  field :FORMAT_NOT_ALLOWED, 5

  field :EXTERNAL_URL_NOT_ALLOWED, 6

  field :INVALID_URL_REFERENCE, 7

  field :MISSING_PRIMARY_MEDIA_BUNDLE_ENTRY, 8
end

defmodule Google.Ads.Googleads.V4.Errors.MediaUploadErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
