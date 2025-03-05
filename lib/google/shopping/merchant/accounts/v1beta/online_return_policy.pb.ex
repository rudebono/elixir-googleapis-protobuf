defmodule Google.Shopping.Merchant.Accounts.V1beta.OnlineReturnPolicy.ReturnMethod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RETURN_METHOD_UNSPECIFIED, 0
  field :BY_MAIL, 1
  field :IN_STORE, 2
  field :AT_A_KIOSK, 3
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.OnlineReturnPolicy.ItemCondition do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ITEM_CONDITION_UNSPECIFIED, 0
  field :NEW, 1
  field :USED, 2
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.OnlineReturnPolicy.ReturnShippingFee.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :FIXED, 1
  field :CUSTOMER_PAYING_ACTUAL_FEE, 2
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.OnlineReturnPolicy.Policy.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :NUMBER_OF_DAYS_AFTER_DELIVERY, 1
  field :NO_RETURNS, 2
  field :LIFETIME_RETURNS, 3
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.GetOnlineReturnPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.ListOnlineReturnPoliciesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.ListOnlineReturnPoliciesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :online_return_policies, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.OnlineReturnPolicy,
    json_name: "onlineReturnPolicies"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.OnlineReturnPolicy.ReturnShippingFee do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :type, 1,
    type: Google.Shopping.Merchant.Accounts.V1beta.OnlineReturnPolicy.ReturnShippingFee.Type,
    enum: true,
    deprecated: false

  field :fixed_fee, 2, type: Google.Shopping.Type.Price, json_name: "fixedFee"
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.OnlineReturnPolicy.RestockingFee do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :type, 0

  field :fixed_fee, 1, type: Google.Shopping.Type.Price, json_name: "fixedFee", oneof: 0
  field :micro_percent, 2, type: :int32, json_name: "microPercent", oneof: 0
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.OnlineReturnPolicy.Policy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :type, 1,
    type: Google.Shopping.Merchant.Accounts.V1beta.OnlineReturnPolicy.Policy.Type,
    enum: true

  field :days, 2, type: :int64
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.OnlineReturnPolicy.SeasonalOverride do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :return_window, 0

  field :return_days, 5, type: :int32, json_name: "returnDays", oneof: 0
  field :return_until_date, 6, type: Google.Type.Date, json_name: "returnUntilDate", oneof: 0
  field :label, 1, type: :string, deprecated: false
  field :start_date, 2, type: Google.Type.Date, json_name: "startDate", deprecated: false
  field :end_date, 3, type: Google.Type.Date, json_name: "endDate", deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.OnlineReturnPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :return_policy_id, 2, type: :string, json_name: "returnPolicyId", deprecated: false
  field :label, 3, type: :string, deprecated: false
  field :countries, 4, repeated: true, type: :string, deprecated: false
  field :policy, 5, type: Google.Shopping.Merchant.Accounts.V1beta.OnlineReturnPolicy.Policy

  field :seasonal_overrides, 14,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.OnlineReturnPolicy.SeasonalOverride,
    json_name: "seasonalOverrides",
    deprecated: false

  field :restocking_fee, 6,
    type: Google.Shopping.Merchant.Accounts.V1beta.OnlineReturnPolicy.RestockingFee,
    json_name: "restockingFee"

  field :return_methods, 7,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.OnlineReturnPolicy.ReturnMethod,
    json_name: "returnMethods",
    enum: true

  field :item_conditions, 8,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.OnlineReturnPolicy.ItemCondition,
    json_name: "itemConditions",
    enum: true

  field :return_shipping_fee, 9,
    type: Google.Shopping.Merchant.Accounts.V1beta.OnlineReturnPolicy.ReturnShippingFee,
    json_name: "returnShippingFee"

  field :return_policy_uri, 10, type: :string, json_name: "returnPolicyUri", deprecated: false

  field :accept_defective_only, 11,
    proto3_optional: true,
    type: :bool,
    json_name: "acceptDefectiveOnly"

  field :process_refund_days, 12,
    proto3_optional: true,
    type: :int32,
    json_name: "processRefundDays"

  field :accept_exchange, 13, proto3_optional: true, type: :bool, json_name: "acceptExchange"
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.OnlineReturnPolicyService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1beta.OnlineReturnPolicyService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetOnlineReturnPolicy,
      Google.Shopping.Merchant.Accounts.V1beta.GetOnlineReturnPolicyRequest,
      Google.Shopping.Merchant.Accounts.V1beta.OnlineReturnPolicy

  rpc :ListOnlineReturnPolicies,
      Google.Shopping.Merchant.Accounts.V1beta.ListOnlineReturnPoliciesRequest,
      Google.Shopping.Merchant.Accounts.V1beta.ListOnlineReturnPoliciesResponse
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.OnlineReturnPolicyService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Shopping.Merchant.Accounts.V1beta.OnlineReturnPolicyService.Service
end
