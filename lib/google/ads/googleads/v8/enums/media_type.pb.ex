defmodule Google.Ads.Googleads.V8.Enums.MediaTypeEnum.MediaType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :IMAGE
          | :ICON
          | :MEDIA_BUNDLE
          | :AUDIO
          | :VIDEO
          | :DYNAMIC_IMAGE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :IMAGE, 2
  field :ICON, 3
  field :MEDIA_BUNDLE, 4
  field :AUDIO, 5
  field :VIDEO, 6
  field :DYNAMIC_IMAGE, 7
end

defmodule Google.Ads.Googleads.V8.Enums.MediaTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
