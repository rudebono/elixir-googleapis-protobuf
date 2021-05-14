defmodule Google.Ads.Googleads.V4.Resources.PaymentsAccount do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          payments_account_id: Google.Protobuf.StringValue.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          currency_code: Google.Protobuf.StringValue.t() | nil,
          payments_profile_id: Google.Protobuf.StringValue.t() | nil,
          secondary_payments_profile_id: Google.Protobuf.StringValue.t() | nil,
          paying_manager_customer: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [
    :resource_name,
    :payments_account_id,
    :name,
    :currency_code,
    :payments_profile_id,
    :secondary_payments_profile_id,
    :paying_manager_customer
  ]

  field :resource_name, 1, type: :string
  field :payments_account_id, 2, type: Google.Protobuf.StringValue
  field :name, 3, type: Google.Protobuf.StringValue
  field :currency_code, 4, type: Google.Protobuf.StringValue
  field :payments_profile_id, 5, type: Google.Protobuf.StringValue
  field :secondary_payments_profile_id, 6, type: Google.Protobuf.StringValue
  field :paying_manager_customer, 7, type: Google.Protobuf.StringValue
end
