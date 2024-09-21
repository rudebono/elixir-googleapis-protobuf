defmodule Google.Ads.Googleads.V17.Services.CreateProductLinkInvitationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :product_link_invitation, 2,
    type: Google.Ads.Googleads.V17.Resources.ProductLinkInvitation,
    json_name: "productLinkInvitation",
    deprecated: false
end

defmodule Google.Ads.Googleads.V17.Services.CreateProductLinkInvitationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V17.Services.UpdateProductLinkInvitationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :product_link_invitation_status, 2,
    type:
      Google.Ads.Googleads.V17.Enums.ProductLinkInvitationStatusEnum.ProductLinkInvitationStatus,
    json_name: "productLinkInvitationStatus",
    enum: true,
    deprecated: false

  field :resource_name, 3, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V17.Services.UpdateProductLinkInvitationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V17.Services.RemoveProductLinkInvitationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
  field :resource_name, 2, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V17.Services.RemoveProductLinkInvitationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V17.Services.ProductLinkInvitationService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v17.services.ProductLinkInvitationService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateProductLinkInvitation,
      Google.Ads.Googleads.V17.Services.CreateProductLinkInvitationRequest,
      Google.Ads.Googleads.V17.Services.CreateProductLinkInvitationResponse

  rpc :UpdateProductLinkInvitation,
      Google.Ads.Googleads.V17.Services.UpdateProductLinkInvitationRequest,
      Google.Ads.Googleads.V17.Services.UpdateProductLinkInvitationResponse

  rpc :RemoveProductLinkInvitation,
      Google.Ads.Googleads.V17.Services.RemoveProductLinkInvitationRequest,
      Google.Ads.Googleads.V17.Services.RemoveProductLinkInvitationResponse
end

defmodule Google.Ads.Googleads.V17.Services.ProductLinkInvitationService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V17.Services.ProductLinkInvitationService.Service
end