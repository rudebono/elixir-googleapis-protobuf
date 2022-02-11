defmodule Google.Ads.Googleads.V10.Enums.ResponseContentTypeEnum.ResponseContentType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :RESOURCE_NAME_ONLY | :MUTABLE_RESOURCE

  field :UNSPECIFIED, 0
  field :RESOURCE_NAME_ONLY, 1
  field :MUTABLE_RESOURCE, 2
end
defmodule Google.Ads.Googleads.V10.Enums.ResponseContentTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
