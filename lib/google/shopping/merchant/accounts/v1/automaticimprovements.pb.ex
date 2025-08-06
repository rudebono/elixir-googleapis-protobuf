defmodule Google.Shopping.Merchant.Accounts.V1.AutomaticImprovements do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :item_updates, 2,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1.AutomaticItemUpdates,
    json_name: "itemUpdates"

  field :image_improvements, 3,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1.AutomaticImageImprovements,
    json_name: "imageImprovements"

  field :shipping_improvements, 4,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1.AutomaticShippingImprovements,
    json_name: "shippingImprovements"
end

defmodule Google.Shopping.Merchant.Accounts.V1.AutomaticItemUpdates.ItemUpdatesAccountLevelSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :allow_price_updates, 1,
    proto3_optional: true,
    type: :bool,
    json_name: "allowPriceUpdates"

  field :allow_availability_updates, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "allowAvailabilityUpdates"

  field :allow_strict_availability_updates, 3,
    proto3_optional: true,
    type: :bool,
    json_name: "allowStrictAvailabilityUpdates"

  field :allow_condition_updates, 4,
    proto3_optional: true,
    type: :bool,
    json_name: "allowConditionUpdates"
end

defmodule Google.Shopping.Merchant.Accounts.V1.AutomaticItemUpdates do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :account_item_updates_settings, 1,
    type:
      Google.Shopping.Merchant.Accounts.V1.AutomaticItemUpdates.ItemUpdatesAccountLevelSettings,
    json_name: "accountItemUpdatesSettings",
    deprecated: false

  field :effective_allow_price_updates, 2,
    type: :bool,
    json_name: "effectiveAllowPriceUpdates",
    deprecated: false

  field :effective_allow_availability_updates, 3,
    type: :bool,
    json_name: "effectiveAllowAvailabilityUpdates",
    deprecated: false

  field :effective_allow_strict_availability_updates, 4,
    type: :bool,
    json_name: "effectiveAllowStrictAvailabilityUpdates",
    deprecated: false

  field :effective_allow_condition_updates, 5,
    type: :bool,
    json_name: "effectiveAllowConditionUpdates",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.AutomaticImageImprovements.ImageImprovementsAccountLevelSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :allow_automatic_image_improvements, 1,
    proto3_optional: true,
    type: :bool,
    json_name: "allowAutomaticImageImprovements"
end

defmodule Google.Shopping.Merchant.Accounts.V1.AutomaticImageImprovements do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :account_image_improvements_settings, 1,
    proto3_optional: true,
    type:
      Google.Shopping.Merchant.Accounts.V1.AutomaticImageImprovements.ImageImprovementsAccountLevelSettings,
    json_name: "accountImageImprovementsSettings",
    deprecated: false

  field :effective_allow_automatic_image_improvements, 2,
    type: :bool,
    json_name: "effectiveAllowAutomaticImageImprovements",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.AutomaticShippingImprovements do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :allow_shipping_improvements, 1,
    proto3_optional: true,
    type: :bool,
    json_name: "allowShippingImprovements"
end

defmodule Google.Shopping.Merchant.Accounts.V1.GetAutomaticImprovementsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.UpdateAutomaticImprovementsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :automatic_improvements, 1,
    type: Google.Shopping.Merchant.Accounts.V1.AutomaticImprovements,
    json_name: "automaticImprovements",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.AutomaticImprovementsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1.AutomaticImprovementsService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetAutomaticImprovements,
      Google.Shopping.Merchant.Accounts.V1.GetAutomaticImprovementsRequest,
      Google.Shopping.Merchant.Accounts.V1.AutomaticImprovements

  rpc :UpdateAutomaticImprovements,
      Google.Shopping.Merchant.Accounts.V1.UpdateAutomaticImprovementsRequest,
      Google.Shopping.Merchant.Accounts.V1.AutomaticImprovements
end

defmodule Google.Shopping.Merchant.Accounts.V1.AutomaticImprovementsService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Shopping.Merchant.Accounts.V1.AutomaticImprovementsService.Service
end
