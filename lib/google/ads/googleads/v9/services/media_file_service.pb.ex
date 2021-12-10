defmodule Google.Ads.Googleads.V9.Services.GetMediaFileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V9.Services.MutateMediaFilesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V9.Services.MediaFileOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V9.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct customer_id: "",
            operations: [],
            partial_failure: false,
            validate_only: false,
            response_content_type: :UNSPECIFIED

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.MediaFileOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V9.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end
defmodule Google.Ads.Googleads.V9.Services.MediaFileOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {:create, Google.Ads.Googleads.V9.Resources.MediaFile.t() | nil}
        }

  defstruct operation: nil

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V9.Resources.MediaFile, oneof: 0
end
defmodule Google.Ads.Googleads.V9.Services.MutateMediaFilesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V9.Services.MutateMediaFileResult.t()]
        }

  defstruct partial_failure_error: nil,
            results: []

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V9.Services.MutateMediaFileResult
end
defmodule Google.Ads.Googleads.V9.Services.MutateMediaFileResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          media_file: Google.Ads.Googleads.V9.Resources.MediaFile.t() | nil
        }

  defstruct resource_name: "",
            media_file: nil

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :media_file, 2, type: Google.Ads.Googleads.V9.Resources.MediaFile, json_name: "mediaFile"
end
defmodule Google.Ads.Googleads.V9.Services.MediaFileService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.MediaFileService"

  rpc :GetMediaFile,
      Google.Ads.Googleads.V9.Services.GetMediaFileRequest,
      Google.Ads.Googleads.V9.Resources.MediaFile

  rpc :MutateMediaFiles,
      Google.Ads.Googleads.V9.Services.MutateMediaFilesRequest,
      Google.Ads.Googleads.V9.Services.MutateMediaFilesResponse
end

defmodule Google.Ads.Googleads.V9.Services.MediaFileService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.MediaFileService.Service
end
