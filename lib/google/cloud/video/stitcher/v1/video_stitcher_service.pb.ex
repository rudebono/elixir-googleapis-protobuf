defmodule Google.Cloud.Video.Stitcher.V1.CreateCdnKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          cdn_key: Google.Cloud.Video.Stitcher.V1.CdnKey.t() | nil,
          cdn_key_id: String.t()
        }

  defstruct parent: "",
            cdn_key: nil,
            cdn_key_id: ""

  field :parent, 1, type: :string, deprecated: false

  field :cdn_key, 2,
    type: Google.Cloud.Video.Stitcher.V1.CdnKey,
    json_name: "cdnKey",
    deprecated: false

  field :cdn_key_id, 3, type: :string, json_name: "cdnKeyId", deprecated: false
end
defmodule Google.Cloud.Video.Stitcher.V1.ListCdnKeysRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Video.Stitcher.V1.ListCdnKeysResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cdn_keys: [Google.Cloud.Video.Stitcher.V1.CdnKey.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct cdn_keys: [],
            next_page_token: "",
            unreachable: []

  field :cdn_keys, 1,
    repeated: true,
    type: Google.Cloud.Video.Stitcher.V1.CdnKey,
    json_name: "cdnKeys"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Video.Stitcher.V1.GetCdnKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Video.Stitcher.V1.DeleteCdnKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Video.Stitcher.V1.UpdateCdnKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cdn_key: Google.Cloud.Video.Stitcher.V1.CdnKey.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct cdn_key: nil,
            update_mask: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          vod_session: Google.Cloud.Video.Stitcher.V1.VodSession.t() | nil
        }

  defstruct parent: "",
            vod_session: nil

  field :parent, 1, type: :string, deprecated: false

  field :vod_session, 2,
    type: Google.Cloud.Video.Stitcher.V1.VodSession,
    json_name: "vodSession",
    deprecated: false
end
defmodule Google.Cloud.Video.Stitcher.V1.GetVodSessionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Video.Stitcher.V1.ListVodStitchDetailsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Video.Stitcher.V1.ListVodStitchDetailsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          vod_stitch_details: [Google.Cloud.Video.Stitcher.V1.VodStitchDetail.t()],
          next_page_token: String.t()
        }

  defstruct vod_stitch_details: [],
            next_page_token: ""

  field :vod_stitch_details, 1,
    repeated: true,
    type: Google.Cloud.Video.Stitcher.V1.VodStitchDetail,
    json_name: "vodStitchDetails"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Video.Stitcher.V1.GetVodStitchDetailRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Video.Stitcher.V1.ListVodAdTagDetailsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Video.Stitcher.V1.ListVodAdTagDetailsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          vod_ad_tag_details: [Google.Cloud.Video.Stitcher.V1.VodAdTagDetail.t()],
          next_page_token: String.t()
        }

  defstruct vod_ad_tag_details: [],
            next_page_token: ""

  field :vod_ad_tag_details, 1,
    repeated: true,
    type: Google.Cloud.Video.Stitcher.V1.VodAdTagDetail,
    json_name: "vodAdTagDetails"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Video.Stitcher.V1.GetVodAdTagDetailRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Video.Stitcher.V1.ListLiveAdTagDetailsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Video.Stitcher.V1.ListLiveAdTagDetailsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          live_ad_tag_details: [Google.Cloud.Video.Stitcher.V1.LiveAdTagDetail.t()],
          next_page_token: String.t()
        }

  defstruct live_ad_tag_details: [],
            next_page_token: ""

  field :live_ad_tag_details, 1,
    repeated: true,
    type: Google.Cloud.Video.Stitcher.V1.LiveAdTagDetail,
    json_name: "liveAdTagDetails"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Video.Stitcher.V1.GetLiveAdTagDetailRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Video.Stitcher.V1.CreateSlateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          slate_id: String.t(),
          slate: Google.Cloud.Video.Stitcher.V1.Slate.t() | nil
        }

  defstruct parent: "",
            slate_id: "",
            slate: nil

  field :parent, 1, type: :string, deprecated: false
  field :slate_id, 2, type: :string, json_name: "slateId", deprecated: false
  field :slate, 3, type: Google.Cloud.Video.Stitcher.V1.Slate, deprecated: false
end
defmodule Google.Cloud.Video.Stitcher.V1.GetSlateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Video.Stitcher.V1.ListSlatesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Video.Stitcher.V1.ListSlatesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          slates: [Google.Cloud.Video.Stitcher.V1.Slate.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct slates: [],
            next_page_token: "",
            unreachable: []

  field :slates, 1, repeated: true, type: Google.Cloud.Video.Stitcher.V1.Slate
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Video.Stitcher.V1.UpdateSlateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          slate: Google.Cloud.Video.Stitcher.V1.Slate.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct slate: nil,
            update_mask: nil

  field :slate, 1, type: Google.Cloud.Video.Stitcher.V1.Slate, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Video.Stitcher.V1.DeleteSlateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Video.Stitcher.V1.CreateLiveSessionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          live_session: Google.Cloud.Video.Stitcher.V1.LiveSession.t() | nil
        }

  defstruct parent: "",
            live_session: nil

  field :parent, 1, type: :string, deprecated: false

  field :live_session, 2,
    type: Google.Cloud.Video.Stitcher.V1.LiveSession,
    json_name: "liveSession",
    deprecated: false
end
defmodule Google.Cloud.Video.Stitcher.V1.GetLiveSessionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Video.Stitcher.V1.VideoStitcherService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.video.stitcher.v1.VideoStitcherService"

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
