defmodule Google.Cloud.Retail.V2alpha.ListMerchantCenterAccountLinksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.ListMerchantCenterAccountLinksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :merchant_center_account_links, 1,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.MerchantCenterAccountLink,
    json_name: "merchantCenterAccountLinks"
end

defmodule Google.Cloud.Retail.V2alpha.CreateMerchantCenterAccountLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :merchant_center_account_link, 2,
    type: Google.Cloud.Retail.V2alpha.MerchantCenterAccountLink,
    json_name: "merchantCenterAccountLink",
    deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.DeleteMerchantCenterAccountLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.MerchantCenterAccountLinkService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.retail.v2alpha.MerchantCenterAccountLinkService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :ListMerchantCenterAccountLinks,
      Google.Cloud.Retail.V2alpha.ListMerchantCenterAccountLinksRequest,
      Google.Cloud.Retail.V2alpha.ListMerchantCenterAccountLinksResponse

  rpc :CreateMerchantCenterAccountLink,
      Google.Cloud.Retail.V2alpha.CreateMerchantCenterAccountLinkRequest,
      Google.Longrunning.Operation

  rpc :DeleteMerchantCenterAccountLink,
      Google.Cloud.Retail.V2alpha.DeleteMerchantCenterAccountLinkRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Retail.V2alpha.MerchantCenterAccountLinkService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Retail.V2alpha.MerchantCenterAccountLinkService.Service
end
