defmodule Google.Api.Billing.BillingDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          monitored_resource: String.t(),
          metrics: [String.t()]
        }

  defstruct [:monitored_resource, :metrics]

  field :monitored_resource, 1, type: :string, json_name: "monitoredResource"
  field :metrics, 2, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Api.Billing do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          consumer_destinations: [Google.Api.Billing.BillingDestination.t()]
        }

  defstruct [:consumer_destinations]

  field :consumer_destinations, 8,
    repeated: true,
    type: Google.Api.Billing.BillingDestination,
    json_name: "consumerDestinations"

  def transform_module(), do: nil
end
