defmodule Google.Apps.Events.Subscriptions.V1.CreateSubscriptionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :subscription, 1,
    type: Google.Apps.Events.Subscriptions.V1.Subscription,
    deprecated: false

  field :validate_only, 2, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Apps.Events.Subscriptions.V1.DeleteSubscriptionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly", deprecated: false
  field :allow_missing, 3, type: :bool, json_name: "allowMissing", deprecated: false
  field :etag, 4, type: :string, deprecated: false
end

defmodule Google.Apps.Events.Subscriptions.V1.GetSubscriptionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Apps.Events.Subscriptions.V1.UpdateSubscriptionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :subscription, 1,
    type: Google.Apps.Events.Subscriptions.V1.Subscription,
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Apps.Events.Subscriptions.V1.ReactivateSubscriptionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Apps.Events.Subscriptions.V1.ListSubscriptionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 3, type: :string, deprecated: false
end

defmodule Google.Apps.Events.Subscriptions.V1.ListSubscriptionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :subscriptions, 1, repeated: true, type: Google.Apps.Events.Subscriptions.V1.Subscription
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Apps.Events.Subscriptions.V1.UpdateSubscriptionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Apps.Events.Subscriptions.V1.CreateSubscriptionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Apps.Events.Subscriptions.V1.DeleteSubscriptionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Apps.Events.Subscriptions.V1.ReactivateSubscriptionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Apps.Events.Subscriptions.V1.SubscriptionsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.apps.events.subscriptions.v1.SubscriptionsService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateSubscription,
      Google.Apps.Events.Subscriptions.V1.CreateSubscriptionRequest,
      Google.Longrunning.Operation

  rpc :DeleteSubscription,
      Google.Apps.Events.Subscriptions.V1.DeleteSubscriptionRequest,
      Google.Longrunning.Operation

  rpc :GetSubscription,
      Google.Apps.Events.Subscriptions.V1.GetSubscriptionRequest,
      Google.Apps.Events.Subscriptions.V1.Subscription

  rpc :ListSubscriptions,
      Google.Apps.Events.Subscriptions.V1.ListSubscriptionsRequest,
      Google.Apps.Events.Subscriptions.V1.ListSubscriptionsResponse

  rpc :UpdateSubscription,
      Google.Apps.Events.Subscriptions.V1.UpdateSubscriptionRequest,
      Google.Longrunning.Operation

  rpc :ReactivateSubscription,
      Google.Apps.Events.Subscriptions.V1.ReactivateSubscriptionRequest,
      Google.Longrunning.Operation
end

defmodule Google.Apps.Events.Subscriptions.V1.SubscriptionsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Apps.Events.Subscriptions.V1.SubscriptionsService.Service
end