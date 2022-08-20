defmodule Google.Ads.Googleads.V11.Services.MutateMediaFilesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.MediaFileOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V11.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V11.Services.MediaFileOperation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V11.Resources.MediaFile, oneof: 0
end

defmodule Google.Ads.Googleads.V11.Services.MutateMediaFilesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V11.Services.MutateMediaFileResult
end

defmodule Google.Ads.Googleads.V11.Services.MutateMediaFileResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :media_file, 2, type: Google.Ads.Googleads.V11.Resources.MediaFile, json_name: "mediaFile"
end

defmodule Google.Ads.Googleads.V11.Services.MediaFileService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v11.services.MediaFileService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :MutateMediaFiles,
      Google.Ads.Googleads.V11.Services.MutateMediaFilesRequest,
      Google.Ads.Googleads.V11.Services.MutateMediaFilesResponse
end

defmodule Google.Ads.Googleads.V11.Services.MediaFileService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V11.Services.MediaFileService.Service
end