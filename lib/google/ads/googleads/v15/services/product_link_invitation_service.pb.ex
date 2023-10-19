defmodule Google.Ads.Googleads.V15.Services.UpdateProductLinkInvitationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :product_link_invitation_status, 2,
    type:
      Google.Ads.Googleads.V15.Enums.ProductLinkInvitationStatusEnum.ProductLinkInvitationStatus,
    json_name: "productLinkInvitationStatus",
    enum: true,
    deprecated: false

  field :resource_name, 3, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V15.Services.UpdateProductLinkInvitationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V15.Services.ProductLinkInvitationService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v15.services.ProductLinkInvitationService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :UpdateProductLinkInvitation,
      Google.Ads.Googleads.V15.Services.UpdateProductLinkInvitationRequest,
      Google.Ads.Googleads.V15.Services.UpdateProductLinkInvitationResponse
end

defmodule Google.Ads.Googleads.V15.Services.ProductLinkInvitationService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V15.Services.ProductLinkInvitationService.Service
end