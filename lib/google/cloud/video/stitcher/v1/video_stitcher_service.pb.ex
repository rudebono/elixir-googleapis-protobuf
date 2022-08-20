defmodule Google.Cloud.Video.Stitcher.V1.CreateCdnKeyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :cdn_key, 2,
    type: Google.Cloud.Video.Stitcher.V1.CdnKey,
    json_name: "cdnKey",
    deprecated: false

  field :cdn_key_id, 3, type: :string, json_name: "cdnKeyId", deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.ListCdnKeysRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Video.Stitcher.V1.ListCdnKeysResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :cdn_keys, 1,
    repeated: true,
    type: Google.Cloud.Video.Stitcher.V1.CdnKey,
    json_name: "cdnKeys"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Video.Stitcher.V1.GetCdnKeyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.DeleteCdnKeyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.UpdateCdnKeyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :vod_session, 2,
    type: Google.Cloud.Video.Stitcher.V1.VodSession,
    json_name: "vodSession",
    deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.GetVodSessionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.ListVodStitchDetailsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Video.Stitcher.V1.ListVodStitchDetailsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :vod_stitch_details, 1,
    repeated: true,
    type: Google.Cloud.Video.Stitcher.V1.VodStitchDetail,
    json_name: "vodStitchDetails"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Video.Stitcher.V1.GetVodStitchDetailRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.ListVodAdTagDetailsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Video.Stitcher.V1.ListVodAdTagDetailsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :vod_ad_tag_details, 1,
    repeated: true,
    type: Google.Cloud.Video.Stitcher.V1.VodAdTagDetail,
    json_name: "vodAdTagDetails"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Video.Stitcher.V1.GetVodAdTagDetailRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.ListLiveAdTagDetailsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Video.Stitcher.V1.ListLiveAdTagDetailsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :live_ad_tag_details, 1,
    repeated: true,
    type: Google.Cloud.Video.Stitcher.V1.LiveAdTagDetail,
    json_name: "liveAdTagDetails"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Video.Stitcher.V1.GetLiveAdTagDetailRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.CreateSlateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :slate_id, 2, type: :string, json_name: "slateId", deprecated: false
  field :slate, 3, type: Google.Cloud.Video.Stitcher.V1.Slate, deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.GetSlateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.ListSlatesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Video.Stitcher.V1.ListSlatesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :slates, 1, repeated: true, type: Google.Cloud.Video.Stitcher.V1.Slate
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Video.Stitcher.V1.UpdateSlateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :slate, 1, type: Google.Cloud.Video.Stitcher.V1.Slate, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.DeleteSlateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.CreateLiveSessionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :live_session, 2,
    type: Google.Cloud.Video.Stitcher.V1.LiveSession,
    json_name: "liveSession",
    deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.GetLiveSessionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.VideoStitcherService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.video.stitcher.v1.VideoStitcherService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :CreateCdnKey,
      Google.Cloud.Video.Stitcher.V1.CreateCdnKeyRequest,
      Google.Cloud.Video.Stitcher.V1.CdnKey

  rpc :ListCdnKeys,
      Google.Cloud.Video.Stitcher.V1.ListCdnKeysRequest,
      Google.Cloud.Video.Stitcher.V1.ListCdnKeysResponse

  rpc :GetCdnKey,
      Google.Cloud.Video.Stitcher.V1.GetCdnKeyRequest,
      Google.Cloud.Video.Stitcher.V1.CdnKey

  rpc :DeleteCdnKey, Google.Cloud.Video.Stitcher.V1.DeleteCdnKeyRequest, Google.Protobuf.Empty

  rpc :UpdateCdnKey,
      Google.Cloud.Video.Stitcher.V1.UpdateCdnKeyRequest,
      Google.Cloud.Video.Stitcher.V1.CdnKey

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
      Google.Cloud.Video.Stitcher.V1.Slate

  rpc :ListSlates,
      Google.Cloud.Video.Stitcher.V1.ListSlatesRequest,
      Google.Cloud.Video.Stitcher.V1.ListSlatesResponse

  rpc :GetSlate,
      Google.Cloud.Video.Stitcher.V1.GetSlateRequest,
      Google.Cloud.Video.Stitcher.V1.Slate

  rpc :UpdateSlate,
      Google.Cloud.Video.Stitcher.V1.UpdateSlateRequest,
      Google.Cloud.Video.Stitcher.V1.Slate

  rpc :DeleteSlate, Google.Cloud.Video.Stitcher.V1.DeleteSlateRequest, Google.Protobuf.Empty

  rpc :CreateLiveSession,
      Google.Cloud.Video.Stitcher.V1.CreateLiveSessionRequest,
      Google.Cloud.Video.Stitcher.V1.LiveSession

  rpc :GetLiveSession,
      Google.Cloud.Video.Stitcher.V1.GetLiveSessionRequest,
      Google.Cloud.Video.Stitcher.V1.LiveSession
end

defmodule Google.Cloud.Video.Stitcher.V1.VideoStitcherService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Video.Stitcher.V1.VideoStitcherService.Service
end