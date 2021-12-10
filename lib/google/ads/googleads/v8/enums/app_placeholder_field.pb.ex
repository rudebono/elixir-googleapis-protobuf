defmodule Google.Ads.Googleads.V8.Enums.AppPlaceholderFieldEnum.AppPlaceholderField do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :STORE
          | :ID
          | :LINK_TEXT
          | :URL
          | :FINAL_URLS
          | :FINAL_MOBILE_URLS
          | :TRACKING_URL
          | :FINAL_URL_SUFFIX

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :STORE, 2
  field :ID, 3
  field :LINK_TEXT, 4
  field :URL, 5
  field :FINAL_URLS, 6
  field :FINAL_MOBILE_URLS, 7
  field :TRACKING_URL, 8
  field :FINAL_URL_SUFFIX, 9
end
defmodule Google.Ads.Googleads.V8.Enums.AppPlaceholderFieldEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
