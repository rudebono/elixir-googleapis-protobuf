defmodule Google.Ads.Googleads.V7.Enums.MimeTypeEnum.MimeType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :IMAGE_JPEG
          | :IMAGE_GIF
          | :IMAGE_PNG
          | :FLASH
          | :TEXT_HTML
          | :PDF
          | :MSWORD
          | :MSEXCEL
          | :RTF
          | :AUDIO_WAV
          | :AUDIO_MP3
          | :HTML5_AD_ZIP

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :IMAGE_JPEG, 2
  field :IMAGE_GIF, 3
  field :IMAGE_PNG, 4
  field :FLASH, 5
  field :TEXT_HTML, 6
  field :PDF, 7
  field :MSWORD, 8
  field :MSEXCEL, 9
  field :RTF, 10
  field :AUDIO_WAV, 11
  field :AUDIO_MP3, 12
  field :HTML5_AD_ZIP, 13
end

defmodule Google.Ads.Googleads.V7.Enums.MimeTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
