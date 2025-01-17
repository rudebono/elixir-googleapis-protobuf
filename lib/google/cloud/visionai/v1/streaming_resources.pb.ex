defmodule Google.Cloud.Visionai.V1.GstreamerBufferDescriptor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :caps_string, 1, type: :string, json_name: "capsString"
  field :is_key_frame, 2, type: :bool, json_name: "isKeyFrame"
  field :pts_time, 3, type: Google.Protobuf.Timestamp, json_name: "ptsTime"
  field :dts_time, 4, type: Google.Protobuf.Timestamp, json_name: "dtsTime"
  field :duration, 5, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Visionai.V1.RawImageDescriptor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :format, 1, type: :string
  field :height, 2, type: :int32
  field :width, 3, type: :int32
end

defmodule Google.Cloud.Visionai.V1.PacketType.TypeDescriptor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :type_details, 0

  field :gstreamer_buffer_descriptor, 2,
    type: Google.Cloud.Visionai.V1.GstreamerBufferDescriptor,
    json_name: "gstreamerBufferDescriptor",
    oneof: 0

  field :raw_image_descriptor, 3,
    type: Google.Cloud.Visionai.V1.RawImageDescriptor,
    json_name: "rawImageDescriptor",
    oneof: 0

  field :type, 1, type: :string
end

defmodule Google.Cloud.Visionai.V1.PacketType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :type_class, 1, type: :string, json_name: "typeClass"

  field :type_descriptor, 2,
    type: Google.Cloud.Visionai.V1.PacketType.TypeDescriptor,
    json_name: "typeDescriptor"
end

defmodule Google.Cloud.Visionai.V1.ServerMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :offset, 1, type: :int64
  field :ingest_time, 2, type: Google.Protobuf.Timestamp, json_name: "ingestTime"
end

defmodule Google.Cloud.Visionai.V1.SeriesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :series, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.PacketHeader do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :capture_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "captureTime",
    deprecated: false

  field :type, 2, type: Google.Cloud.Visionai.V1.PacketType, deprecated: false
  field :metadata, 3, type: Google.Protobuf.Struct, deprecated: false

  field :server_metadata, 4,
    type: Google.Cloud.Visionai.V1.ServerMetadata,
    json_name: "serverMetadata",
    deprecated: false

  field :series_metadata, 5,
    type: Google.Cloud.Visionai.V1.SeriesMetadata,
    json_name: "seriesMetadata",
    deprecated: false

  field :flags, 6, type: :int32, deprecated: false
  field :trace_context, 7, type: :string, json_name: "traceContext", deprecated: false
end

defmodule Google.Cloud.Visionai.V1.Packet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :header, 1, type: Google.Cloud.Visionai.V1.PacketHeader
  field :payload, 2, type: :bytes
end
