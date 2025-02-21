defmodule Google.Shopping.Merchant.Lfp.V1beta.LfpSale do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :target_account, 2, type: :int64, json_name: "targetAccount", deprecated: false
  field :store_code, 3, type: :string, json_name: "storeCode", deprecated: false
  field :offer_id, 4, type: :string, json_name: "offerId", deprecated: false
  field :region_code, 5, type: :string, json_name: "regionCode", deprecated: false
  field :content_language, 6, type: :string, json_name: "contentLanguage", deprecated: false
  field :gtin, 7, type: :string, deprecated: false
  field :price, 8, type: Google.Shopping.Type.Price, deprecated: false
  field :quantity, 9, type: :int64, deprecated: false
  field :sale_time, 10, type: Google.Protobuf.Timestamp, json_name: "saleTime", deprecated: false
  field :uid, 11, proto3_optional: true, type: :string, deprecated: false

  field :feed_label, 12,
    proto3_optional: true,
    type: :string,
    json_name: "feedLabel",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Lfp.V1beta.InsertLfpSaleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :lfp_sale, 2,
    type: Google.Shopping.Merchant.Lfp.V1beta.LfpSale,
    json_name: "lfpSale",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Lfp.V1beta.LfpSaleService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.lfp.v1beta.LfpSaleService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :InsertLfpSale,
      Google.Shopping.Merchant.Lfp.V1beta.InsertLfpSaleRequest,
      Google.Shopping.Merchant.Lfp.V1beta.LfpSale
end

defmodule Google.Shopping.Merchant.Lfp.V1beta.LfpSaleService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Lfp.V1beta.LfpSaleService.Service
end
