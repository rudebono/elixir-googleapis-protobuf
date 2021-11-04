defmodule Google.Cloud.Channel.V1.CustomerEvent.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TYPE_UNSPECIFIED | :PRIMARY_DOMAIN_CHANGED | :PRIMARY_DOMAIN_VERIFIED

  field :TYPE_UNSPECIFIED, 0
  field :PRIMARY_DOMAIN_CHANGED, 1
  field :PRIMARY_DOMAIN_VERIFIED, 2
end

defmodule Google.Cloud.Channel.V1.EntitlementEvent.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TYPE_UNSPECIFIED
          | :CREATED
          | :PRICE_PLAN_SWITCHED
          | :COMMITMENT_CHANGED
          | :RENEWED
          | :SUSPENDED
          | :ACTIVATED
          | :CANCELLED
          | :SKU_CHANGED
          | :RENEWAL_SETTING_CHANGED
          | :PAID_SERVICE_STARTED
          | :LICENSE_ASSIGNMENT_CHANGED
          | :LICENSE_CAP_CHANGED

  field :TYPE_UNSPECIFIED, 0
  field :CREATED, 1
  field :PRICE_PLAN_SWITCHED, 3
  field :COMMITMENT_CHANGED, 4
  field :RENEWED, 5
  field :SUSPENDED, 6
  field :ACTIVATED, 7
  field :CANCELLED, 8
  field :SKU_CHANGED, 9
  field :RENEWAL_SETTING_CHANGED, 10
  field :PAID_SERVICE_STARTED, 11
  field :LICENSE_ASSIGNMENT_CHANGED, 12
  field :LICENSE_CAP_CHANGED, 13
end

defmodule Google.Cloud.Channel.V1.CustomerEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer: String.t(),
          event_type: Google.Cloud.Channel.V1.CustomerEvent.Type.t()
        }

  defstruct [:customer, :event_type]

  field :customer, 1, type: :string

  field :event_type, 2,
    type: Google.Cloud.Channel.V1.CustomerEvent.Type,
    enum: true,
    json_name: "eventType"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Channel.V1.EntitlementEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entitlement: String.t(),
          event_type: Google.Cloud.Channel.V1.EntitlementEvent.Type.t()
        }

  defstruct [:entitlement, :event_type]

  field :entitlement, 1, type: :string

  field :event_type, 2,
    type: Google.Cloud.Channel.V1.EntitlementEvent.Type,
    enum: true,
    json_name: "eventType"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Channel.V1.SubscriberEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          event:
            {:customer_event, Google.Cloud.Channel.V1.CustomerEvent.t() | nil}
            | {:entitlement_event, Google.Cloud.Channel.V1.EntitlementEvent.t() | nil}
        }

  defstruct [:event]

  oneof :event, 0

  field :customer_event, 1,
    type: Google.Cloud.Channel.V1.CustomerEvent,
    json_name: "customerEvent",
    oneof: 0

  field :entitlement_event, 2,
    type: Google.Cloud.Channel.V1.EntitlementEvent,
    json_name: "entitlementEvent",
    oneof: 0

  def transform_module(), do: nil
end
