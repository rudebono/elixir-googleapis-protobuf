defmodule Google.Ads.Datamanager.V1.Product do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PRODUCT_UNSPECIFIED, 0
  field :GOOGLE_ADS, 1
  field :DISPLAY_VIDEO_PARTNER, 2
  field :DISPLAY_VIDEO_ADVERTISER, 3
  field :DATA_PARTNER, 4
end

defmodule Google.Ads.Datamanager.V1.Destination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :reference, 1, type: :string, deprecated: false

  field :login_account, 2,
    type: Google.Ads.Datamanager.V1.ProductAccount,
    json_name: "loginAccount",
    deprecated: false

  field :linked_account, 3,
    type: Google.Ads.Datamanager.V1.ProductAccount,
    json_name: "linkedAccount",
    deprecated: false

  field :operating_account, 4,
    type: Google.Ads.Datamanager.V1.ProductAccount,
    json_name: "operatingAccount",
    deprecated: false

  field :product_destination_id, 5,
    type: :string,
    json_name: "productDestinationId",
    deprecated: false
end

defmodule Google.Ads.Datamanager.V1.ProductAccount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :product, 1, type: Google.Ads.Datamanager.V1.Product, enum: true, deprecated: false
  field :account_id, 2, type: :string, json_name: "accountId", deprecated: false
end
