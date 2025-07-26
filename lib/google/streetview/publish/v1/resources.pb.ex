defmodule Google.Streetview.Publish.V1.ProcessingState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PROCESSING_STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :PROCESSING, 2
  field :PROCESSED, 3
  field :FAILED, 4
end

defmodule Google.Streetview.Publish.V1.ProcessingFailureReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PROCESSING_FAILURE_REASON_UNSPECIFIED, 0
  field :LOW_RESOLUTION, 1
  field :DUPLICATE, 2
  field :INSUFFICIENT_GPS, 3
  field :NO_OVERLAP_GPS, 4
  field :INVALID_GPS, 5
  field :FAILED_TO_REFINE_POSITIONS, 6
  field :TAKEDOWN, 7
  field :CORRUPT_VIDEO, 8
  field :INTERNAL, 9
  field :INVALID_VIDEO_FORMAT, 10
  field :INVALID_VIDEO_DIMENSIONS, 11
  field :INVALID_CAPTURE_TIME, 12
  field :GPS_DATA_GAP, 13
  field :JUMPY_GPS, 14
  field :INVALID_IMU, 15
  field :INSUFFICIENT_IMU, 21
  field :INSUFFICIENT_OVERLAP_TIME_SERIES, 22
  field :IMU_DATA_GAP, 16
  field :UNSUPPORTED_CAMERA, 17
  field :NOT_OUTDOORS, 18
  field :INSUFFICIENT_VIDEO_FRAMES, 19
  field :INSUFFICIENT_MOVEMENT, 20
  field :MAST_DOWN, 27
  field :CAMERA_COVERED, 28
end

defmodule Google.Streetview.Publish.V1.Photo.TransferStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED_MAPS_PUBLISH_STATUS, 0
  field :PUBLISHED, 1
  field :REJECTED_UNKNOWN, 2
end

defmodule Google.Streetview.Publish.V1.PhotoSequence.GpsSource do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PHOTO_SEQUENCE, 0
  field :CAMERA_MOTION_METADATA_TRACK, 1
end

defmodule Google.Streetview.Publish.V1.UploadRef do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :file_source, 0

  field :upload_url, 1, type: :string, json_name: "uploadUrl", oneof: 0
end

defmodule Google.Streetview.Publish.V1.PhotoId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 1, type: :string
end

defmodule Google.Streetview.Publish.V1.Level do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :number, 1, type: :double, deprecated: false
  field :name, 2, type: :string, deprecated: false
end

defmodule Google.Streetview.Publish.V1.Pose do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :lat_lng_pair, 1, type: Google.Type.LatLng, json_name: "latLngPair"
  field :altitude, 2, type: :double
  field :heading, 3, type: :double
  field :pitch, 4, type: :double
  field :roll, 5, type: :double

  field :gps_record_timestamp_unix_epoch, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "gpsRecordTimestampUnixEpoch"

  field :level, 7, type: Google.Streetview.Publish.V1.Level
  field :accuracy_meters, 9, type: :float, json_name: "accuracyMeters"
end

defmodule Google.Streetview.Publish.V1.Imu.Measurement3d do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :capture_time, 1, type: Google.Protobuf.Timestamp, json_name: "captureTime"
  field :x, 2, type: :float
  field :y, 3, type: :float
  field :z, 4, type: :float
end

defmodule Google.Streetview.Publish.V1.Imu do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :accel_mpsps, 1,
    repeated: true,
    type: Google.Streetview.Publish.V1.Imu.Measurement3d,
    json_name: "accelMpsps"

  field :gyro_rps, 2,
    repeated: true,
    type: Google.Streetview.Publish.V1.Imu.Measurement3d,
    json_name: "gyroRps"

  field :mag_ut, 3,
    repeated: true,
    type: Google.Streetview.Publish.V1.Imu.Measurement3d,
    json_name: "magUt"
end

defmodule Google.Streetview.Publish.V1.Place do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :place_id, 1, type: :string, json_name: "placeId"
  field :name, 2, type: :string, deprecated: false
  field :language_code, 3, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Streetview.Publish.V1.Connection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :target, 1, type: Google.Streetview.Publish.V1.PhotoId, deprecated: false
end

defmodule Google.Streetview.Publish.V1.Photo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

defmodule Google.Streetview.Publish.V1.PhotoSequence do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :photos, 2, repeated: true, type: Google.Streetview.Publish.V1.Photo, deprecated: false

  field :upload_reference, 3,
    type: Google.Streetview.Publish.V1.UploadRef,
    json_name: "uploadReference",
    deprecated: false

  field :capture_time_override, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "captureTimeOverride",
    deprecated: false

  field :upload_time, 18,
    type: Google.Protobuf.Timestamp,
    json_name: "uploadTime",
    deprecated: false

  field :raw_gps_timeline, 7,
    repeated: true,
    type: Google.Streetview.Publish.V1.Pose,
    json_name: "rawGpsTimeline",
    deprecated: false

  field :gps_source, 8,
    type: Google.Streetview.Publish.V1.PhotoSequence.GpsSource,
    json_name: "gpsSource",
    enum: true,
    deprecated: false

  field :imu, 11, type: Google.Streetview.Publish.V1.Imu, deprecated: false

  field :processing_state, 12,
    type: Google.Streetview.Publish.V1.ProcessingState,
    json_name: "processingState",
    enum: true,
    deprecated: false

  field :failure_reason, 13,
    type: Google.Streetview.Publish.V1.ProcessingFailureReason,
    json_name: "failureReason",
    enum: true,
    deprecated: false

  field :failure_details, 23,
    type: Google.Streetview.Publish.V1.ProcessingFailureDetails,
    json_name: "failureDetails",
    deprecated: false

  field :distance_meters, 16, type: :double, json_name: "distanceMeters", deprecated: false

  field :sequence_bounds, 20,
    type: Google.Streetview.Publish.V1.LatLngBounds,
    json_name: "sequenceBounds",
    deprecated: false

  field :view_count, 21, type: :int64, json_name: "viewCount", deprecated: false
  field :filename, 22, type: :string, deprecated: false
end

defmodule Google.Streetview.Publish.V1.LatLngBounds do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :southwest, 1, type: Google.Type.LatLng
  field :northeast, 2, type: Google.Type.LatLng
end

defmodule Google.Streetview.Publish.V1.ProcessingFailureDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :details, 0

  field :insufficient_gps_details, 1,
    type: Google.Streetview.Publish.V1.InsufficientGpsFailureDetails,
    json_name: "insufficientGpsDetails",
    oneof: 0

  field :gps_data_gap_details, 2,
    type: Google.Streetview.Publish.V1.GpsDataGapFailureDetails,
    json_name: "gpsDataGapDetails",
    oneof: 0

  field :imu_data_gap_details, 3,
    type: Google.Streetview.Publish.V1.ImuDataGapFailureDetails,
    json_name: "imuDataGapDetails",
    oneof: 0

  field :not_outdoors_details, 4,
    type: Google.Streetview.Publish.V1.NotOutdoorsFailureDetails,
    json_name: "notOutdoorsDetails",
    oneof: 0

  field :no_overlap_gps_details, 5,
    type: Google.Streetview.Publish.V1.NoOverlapGpsFailureDetails,
    json_name: "noOverlapGpsDetails",
    oneof: 0
end

defmodule Google.Streetview.Publish.V1.InsufficientGpsFailureDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :gps_points_found, 1, proto3_optional: true, type: :int32, json_name: "gpsPointsFound"
end

defmodule Google.Streetview.Publish.V1.GpsDataGapFailureDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :gap_duration, 1,
    proto3_optional: true,
    type: Google.Protobuf.Duration,
    json_name: "gapDuration"

  field :gap_start_time, 2,
    proto3_optional: true,
    type: Google.Protobuf.Duration,
    json_name: "gapStartTime"
end

defmodule Google.Streetview.Publish.V1.ImuDataGapFailureDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :gap_duration, 1,
    proto3_optional: true,
    type: Google.Protobuf.Duration,
    json_name: "gapDuration"

  field :gap_start_time, 2,
    proto3_optional: true,
    type: Google.Protobuf.Duration,
    json_name: "gapStartTime"
end

defmodule Google.Streetview.Publish.V1.NotOutdoorsFailureDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_time, 1,
    proto3_optional: true,
    type: Google.Protobuf.Duration,
    json_name: "startTime"
end

defmodule Google.Streetview.Publish.V1.NoOverlapGpsFailureDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :gps_start_time, 1,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "gpsStartTime"

  field :gps_end_time, 2,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "gpsEndTime"

  field :video_start_time, 3,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "videoStartTime"

  field :video_end_time, 4,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "videoEndTime"
end
