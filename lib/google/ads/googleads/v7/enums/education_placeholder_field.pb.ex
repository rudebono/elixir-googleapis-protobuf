defmodule Google.Ads.Googleads.V7.Enums.EducationPlaceholderFieldEnum.EducationPlaceholderField do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :PROGRAM_ID
          | :LOCATION_ID
          | :PROGRAM_NAME
          | :AREA_OF_STUDY
          | :PROGRAM_DESCRIPTION
          | :SCHOOL_NAME
          | :ADDRESS
          | :THUMBNAIL_IMAGE_URL
          | :ALTERNATIVE_THUMBNAIL_IMAGE_URL
          | :FINAL_URLS
          | :FINAL_MOBILE_URLS
          | :TRACKING_URL
          | :CONTEXTUAL_KEYWORDS
          | :ANDROID_APP_LINK
          | :SIMILAR_PROGRAM_IDS
          | :IOS_APP_LINK
          | :IOS_APP_STORE_ID

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :PROGRAM_ID, 2
  field :LOCATION_ID, 3
  field :PROGRAM_NAME, 4
  field :AREA_OF_STUDY, 5
  field :PROGRAM_DESCRIPTION, 6
  field :SCHOOL_NAME, 7
  field :ADDRESS, 8
  field :THUMBNAIL_IMAGE_URL, 9
  field :ALTERNATIVE_THUMBNAIL_IMAGE_URL, 10
  field :FINAL_URLS, 11
  field :FINAL_MOBILE_URLS, 12
  field :TRACKING_URL, 13
  field :CONTEXTUAL_KEYWORDS, 14
  field :ANDROID_APP_LINK, 15
  field :SIMILAR_PROGRAM_IDS, 16
  field :IOS_APP_LINK, 17
  field :IOS_APP_STORE_ID, 18
end
defmodule Google.Ads.Googleads.V7.Enums.EducationPlaceholderFieldEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
