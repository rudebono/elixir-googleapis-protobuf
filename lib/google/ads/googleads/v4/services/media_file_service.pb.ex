defmodule Google.Ads.Googleads.V4.Services.GetMediaFileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MutateMediaFilesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V4.Services.MediaFileOperation.t()],
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only]

  field :customer_id, 1, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V4.Services.MediaFileOperation
  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.MediaFileOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any}
        }

  defstruct [:operation]

  oneof :operation, 0
  field :create, 1, type: Google.Ads.Googleads.V4.Resources.MediaFile, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.MutateMediaFilesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V4.Services.MutateMediaFileResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V4.Services.MutateMediaFileResult
end

defmodule Google.Ads.Googleads.V4.Services.MutateMediaFileResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MediaFileService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.MediaFileService"

  rpc :GetMediaFile,
      Google.Ads.Googleads.V4.Services.GetMediaFileRequest,
      Google.Ads.Googleads.V4.Resources.MediaFile

  rpc :MutateMediaFiles,
      Google.Ads.Googleads.V4.Services.MutateMediaFilesRequest,
      Google.Ads.Googleads.V4.Services.MutateMediaFilesResponse
end

defmodule Google.Ads.Googleads.V4.Services.MediaFileService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.MediaFileService.Service
end
