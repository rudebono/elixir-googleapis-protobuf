defmodule Google.Ads.Googleads.V5.Errors.MediaFileErrorEnum.MediaFileError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :CANNOT_CREATE_STANDARD_ICON
          | :CANNOT_SELECT_STANDARD_ICON_WITH_OTHER_TYPES
          | :CANNOT_SPECIFY_MEDIA_FILE_ID_AND_DATA
          | :DUPLICATE_MEDIA
          | :EMPTY_FIELD
          | :RESOURCE_REFERENCED_IN_MULTIPLE_OPS
          | :FIELD_NOT_SUPPORTED_FOR_MEDIA_SUB_TYPE
          | :INVALID_MEDIA_FILE_ID
          | :INVALID_MEDIA_SUB_TYPE
          | :INVALID_MEDIA_FILE_TYPE
          | :INVALID_MIME_TYPE
          | :INVALID_REFERENCE_ID
          | :INVALID_YOU_TUBE_ID
          | :MEDIA_FILE_FAILED_TRANSCODING
          | :MEDIA_NOT_TRANSCODED
          | :MEDIA_TYPE_DOES_NOT_MATCH_MEDIA_FILE_TYPE
          | :NO_FIELDS_SPECIFIED
          | :NULL_REFERENCE_ID_AND_MEDIA_ID
          | :TOO_LONG
          | :UNSUPPORTED_TYPE
          | :YOU_TUBE_SERVICE_UNAVAILABLE
          | :YOU_TUBE_VIDEO_HAS_NON_POSITIVE_DURATION
          | :YOU_TUBE_VIDEO_NOT_FOUND

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :CANNOT_CREATE_STANDARD_ICON, 2

  field :CANNOT_SELECT_STANDARD_ICON_WITH_OTHER_TYPES, 3

  field :CANNOT_SPECIFY_MEDIA_FILE_ID_AND_DATA, 4

  field :DUPLICATE_MEDIA, 5

  field :EMPTY_FIELD, 6

  field :RESOURCE_REFERENCED_IN_MULTIPLE_OPS, 7

  field :FIELD_NOT_SUPPORTED_FOR_MEDIA_SUB_TYPE, 8

  field :INVALID_MEDIA_FILE_ID, 9

  field :INVALID_MEDIA_SUB_TYPE, 10

  field :INVALID_MEDIA_FILE_TYPE, 11

  field :INVALID_MIME_TYPE, 12

  field :INVALID_REFERENCE_ID, 13

  field :INVALID_YOU_TUBE_ID, 14

  field :MEDIA_FILE_FAILED_TRANSCODING, 15

  field :MEDIA_NOT_TRANSCODED, 16

  field :MEDIA_TYPE_DOES_NOT_MATCH_MEDIA_FILE_TYPE, 17

  field :NO_FIELDS_SPECIFIED, 18

  field :NULL_REFERENCE_ID_AND_MEDIA_ID, 19

  field :TOO_LONG, 20

  field :UNSUPPORTED_TYPE, 21

  field :YOU_TUBE_SERVICE_UNAVAILABLE, 22

  field :YOU_TUBE_VIDEO_HAS_NON_POSITIVE_DURATION, 23

  field :YOU_TUBE_VIDEO_NOT_FOUND, 24
end

defmodule Google.Ads.Googleads.V5.Errors.MediaFileErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
