defmodule Google.Cloud.Video.Stitcher.V1.CreateCdnKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :cdn_key, 2,
    type: Google.Cloud.Video.Stitcher.V1.CdnKey,
    json_name: "cdnKey",
    deprecated: false

  field :cdn_key_id, 3, type: :string, json_name: "cdnKeyId", deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.ListCdnKeysRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Video.Stitcher.V1.ListCdnKeysResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :cdn_keys, 1,
    repeated: true,
    type: Google.Cloud.Video.Stitcher.V1.CdnKey,
    json_name: "cdnKeys"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Video.Stitcher.V1.GetCdnKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.DeleteCdnKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.UpdateCdnKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :cdn_key, 1,
    type: Google.Cloud.Video.Stitcher.V1.CdnKey,
    json_name: "cdnKey",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.CreateVodSessionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :vod_session, 2,
    type: Google.Cloud.Video.Stitcher.V1.VodSession,
    json_name: "vodSession",
    deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.GetVodSessionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.ListVodStitchDetailsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Video.Stitcher.V1.ListVodStitchDetailsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :vod_stitch_details, 1,
    repeated: true,
    type: Google.Cloud.Video.Stitcher.V1.VodStitchDetail,
    json_name: "vodStitchDetails"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Video.Stitcher.V1.GetVodStitchDetailRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.ListVodAdTagDetailsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Video.Stitcher.V1.ListVodAdTagDetailsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :vod_ad_tag_details, 1,
    repeated: true,
    type: Google.Cloud.Video.Stitcher.V1.VodAdTagDetail,
    json_name: "vodAdTagDetails"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Video.Stitcher.V1.GetVodAdTagDetailRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.ListLiveAdTagDetailsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Video.Stitcher.V1.ListLiveAdTagDetailsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :live_ad_tag_details, 1,
    repeated: true,
    type: Google.Cloud.Video.Stitcher.V1.LiveAdTagDetail,
    json_name: "liveAdTagDetails"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Video.Stitcher.V1.GetLiveAdTagDetailRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.CreateSlateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :slate_id, 2, type: :string, json_name: "slateId", deprecated: false
  field :slate, 3, type: Google.Cloud.Video.Stitcher.V1.Slate, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Video.Stitcher.V1.GetSlateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.ListSlatesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Video.Stitcher.V1.ListSlatesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :slates, 1, repeated: true, type: Google.Cloud.Video.Stitcher.V1.Slate
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Video.Stitcher.V1.UpdateSlateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :slate, 1, type: Google.Cloud.Video.Stitcher.V1.Slate, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.DeleteSlateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.CreateLiveSessionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :live_session, 2,
    type: Google.Cloud.Video.Stitcher.V1.LiveSession,
    json_name: "liveSession",
    deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.GetLiveSessionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.CreateLiveConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :live_config_id, 2, type: :string, json_name: "liveConfigId", deprecated: false

  field :live_config, 3,
    type: Google.Cloud.Video.Stitcher.V1.LiveConfig,
    json_name: "liveConfig",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Video.Stitcher.V1.ListLiveConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.ListLiveConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :live_configs, 1,
    repeated: true,
    type: Google.Cloud.Video.Stitcher.V1.LiveConfig,
    json_name: "liveConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Video.Stitcher.V1.GetLiveConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.DeleteLiveConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.UpdateLiveConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :live_config, 1,
    type: Google.Cloud.Video.Stitcher.V1.LiveConfig,
    json_name: "liveConfig",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.CreateVodConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :vod_config_id, 2, type: :string, json_name: "vodConfigId", deprecated: false

  field :vod_config, 3,
    type: Google.Cloud.Video.Stitcher.V1.VodConfig,
    json_name: "vodConfig",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.ListVodConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.ListVodConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :vod_configs, 1,
    repeated: true,
    type: Google.Cloud.Video.Stitcher.V1.VodConfig,
    json_name: "vodConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Video.Stitcher.V1.GetVodConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.DeleteVodConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.UpdateVodConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :vod_config, 1,
    type: Google.Cloud.Video.Stitcher.V1.VodConfig,
    json_name: "vodConfig",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :target, 3, type: :string
  field :verb, 4, type: :string
end

defmodule Google.Cloud.Video.Stitcher.V1.VideoStitcherService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.video.stitcher.v1.VideoStitcherService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateCdnKey,
      Google.Cloud.Video.Stitcher.V1.CreateCdnKeyRequest,
      Google.Longrunning.Operation

  rpc :ListCdnKeys,
      Google.Cloud.Video.Stitcher.V1.ListCdnKeysRequest,
      Google.Cloud.Video.Stitcher.V1.ListCdnKeysResponse

  rpc :GetCdnKey,
      Google.Cloud.Video.Stitcher.V1.GetCdnKeyRequest,
      Google.Cloud.Video.Stitcher.V1.CdnKey

  rpc :DeleteCdnKey,
      Google.Cloud.Video.Stitcher.V1.DeleteCdnKeyRequest,
      Google.Longrunning.Operation

  rpc :UpdateCdnKey,
      Google.Cloud.Video.Stitcher.V1.UpdateCdnKeyRequest,
      Google.Longrunning.Operation

  rpc :CreateVodSession,
      Google.Cloud.Video.Stitcher.V1.CreateVodSessionRequest,
      Google.Cloud.Video.Stitcher.V1.VodSession

  rpc :GetVodSession,
      Google.Cloud.Video.Stitcher.V1.GetVodSessionRequest,
      Google.Cloud.Video.Stitcher.V1.VodSession

  rpc :ListVodStitchDetails,
      Google.Cloud.Video.Stitcher.V1.ListVodStitchDetailsRequest,
      Google.Cloud.Video.Stitcher.V1.ListVodStitchDetailsResponse

  rpc :GetVodStitchDetail,
      Google.Cloud.Video.Stitcher.V1.GetVodStitchDetailRequest,
      Google.Cloud.Video.Stitcher.V1.VodStitchDetail

  rpc :ListVodAdTagDetails,
      Google.Cloud.Video.Stitcher.V1.ListVodAdTagDetailsRequest,
      Google.Cloud.Video.Stitcher.V1.ListVodAdTagDetailsResponse

  rpc :GetVodAdTagDetail,
      Google.Cloud.Video.Stitcher.V1.GetVodAdTagDetailRequest,
      Google.Cloud.Video.Stitcher.V1.VodAdTagDetail

  rpc :ListLiveAdTagDetails,
      Google.Cloud.Video.Stitcher.V1.ListLiveAdTagDetailsRequest,
      Google.Cloud.Video.Stitcher.V1.ListLiveAdTagDetailsResponse

  rpc :GetLiveAdTagDetail,
      Google.Cloud.Video.Stitcher.V1.GetLiveAdTagDetailRequest,
      Google.Cloud.Video.Stitcher.V1.LiveAdTagDetail

  rpc :CreateSlate,
      Google.Cloud.Video.Stitcher.V1.CreateSlateRequest,
      Google.Longrunning.Operation

  rpc :ListSlates,
      Google.Cloud.Video.Stitcher.V1.ListSlatesRequest,
      Google.Cloud.Video.Stitcher.V1.ListSlatesResponse

  rpc :GetSlate,
      Google.Cloud.Video.Stitcher.V1.GetSlateRequest,
      Google.Cloud.Video.Stitcher.V1.Slate

  rpc :UpdateSlate,
      Google.Cloud.Video.Stitcher.V1.UpdateSlateRequest,
      Google.Longrunning.Operation

  rpc :DeleteSlate,
      Google.Cloud.Video.Stitcher.V1.DeleteSlateRequest,
      Google.Longrunning.Operation

  rpc :CreateLiveSession,
      Google.Cloud.Video.Stitcher.V1.CreateLiveSessionRequest,
      Google.Cloud.Video.Stitcher.V1.LiveSession

  rpc :GetLiveSession,
      Google.Cloud.Video.Stitcher.V1.GetLiveSessionRequest,
      Google.Cloud.Video.Stitcher.V1.LiveSession

  rpc :CreateLiveConfig,
      Google.Cloud.Video.Stitcher.V1.CreateLiveConfigRequest,
      Google.Longrunning.Operation

  rpc :ListLiveConfigs,
      Google.Cloud.Video.Stitcher.V1.ListLiveConfigsRequest,
      Google.Cloud.Video.Stitcher.V1.ListLiveConfigsResponse

  rpc :GetLiveConfig,
      Google.Cloud.Video.Stitcher.V1.GetLiveConfigRequest,
      Google.Cloud.Video.Stitcher.V1.LiveConfig

  rpc :DeleteLiveConfig,
      Google.Cloud.Video.Stitcher.V1.DeleteLiveConfigRequest,
      Google.Longrunning.Operation

  rpc :UpdateLiveConfig,
      Google.Cloud.Video.Stitcher.V1.UpdateLiveConfigRequest,
      Google.Longrunning.Operation

  rpc :CreateVodConfig,
      Google.Cloud.Video.Stitcher.V1.CreateVodConfigRequest,
      Google.Longrunning.Operation

  rpc :ListVodConfigs,
      Google.Cloud.Video.Stitcher.V1.ListVodConfigsRequest,
      Google.Cloud.Video.Stitcher.V1.ListVodConfigsResponse

  rpc :GetVodConfig,
      Google.Cloud.Video.Stitcher.V1.GetVodConfigRequest,
      Google.Cloud.Video.Stitcher.V1.VodConfig

  rpc :DeleteVodConfig,
      Google.Cloud.Video.Stitcher.V1.DeleteVodConfigRequest,
      Google.Longrunning.Operation

  rpc :UpdateVodConfig,
      Google.Cloud.Video.Stitcher.V1.UpdateVodConfigRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Video.Stitcher.V1.VideoStitcherService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Video.Stitcher.V1.VideoStitcherService.Service
end