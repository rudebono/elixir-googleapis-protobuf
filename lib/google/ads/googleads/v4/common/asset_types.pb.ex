defmodule Google.Ads.Googleads.V4.Common.YoutubeVideoAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          youtube_video_id: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:youtube_video_id]

  field :youtube_video_id, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.MediaBundleAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data: Google.Protobuf.BytesValue.t() | nil
        }

  defstruct [:data]

  field :data, 1, type: Google.Protobuf.BytesValue
end

defmodule Google.Ads.Googleads.V4.Common.ImageAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data: Google.Protobuf.BytesValue.t() | nil,
          file_size: Google.Protobuf.Int64Value.t() | nil,
          mime_type: Google.Ads.Googleads.V4.Enums.MimeTypeEnum.MimeType.t(),
          full_size: Google.Ads.Googleads.V4.Common.ImageDimension.t() | nil
        }

  defstruct [:data, :file_size, :mime_type, :full_size]

  field :data, 1, type: Google.Protobuf.BytesValue
  field :file_size, 2, type: Google.Protobuf.Int64Value
  field :mime_type, 3, type: Google.Ads.Googleads.V4.Enums.MimeTypeEnum.MimeType, enum: true
  field :full_size, 4, type: Google.Ads.Googleads.V4.Common.ImageDimension
end

defmodule Google.Ads.Googleads.V4.Common.ImageDimension do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          height_pixels: Google.Protobuf.Int64Value.t() | nil,
          width_pixels: Google.Protobuf.Int64Value.t() | nil,
          url: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:height_pixels, :width_pixels, :url]

  field :height_pixels, 1, type: Google.Protobuf.Int64Value
  field :width_pixels, 2, type: Google.Protobuf.Int64Value
  field :url, 3, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.TextAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:text]

  field :text, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.BookOnGoogleAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
