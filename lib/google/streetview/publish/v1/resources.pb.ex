defmodule Google.Streetview.Publish.V1.Photo.TransferStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TRANSFER_STATUS_UNKNOWN
          | :NEVER_TRANSFERRED
          | :PENDING
          | :COMPLETED
          | :REJECTED
          | :EXPIRED
          | :CANCELLED
          | :RECEIVED_VIA_TRANSFER

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
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED_MAPS_PUBLISH_STATUS | :PUBLISHED | :REJECTED_UNKNOWN

  field :UNSPECIFIED_MAPS_PUBLISH_STATUS, 0
  field :PUBLISHED, 1
  field :REJECTED_UNKNOWN, 2
end
defmodule Google.Streetview.Publish.V1.UploadRef do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file_source: {:upload_url, String.t()}
        }

  defstruct file_source: nil

  oneof :file_source, 0

  field :upload_url, 1, type: :string, json_name: "uploadUrl", oneof: 0
end
defmodule Google.Streetview.Publish.V1.PhotoId do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t()
        }

  defstruct id: ""

  field :id, 1, type: :string
end
defmodule Google.Streetview.Publish.V1.Level do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          number: float | :infinity | :negative_infinity | :nan,
          name: String.t()
        }

  defstruct number: 0.0,
            name: ""

  field :number, 1, type: :double, deprecated: false
  field :name, 2, type: :string, deprecated: false
end
defmodule Google.Streetview.Publish.V1.Pose do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          lat_lng_pair: Google.Type.LatLng.t() | nil,
          altitude: float | :infinity | :negative_infinity | :nan,
          heading: float | :infinity | :negative_infinity | :nan,
          pitch: float | :infinity | :negative_infinity | :nan,
          roll: float | :infinity | :negative_infinity | :nan,
          level: Google.Streetview.Publish.V1.Level.t() | nil,
          accuracy_meters: float | :infinity | :negative_infinity | :nan
        }

  defstruct lat_lng_pair: nil,
            altitude: 0.0,
            heading: 0.0,
            pitch: 0.0,
            roll: 0.0,
            level: nil,
            accuracy_meters: 0.0

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          place_id: String.t(),
          name: String.t(),
          language_code: String.t()
        }

  defstruct place_id: "",
            name: "",
            language_code: ""

  field :place_id, 1, type: :string, json_name: "placeId"
  field :name, 2, type: :string, deprecated: false
  field :language_code, 3, type: :string, json_name: "languageCode", deprecated: false
end
defmodule Google.Streetview.Publish.V1.Connection do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target: Google.Streetview.Publish.V1.PhotoId.t() | nil
        }

  defstruct target: nil

  field :target, 1, type: Google.Streetview.Publish.V1.PhotoId, deprecated: false
end
defmodule Google.Streetview.Publish.V1.Photo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          photo_id: Google.Streetview.Publish.V1.PhotoId.t() | nil,
          upload_reference: Google.Streetview.Publish.V1.UploadRef.t() | nil,
          download_url: String.t(),
          thumbnail_url: String.t(),
          share_link: String.t(),
          pose: Google.Streetview.Publish.V1.Pose.t() | nil,
          connections: [Google.Streetview.Publish.V1.Connection.t()],
          capture_time: Google.Protobuf.Timestamp.t() | nil,
          upload_time: Google.Protobuf.Timestamp.t() | nil,
          places: [Google.Streetview.Publish.V1.Place.t()],
          view_count: integer,
          transfer_status: Google.Streetview.Publish.V1.Photo.TransferStatus.t(),
          maps_publish_status: Google.Streetview.Publish.V1.Photo.MapsPublishStatus.t()
        }

  defstruct photo_id: nil,
            upload_reference: nil,
            download_url: "",
            thumbnail_url: "",
            share_link: "",
            pose: nil,
            connections: [],
            capture_time: nil,
            upload_time: nil,
            places: [],
            view_count: 0,
            transfer_status: :TRANSFER_STATUS_UNKNOWN,
            maps_publish_status: :UNSPECIFIED_MAPS_PUBLISH_STATUS

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
