defmodule Google.Ads.Googleads.V22.Resources.MediaFile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :mediatype, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 12, proto3_optional: true, type: :int64, deprecated: false

  field :type, 5,
    type: Google.Ads.Googleads.V22.Enums.MediaTypeEnum.MediaType,
    enum: true,
    deprecated: false

  field :mime_type, 6,
    type: Google.Ads.Googleads.V22.Enums.MimeTypeEnum.MimeType,
    json_name: "mimeType",
    enum: true,
    deprecated: false

  field :source_url, 13,
    proto3_optional: true,
    type: :string,
    json_name: "sourceUrl",
    deprecated: false

  field :name, 14, proto3_optional: true, type: :string, deprecated: false

  field :file_size, 15,
    proto3_optional: true,
    type: :int64,
    json_name: "fileSize",
    deprecated: false

  field :image, 3,
    type: Google.Ads.Googleads.V22.Resources.MediaImage,
    oneof: 0,
    deprecated: false

  field :media_bundle, 4,
    type: Google.Ads.Googleads.V22.Resources.MediaBundle,
    json_name: "mediaBundle",
    oneof: 0,
    deprecated: false

  field :audio, 10,
    type: Google.Ads.Googleads.V22.Resources.MediaAudio,
    oneof: 0,
    deprecated: false

  field :video, 11,
    type: Google.Ads.Googleads.V22.Resources.MediaVideo,
    oneof: 0,
    deprecated: false
end

defmodule Google.Ads.Googleads.V22.Resources.MediaImage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data, 4, proto3_optional: true, type: :bytes, deprecated: false

  field :full_size_image_url, 2,
    proto3_optional: true,
    type: :string,
    json_name: "fullSizeImageUrl",
    deprecated: false

  field :preview_size_image_url, 3,
    proto3_optional: true,
    type: :string,
    json_name: "previewSizeImageUrl",
    deprecated: false
end

defmodule Google.Ads.Googleads.V22.Resources.MediaBundle do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data, 3, proto3_optional: true, type: :bytes, deprecated: false
  field :url, 2, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Ads.Googleads.V22.Resources.MediaAudio do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ad_duration_millis, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "adDurationMillis",
    deprecated: false
end

defmodule Google.Ads.Googleads.V22.Resources.MediaVideo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ad_duration_millis, 5,
    proto3_optional: true,
    type: :int64,
    json_name: "adDurationMillis",
    deprecated: false

  field :youtube_video_id, 6,
    proto3_optional: true,
    type: :string,
    json_name: "youtubeVideoId",
    deprecated: false

  field :advertising_id_code, 7,
    proto3_optional: true,
    type: :string,
    json_name: "advertisingIdCode",
    deprecated: false

  field :isci_code, 8,
    proto3_optional: true,
    type: :string,
    json_name: "isciCode",
    deprecated: false
end
