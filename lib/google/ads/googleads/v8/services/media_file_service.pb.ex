defmodule Google.Ads.Googleads.V8.Services.GetMediaFileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateMediaFilesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V8.Services.MediaFileOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only, :response_content_type]

  field :customer_id, 1, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V8.Services.MediaFileOperation
  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.MediaFileOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any}
        }

  defstruct [:operation]

  oneof :operation, 0
  field :create, 1, type: Google.Ads.Googleads.V8.Resources.MediaFile, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateMediaFilesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V8.Services.MutateMediaFileResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V8.Services.MutateMediaFileResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateMediaFileResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          media_file: Google.Ads.Googleads.V8.Resources.MediaFile.t() | nil
        }

  defstruct [:resource_name, :media_file]

  field :resource_name, 1, type: :string
  field :media_file, 2, type: Google.Ads.Googleads.V8.Resources.MediaFile
end

defmodule Google.Ads.Googleads.V8.Services.MediaFileService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.MediaFileService"

  rpc :GetMediaFile,
      Google.Ads.Googleads.V8.Services.GetMediaFileRequest,
      Google.Ads.Googleads.V8.Resources.MediaFile

  rpc :MutateMediaFiles,
      Google.Ads.Googleads.V8.Services.MutateMediaFilesRequest,
      Google.Ads.Googleads.V8.Services.MutateMediaFilesResponse
end

defmodule Google.Ads.Googleads.V8.Services.MediaFileService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.MediaFileService.Service
end
