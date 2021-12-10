defmodule Google.Ads.Googleads.V7.Enums.SitelinkPlaceholderFieldEnum.SitelinkPlaceholderField do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :TEXT
          | :LINE_1
          | :LINE_2
          | :FINAL_URLS
          | :FINAL_MOBILE_URLS
          | :TRACKING_URL
          | :FINAL_URL_SUFFIX

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :TEXT, 2
  field :LINE_1, 3
  field :LINE_2, 4
  field :FINAL_URLS, 5
  field :FINAL_MOBILE_URLS, 6
  field :TRACKING_URL, 7
  field :FINAL_URL_SUFFIX, 8
end
defmodule Google.Ads.Googleads.V7.Enums.SitelinkPlaceholderFieldEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
