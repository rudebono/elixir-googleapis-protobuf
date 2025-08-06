defmodule Google.Shopping.Merchant.Accounts.V1.AutofeedSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :enable_products, 2, type: :bool, json_name: "enableProducts", deprecated: false
  field :eligible, 3, type: :bool, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.GetAutofeedSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.UpdateAutofeedSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :autofeed_settings, 1,
    type: Google.Shopping.Merchant.Accounts.V1.AutofeedSettings,
    json_name: "autofeedSettings",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.AutofeedSettingsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1.AutofeedSettingsService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetAutofeedSettings,
      Google.Shopping.Merchant.Accounts.V1.GetAutofeedSettingsRequest,
      Google.Shopping.Merchant.Accounts.V1.AutofeedSettings

  rpc :UpdateAutofeedSettings,
      Google.Shopping.Merchant.Accounts.V1.UpdateAutofeedSettingsRequest,
      Google.Shopping.Merchant.Accounts.V1.AutofeedSettings
end

defmodule Google.Shopping.Merchant.Accounts.V1.AutofeedSettingsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Accounts.V1.AutofeedSettingsService.Service
end
