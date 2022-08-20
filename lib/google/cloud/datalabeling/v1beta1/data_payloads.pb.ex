defmodule Google.Cloud.Datalabeling.V1beta1.ImagePayload do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :mime_type, 1, type: :string, json_name: "mimeType"
  field :image_thumbnail, 2, type: :bytes, json_name: "imageThumbnail"
  field :image_uri, 3, type: :string, json_name: "imageUri"
  field :signed_uri, 4, type: :string, json_name: "signedUri"
end

defmodule Google.Cloud.Datalabeling.V1beta1.TextPayload do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :text_content, 1, type: :string, json_name: "textContent"
end

defmodule Google.Cloud.Datalabeling.V1beta1.VideoThumbnail do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :thumbnail, 1, type: :bytes
  field :time_offset, 2, type: Google.Protobuf.Duration, json_name: "timeOffset"
end

defmodule Google.Cloud.Datalabeling.V1beta1.VideoPayload do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :mime_type, 1, type: :string, json_name: "mimeType"
  field :video_uri, 2, type: :string, json_name: "videoUri"

  field :video_thumbnails, 3,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.VideoThumbnail,
    json_name: "videoThumbnails"

  field :frame_rate, 4, type: :float, json_name: "frameRate"
  field :signed_uri, 5, type: :string, json_name: "signedUri"
end