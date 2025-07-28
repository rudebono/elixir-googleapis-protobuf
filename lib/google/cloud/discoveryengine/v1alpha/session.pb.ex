defmodule Google.Cloud.Discoveryengine.V1alpha.FileSource do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FILE_SOURCE_UNSPECIFIED, 0
  field :FILE_SOURCE_INLINE, 1
  field :FILE_SOURCE_LOCAL, 2
  field :FILE_SOURCE_CLOUD_STORAGE, 3
  field :FILE_SOURCE_CLOUD_DRIVE, 4
  field :FILE_SOURCE_URL, 5
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Session.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :IN_PROGRESS, 1
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ImageCharacteristics.ColorSpace do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :COLOR_SPACE_UNSPECIFIED, 0
  field :RGB, 1
  field :CMYK, 2
  field :GRAYSCALE, 3
  field :YUV, 4
  field :OTHER_COLOR_SPACE, 5
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Session.Turn.QueryConfigEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Session.Turn do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :query, 1, type: Google.Cloud.Discoveryengine.V1alpha.Query, deprecated: false
  field :answer, 2, type: :string, deprecated: false

  field :detailed_answer, 7,
    type: Google.Cloud.Discoveryengine.V1alpha.Answer,
    json_name: "detailedAnswer",
    deprecated: false

  field :query_config, 16,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.Session.Turn.QueryConfigEntry,
    json_name: "queryConfig",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Session do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 7, type: :string, json_name: "displayName", deprecated: false
  field :state, 2, type: Google.Cloud.Discoveryengine.V1alpha.Session.State, enum: true
  field :user_pseudo_id, 3, type: :string, json_name: "userPseudoId"
  field :turns, 4, repeated: true, type: Google.Cloud.Discoveryengine.V1alpha.Session.Turn
  field :start_time, 5, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 6, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :is_pinned, 8, type: :bool, json_name: "isPinned", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Query do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :content, 0

  field :text, 2, type: :string, oneof: 0
  field :query_id, 1, type: :string, json_name: "queryId", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ImageCharacteristics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :width, 1, type: :int32, deprecated: false
  field :height, 2, type: :int32, deprecated: false

  field :color_space, 3,
    type: Google.Cloud.Discoveryengine.V1alpha.ImageCharacteristics.ColorSpace,
    json_name: "colorSpace",
    enum: true,
    deprecated: false

  field :bit_depth, 4, type: :int32, json_name: "bitDepth", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.VideoCharacteristics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :width, 1, type: :int32, deprecated: false
  field :height, 2, type: :int32, deprecated: false
  field :duration, 3, type: Google.Protobuf.Duration, deprecated: false
  field :frame_rate, 4, type: :double, json_name: "frameRate", deprecated: false

  field :audio_codecs, 5,
    repeated: true,
    type: :string,
    json_name: "audioCodecs",
    deprecated: false

  field :video_codecs, 6,
    repeated: true,
    type: :string,
    json_name: "videoCodecs",
    deprecated: false

  field :video_bitrate_kbps, 7, type: :int32, json_name: "videoBitrateKbps", deprecated: false
  field :audio_bitrate_kbps, 8, type: :int32, json_name: "audioBitrateKbps", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.FileCharacteristics.CharacteristicsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1alpha.FileCharacteristics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :characteristics, 6,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.FileCharacteristics.CharacteristicsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.FileView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :characteristics, 0

  field :image_characteristics, 6,
    type: Google.Cloud.Discoveryengine.V1alpha.ImageCharacteristics,
    json_name: "imageCharacteristics",
    oneof: 0,
    deprecated: false

  field :video_characteristics, 7,
    type: Google.Cloud.Discoveryengine.V1alpha.VideoCharacteristics,
    json_name: "videoCharacteristics",
    oneof: 0,
    deprecated: false

  field :file_characteristics, 8,
    type: Google.Cloud.Discoveryengine.V1alpha.FileCharacteristics,
    json_name: "fileCharacteristics",
    oneof: 0,
    deprecated: false

  field :view_id, 1, type: :string, json_name: "viewId", deprecated: false
  field :uri, 2, type: :string, deprecated: false
  field :mime_type, 3, type: :string, json_name: "mimeType", deprecated: false
  field :byte_size, 4, type: :int64, json_name: "byteSize", deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.FileMetadata.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1alpha.FileMetadata.ViewsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Discoveryengine.V1alpha.FileView
end

defmodule Google.Cloud.Discoveryengine.V1alpha.FileMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :file_id, 1, type: :string, json_name: "fileId", deprecated: false
  field :name, 2, type: :string, deprecated: false
  field :mime_type, 3, type: :string, json_name: "mimeType"
  field :byte_size, 4, type: :int64, json_name: "byteSize", deprecated: false
  field :original_uri, 9, type: :string, json_name: "originalUri", deprecated: false

  field :original_source_type, 10,
    type: Google.Cloud.Discoveryengine.V1alpha.FileSource,
    json_name: "originalSourceType",
    enum: true,
    deprecated: false

  field :upload_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "uploadTime",
    deprecated: false

  field :last_add_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "lastAddTime",
    deprecated: false

  field :metadata, 18,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.FileMetadata.MetadataEntry,
    map: true,
    deprecated: false

  field :download_uri, 20, type: :string, json_name: "downloadUri", deprecated: false

  field :file_origin_type, 21,
    type: Google.Cloud.Discoveryengine.V1alpha.FileOriginType,
    json_name: "fileOriginType",
    enum: true,
    deprecated: false

  field :views, 22,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.FileMetadata.ViewsEntry,
    map: true,
    deprecated: false
end
