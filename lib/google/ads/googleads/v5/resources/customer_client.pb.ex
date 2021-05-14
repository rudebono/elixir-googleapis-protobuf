defmodule Google.Ads.Googleads.V5.Resources.CustomerClient do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          client_customer: Google.Protobuf.StringValue.t() | nil,
          hidden: Google.Protobuf.BoolValue.t() | nil,
          level: Google.Protobuf.Int64Value.t() | nil,
          time_zone: Google.Protobuf.StringValue.t() | nil,
          test_account: Google.Protobuf.BoolValue.t() | nil,
          manager: Google.Protobuf.BoolValue.t() | nil,
          descriptive_name: Google.Protobuf.StringValue.t() | nil,
          currency_code: Google.Protobuf.StringValue.t() | nil,
          id: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [
    :resource_name,
    :client_customer,
    :hidden,
    :level,
    :time_zone,
    :test_account,
    :manager,
    :descriptive_name,
    :currency_code,
    :id
  ]

  field :resource_name, 1, type: :string
  field :client_customer, 3, type: Google.Protobuf.StringValue
  field :hidden, 4, type: Google.Protobuf.BoolValue
  field :level, 5, type: Google.Protobuf.Int64Value
  field :time_zone, 6, type: Google.Protobuf.StringValue
  field :test_account, 7, type: Google.Protobuf.BoolValue
  field :manager, 8, type: Google.Protobuf.BoolValue
  field :descriptive_name, 9, type: Google.Protobuf.StringValue
  field :currency_code, 10, type: Google.Protobuf.StringValue
  field :id, 11, type: Google.Protobuf.Int64Value
end
