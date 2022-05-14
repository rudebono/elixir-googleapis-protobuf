defmodule Google.Streetview.Publish.V1.Photo.TransferStatus do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :TRANSFER_STATUS_UNKNOWN, 0
  field :NEVER_TRANSFERRED, 1
  field :PENDING, 2
  field :COMPLETED, 3
  field :REJECTED, 4
  field :EXPIRED, 5
  field :CANCELLED, 6
  field :RECEIVED_VIA_TRANSFER, 7
end
defmodule Google.Streetview.Publish.V1.Photo.MapsPublishStatus do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :UNSPECIFIED_MAPS_PUBLISH_STATUS, 0
  field :PUBLISHED, 1
  field :REJECTED_UNKNOWN, 2
end
defmodule Google.Streetview.Publish.V1.UploadRef do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :file_source, 0

  field :upload_url, 1, type: :string, json_name: "uploadUrl", oneof: 0
end
defmodule Google.Streetview.Publish.V1.PhotoId do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :id, 1, type: :string
end
defmodule Google.Streetview.Publish.V1.Level do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :number, 1, type: :double, deprecated: false
  field :name, 2, type: :string, deprecated: false
end
defmodule Google.Streetview.Publish.V1.Pose do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :lat_lng_pair, 1, type: Google.Type.LatLng, json_name: "latLngPair"
  field :altitude, 2, type: :double
  field :heading, 3, type: :double
  field :pitch, 4, type: :double
  field :roll, 5, type: :double
  field :level, 7, type: Google.Streetview.Publish.V1.Level
  field :accuracy_meters, 9, type: :float, json_name: "accuracyMeters"
end
defmodule Google.Streetview.Publish.V1.Place do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :place_id, 1, type: :string, json_name: "placeId"
  field :name, 2, type: :string, deprecated: false
  field :language_code, 3, type: :string, json_name: "languageCode", deprecated: false
end
defmodule Google.Streetview.Publish.V1.Connection do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :target, 1, type: Google.Streetview.Publish.V1.PhotoId, deprecated: false
end
defmodule Google.Streetview.Publish.V1.Photo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :photo_id, 1,
    type: Google.Streetview.Publish.V1.PhotoId,
    json_name: "photoId",
    deprecated: false

  field :upload_reference, 2,
    type: Google.Streetview.Publish.V1.UploadRef,
    json_name: "uploadReference",
    deprecated: false

  field :download_url, 3, type: :string, json_name: "downloadUrl", deprecated: false
  field :thumbnail_url, 9, type: :string, json_name: "thumbnailUrl", deprecated: false
  field :share_link, 11, type: :string, json_name: "shareLink", deprecated: false
  field :pose, 4, type: Google.Streetview.Publish.V1.Pose, deprecated: false

  field :connections, 5,
    repeated: true,
    type: Google.Streetview.Publish.V1.Connection,
    deprecated: false

  field :capture_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "captureTime",
    deprecated: false

  field :upload_time, 14,
    type: Google.Protobuf.Timestamp,
    json_name: "uploadTime",
    deprecated: false

  field :places, 7, repeated: true, type: Google.Streetview.Publish.V1.Place, deprecated: false
  field :view_count, 10, type: :int64, json_name: "viewCount", deprecated: false

  field :transfer_status, 12,
    type: Google.Streetview.Publish.V1.Photo.TransferStatus,
    json_name: "transferStatus",
    enum: true,
    deprecated: false

  field :maps_publish_status, 13,
    type: Google.Streetview.Publish.V1.Photo.MapsPublishStatus,
    json_name: "mapsPublishStatus",
    enum: true,
    deprecated: false
end
