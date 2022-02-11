defmodule Google.Cloud.Video.Stitcher.V1.LiveAdTagDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          ad_requests: [Google.Cloud.Video.Stitcher.V1.AdRequest.t()]
        }

  defstruct name: "",
            ad_requests: []

  field :name, 1, type: :string

  field :ad_requests, 2,
    repeated: true,
    type: Google.Cloud.Video.Stitcher.V1.AdRequest,
    json_name: "adRequests"
end
defmodule Google.Cloud.Video.Stitcher.V1.VodAdTagDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          ad_requests: [Google.Cloud.Video.Stitcher.V1.AdRequest.t()]
        }

  defstruct name: "",
            ad_requests: []

  field :name, 1, type: :string

  field :ad_requests, 2,
    repeated: true,
    type: Google.Cloud.Video.Stitcher.V1.AdRequest,
    json_name: "adRequests"
end
defmodule Google.Cloud.Video.Stitcher.V1.AdRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t(),
          request_metadata: Google.Cloud.Video.Stitcher.V1.RequestMetadata.t() | nil,
          response_metadata: Google.Cloud.Video.Stitcher.V1.ResponseMetadata.t() | nil
        }

  defstruct uri: "",
            request_metadata: nil,
            response_metadata: nil

  field :uri, 1, type: :string

  field :request_metadata, 2,
    type: Google.Cloud.Video.Stitcher.V1.RequestMetadata,
    json_name: "requestMetadata"

  field :response_metadata, 3,
    type: Google.Cloud.Video.Stitcher.V1.ResponseMetadata,
    json_name: "responseMetadata"
end
defmodule Google.Cloud.Video.Stitcher.V1.RequestMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          headers: Google.Protobuf.Struct.t() | nil
        }

  defstruct headers: nil

  field :headers, 1, type: Google.Protobuf.Struct
end
defmodule Google.Cloud.Video.Stitcher.V1.ResponseMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          error: String.t(),
          headers: Google.Protobuf.Struct.t() | nil,
          status_code: String.t(),
          size_bytes: integer,
          duration: Google.Protobuf.Duration.t() | nil,
          body: String.t()
        }

  defstruct error: "",
            headers: nil,
            status_code: "",
            size_bytes: 0,
            duration: nil,
            body: ""

  field :error, 1, type: :string
  field :headers, 2, type: Google.Protobuf.Struct
  field :status_code, 3, type: :string, json_name: "statusCode"
  field :size_bytes, 4, type: :int32, json_name: "sizeBytes"
  field :duration, 5, type: Google.Protobuf.Duration
  field :body, 6, type: :string
end
