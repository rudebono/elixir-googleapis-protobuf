defmodule Google.Cloud.Datalabeling.V1beta1.ImagePayload do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mime_type: String.t(),
          image_thumbnail: binary,
          image_uri: String.t(),
          signed_uri: String.t()
        }

  defstruct [:mime_type, :image_thumbnail, :image_uri, :signed_uri]

  field :mime_type, 1, type: :string, json_name: "mimeType"
  field :image_thumbnail, 2, type: :bytes, json_name: "imageThumbnail"
  field :image_uri, 3, type: :string, json_name: "imageUri"
  field :signed_uri, 4, type: :string, json_name: "signedUri"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.TextPayload do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text_content: String.t()
        }

  defstruct [:text_content]

  field :text_content, 1, type: :string, json_name: "textContent"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.VideoThumbnail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          thumbnail: binary,
          time_offset: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:thumbnail, :time_offset]

  field :thumbnail, 1, type: :bytes
  field :time_offset, 2, type: Google.Protobuf.Duration, json_name: "timeOffset"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.VideoPayload do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mime_type: String.t(),
          video_uri: String.t(),
          video_thumbnails: [Google.Cloud.Datalabeling.V1beta1.VideoThumbnail.t()],
          frame_rate: float | :infinity | :negative_infinity | :nan,
          signed_uri: String.t()
        }

  defstruct [:mime_type, :video_uri, :video_thumbnails, :frame_rate, :signed_uri]

  field :mime_type, 1, type: :string, json_name: "mimeType"
  field :video_uri, 2, type: :string, json_name: "videoUri"

  field :video_thumbnails, 3,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.VideoThumbnail,
    json_name: "videoThumbnails"

  field :frame_rate, 4, type: :float, json_name: "frameRate"
  field :signed_uri, 5, type: :string, json_name: "signedUri"

  def transform_module(), do: nil
end
