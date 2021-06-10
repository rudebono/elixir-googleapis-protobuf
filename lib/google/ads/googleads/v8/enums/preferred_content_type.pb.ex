defmodule Google.Ads.Googleads.V8.Enums.PreferredContentTypeEnum.PreferredContentType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :YOUTUBE_TOP_CONTENT

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :YOUTUBE_TOP_CONTENT, 400
end

defmodule Google.Ads.Googleads.V8.Enums.PreferredContentTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
