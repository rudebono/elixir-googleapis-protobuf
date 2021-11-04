defmodule Google.Ads.Googleads.V9.Errors.ImageErrorEnum.ImageError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :INVALID_IMAGE
          | :STORAGE_ERROR
          | :BAD_REQUEST
          | :UNEXPECTED_SIZE
          | :ANIMATED_NOT_ALLOWED
          | :ANIMATION_TOO_LONG
          | :SERVER_ERROR
          | :CMYK_JPEG_NOT_ALLOWED
          | :FLASH_NOT_ALLOWED
          | :FLASH_WITHOUT_CLICKTAG
          | :FLASH_ERROR_AFTER_FIXING_CLICK_TAG
          | :ANIMATED_VISUAL_EFFECT
          | :FLASH_ERROR
          | :LAYOUT_PROBLEM
          | :PROBLEM_READING_IMAGE_FILE
          | :ERROR_STORING_IMAGE
          | :ASPECT_RATIO_NOT_ALLOWED
          | :FLASH_HAS_NETWORK_OBJECTS
          | :FLASH_HAS_NETWORK_METHODS
          | :FLASH_HAS_URL
          | :FLASH_HAS_MOUSE_TRACKING
          | :FLASH_HAS_RANDOM_NUM
          | :FLASH_SELF_TARGETS
          | :FLASH_BAD_GETURL_TARGET
          | :FLASH_VERSION_NOT_SUPPORTED
          | :FLASH_WITHOUT_HARD_CODED_CLICK_URL
          | :INVALID_FLASH_FILE
          | :FAILED_TO_FIX_CLICK_TAG_IN_FLASH
          | :FLASH_ACCESSES_NETWORK_RESOURCES
          | :FLASH_EXTERNAL_JS_CALL
          | :FLASH_EXTERNAL_FS_CALL
          | :FILE_TOO_LARGE
          | :IMAGE_DATA_TOO_LARGE
          | :IMAGE_PROCESSING_ERROR
          | :IMAGE_TOO_SMALL
          | :INVALID_INPUT
          | :PROBLEM_READING_FILE
          | :IMAGE_CONSTRAINTS_VIOLATED
          | :FORMAT_NOT_ALLOWED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :INVALID_IMAGE, 2
  field :STORAGE_ERROR, 3
  field :BAD_REQUEST, 4
  field :UNEXPECTED_SIZE, 5
  field :ANIMATED_NOT_ALLOWED, 6
  field :ANIMATION_TOO_LONG, 7
  field :SERVER_ERROR, 8
  field :CMYK_JPEG_NOT_ALLOWED, 9
  field :FLASH_NOT_ALLOWED, 10
  field :FLASH_WITHOUT_CLICKTAG, 11
  field :FLASH_ERROR_AFTER_FIXING_CLICK_TAG, 12
  field :ANIMATED_VISUAL_EFFECT, 13
  field :FLASH_ERROR, 14
  field :LAYOUT_PROBLEM, 15
  field :PROBLEM_READING_IMAGE_FILE, 16
  field :ERROR_STORING_IMAGE, 17
  field :ASPECT_RATIO_NOT_ALLOWED, 18
  field :FLASH_HAS_NETWORK_OBJECTS, 19
  field :FLASH_HAS_NETWORK_METHODS, 20
  field :FLASH_HAS_URL, 21
  field :FLASH_HAS_MOUSE_TRACKING, 22
  field :FLASH_HAS_RANDOM_NUM, 23
  field :FLASH_SELF_TARGETS, 24
  field :FLASH_BAD_GETURL_TARGET, 25
  field :FLASH_VERSION_NOT_SUPPORTED, 26
  field :FLASH_WITHOUT_HARD_CODED_CLICK_URL, 27
  field :INVALID_FLASH_FILE, 28
  field :FAILED_TO_FIX_CLICK_TAG_IN_FLASH, 29
  field :FLASH_ACCESSES_NETWORK_RESOURCES, 30
  field :FLASH_EXTERNAL_JS_CALL, 31
  field :FLASH_EXTERNAL_FS_CALL, 32
  field :FILE_TOO_LARGE, 33
  field :IMAGE_DATA_TOO_LARGE, 34
  field :IMAGE_PROCESSING_ERROR, 35
  field :IMAGE_TOO_SMALL, 36
  field :INVALID_INPUT, 37
  field :PROBLEM_READING_FILE, 38
  field :IMAGE_CONSTRAINTS_VIOLATED, 39
  field :FORMAT_NOT_ALLOWED, 40
end

defmodule Google.Ads.Googleads.V9.Errors.ImageErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
