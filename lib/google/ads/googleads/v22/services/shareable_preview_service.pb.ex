defmodule Google.Ads.Googleads.V22.Services.GenerateShareablePreviewsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :shareable_previews, 2,
    repeated: true,
    type: Google.Ads.Googleads.V22.Services.ShareablePreview,
    json_name: "shareablePreviews",
    deprecated: false
end

defmodule Google.Ads.Googleads.V22.Services.ShareablePreview do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :asset_group_identifier, 1,
    type: Google.Ads.Googleads.V22.Services.AssetGroupIdentifier,
    json_name: "assetGroupIdentifier",
    deprecated: false
end

defmodule Google.Ads.Googleads.V22.Services.AssetGroupIdentifier do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :asset_group_id, 1, type: :int64, json_name: "assetGroupId", deprecated: false
end

defmodule Google.Ads.Googleads.V22.Services.GenerateShareablePreviewsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :responses, 1,
    repeated: true,
    type: Google.Ads.Googleads.V22.Services.ShareablePreviewOrError
end

defmodule Google.Ads.Googleads.V22.Services.ShareablePreviewOrError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :generate_shareable_preview_response, 0

  field :asset_group_identifier, 3,
    type: Google.Ads.Googleads.V22.Services.AssetGroupIdentifier,
    json_name: "assetGroupIdentifier"

  field :shareable_preview_result, 1,
    type: Google.Ads.Googleads.V22.Services.ShareablePreviewResult,
    json_name: "shareablePreviewResult",
    oneof: 0

  field :partial_failure_error, 2,
    type: Google.Rpc.Status,
    json_name: "partialFailureError",
    oneof: 0
end

defmodule Google.Ads.Googleads.V22.Services.ShareablePreviewResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :shareable_preview_url, 1, type: :string, json_name: "shareablePreviewUrl"
  field :expiration_date_time, 2, type: :string, json_name: "expirationDateTime"
end

defmodule Google.Ads.Googleads.V22.Services.ShareablePreviewService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v22.services.ShareablePreviewService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GenerateShareablePreviews,
      Google.Ads.Googleads.V22.Services.GenerateShareablePreviewsRequest,
      Google.Ads.Googleads.V22.Services.GenerateShareablePreviewsResponse
end

defmodule Google.Ads.Googleads.V22.Services.ShareablePreviewService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V22.Services.ShareablePreviewService.Service
end
