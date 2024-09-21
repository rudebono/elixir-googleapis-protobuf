defmodule Google.Cloud.Channel.V1.CustomerEvent.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :PRIMARY_DOMAIN_CHANGED, 1
  field :PRIMARY_DOMAIN_VERIFIED, 2
end

defmodule Google.Cloud.Channel.V1.EntitlementEvent.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :customer, 1, type: :string, deprecated: false

  field :event_type, 2,
    type: Google.Cloud.Channel.V1.CustomerEvent.Type,
    json_name: "eventType",
    enum: true
end

defmodule Google.Cloud.Channel.V1.EntitlementEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :entitlement, 1, type: :string, deprecated: false

  field :event_type, 2,
    type: Google.Cloud.Channel.V1.EntitlementEvent.Type,
    json_name: "eventType",
    enum: true
end

defmodule Google.Cloud.Channel.V1.SubscriberEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :event, 0

  field :customer_event, 1,
    type: Google.Cloud.Channel.V1.CustomerEvent,
    json_name: "customerEvent",
    oneof: 0

  field :entitlement_event, 2,
    type: Google.Cloud.Channel.V1.EntitlementEvent,
    json_name: "entitlementEvent",
    oneof: 0
end