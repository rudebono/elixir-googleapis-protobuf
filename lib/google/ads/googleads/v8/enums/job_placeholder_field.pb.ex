defmodule Google.Ads.Googleads.V8.Enums.JobPlaceholderFieldEnum.JobPlaceholderField do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :JOB_ID
          | :LOCATION_ID
          | :TITLE
          | :SUBTITLE
          | :DESCRIPTION
          | :IMAGE_URL
          | :CATEGORY
          | :CONTEXTUAL_KEYWORDS
          | :ADDRESS
          | :SALARY
          | :FINAL_URLS
          | :FINAL_MOBILE_URLS
          | :TRACKING_URL
          | :ANDROID_APP_LINK
          | :SIMILAR_JOB_IDS
          | :IOS_APP_LINK
          | :IOS_APP_STORE_ID

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :JOB_ID, 2

  field :LOCATION_ID, 3

  field :TITLE, 4

  field :SUBTITLE, 5

  field :DESCRIPTION, 6

  field :IMAGE_URL, 7

  field :CATEGORY, 8

  field :CONTEXTUAL_KEYWORDS, 9

  field :ADDRESS, 10

  field :SALARY, 11

  field :FINAL_URLS, 12

  field :FINAL_MOBILE_URLS, 14

  field :TRACKING_URL, 15

  field :ANDROID_APP_LINK, 16

  field :SIMILAR_JOB_IDS, 17

  field :IOS_APP_LINK, 18

  field :IOS_APP_STORE_ID, 19
end

defmodule Google.Ads.Googleads.V8.Enums.JobPlaceholderFieldEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
