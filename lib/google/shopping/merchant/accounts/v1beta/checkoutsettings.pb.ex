defmodule Google.Shopping.Merchant.Accounts.V1beta.CheckoutSettings.CheckoutEnrollmentState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CHECKOUT_ENROLLMENT_STATE_UNSPECIFIED, 0
  field :INACTIVE, 1
  field :ENROLLED, 2
  field :OPTED_OUT, 3
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.CheckoutSettings.CheckoutReviewState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CHECKOUT_REVIEW_STATE_UNSPECIFIED, 0
  field :IN_REVIEW, 1
  field :APPROVED, 2
  field :DISAPPROVED, 3
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.GetCheckoutSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.CreateCheckoutSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :checkout_settings, 2,
    type: Google.Shopping.Merchant.Accounts.V1beta.CheckoutSettings,
    json_name: "checkoutSettings",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.UpdateCheckoutSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :checkout_settings, 1,
    type: Google.Shopping.Merchant.Accounts.V1beta.CheckoutSettings,
    json_name: "checkoutSettings",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.DeleteCheckoutSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.CheckoutSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :uri_settings, 2,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.UriSettings,
    json_name: "uriSettings"

  field :eligible_destinations, 8,
    repeated: true,
    type: Google.Shopping.Type.Destination.DestinationEnum,
    json_name: "eligibleDestinations",
    enum: true,
    deprecated: false

  field :enrollment_state, 3,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.CheckoutSettings.CheckoutEnrollmentState,
    json_name: "enrollmentState",
    enum: true,
    deprecated: false

  field :review_state, 4,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.CheckoutSettings.CheckoutReviewState,
    json_name: "reviewState",
    enum: true,
    deprecated: false

  field :effective_uri_settings, 5,
    type: Google.Shopping.Merchant.Accounts.V1beta.UriSettings,
    json_name: "effectiveUriSettings",
    deprecated: false

  field :effective_enrollment_state, 6,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.CheckoutSettings.CheckoutEnrollmentState,
    json_name: "effectiveEnrollmentState",
    enum: true,
    deprecated: false

  field :effective_review_state, 7,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.CheckoutSettings.CheckoutReviewState,
    json_name: "effectiveReviewState",
    enum: true,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.UriSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :uri_template, 0

  field :checkout_uri_template, 1, type: :string, json_name: "checkoutUriTemplate", oneof: 0
  field :cart_uri_template, 2, type: :string, json_name: "cartUriTemplate", oneof: 0
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.CheckoutSettingsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1beta.CheckoutSettingsService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetCheckoutSettings,
      Google.Shopping.Merchant.Accounts.V1beta.GetCheckoutSettingsRequest,
      Google.Shopping.Merchant.Accounts.V1beta.CheckoutSettings

  rpc :CreateCheckoutSettings,
      Google.Shopping.Merchant.Accounts.V1beta.CreateCheckoutSettingsRequest,
      Google.Shopping.Merchant.Accounts.V1beta.CheckoutSettings

  rpc :UpdateCheckoutSettings,
      Google.Shopping.Merchant.Accounts.V1beta.UpdateCheckoutSettingsRequest,
      Google.Shopping.Merchant.Accounts.V1beta.CheckoutSettings

  rpc :DeleteCheckoutSettings,
      Google.Shopping.Merchant.Accounts.V1beta.DeleteCheckoutSettingsRequest,
      Google.Protobuf.Empty
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.CheckoutSettingsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Accounts.V1beta.CheckoutSettingsService.Service
end
