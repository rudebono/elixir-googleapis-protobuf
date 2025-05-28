defmodule Google.Apps.Events.Subscriptions.V1beta.CreateSubscriptionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :subscription, 1,
    type: Google.Apps.Events.Subscriptions.V1beta.Subscription,
    deprecated: false

  field :validate_only, 2, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Apps.Events.Subscriptions.V1beta.DeleteSubscriptionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly", deprecated: false
  field :allow_missing, 3, type: :bool, json_name: "allowMissing", deprecated: false
  field :etag, 4, type: :string, deprecated: false
end

defmodule Google.Apps.Events.Subscriptions.V1beta.GetSubscriptionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Apps.Events.Subscriptions.V1beta.UpdateSubscriptionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :subscription, 1,
    type: Google.Apps.Events.Subscriptions.V1beta.Subscription,
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Apps.Events.Subscriptions.V1beta.ReactivateSubscriptionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Apps.Events.Subscriptions.V1beta.ListSubscriptionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 3, type: :string, deprecated: false
end

defmodule Google.Apps.Events.Subscriptions.V1beta.ListSubscriptionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :subscriptions, 1,
    repeated: true,
    type: Google.Apps.Events.Subscriptions.V1beta.Subscription

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Apps.Events.Subscriptions.V1beta.UpdateSubscriptionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Apps.Events.Subscriptions.V1beta.CreateSubscriptionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Apps.Events.Subscriptions.V1beta.DeleteSubscriptionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Apps.Events.Subscriptions.V1beta.ReactivateSubscriptionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Apps.Events.Subscriptions.V1beta.SubscriptionsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.apps.events.subscriptions.v1beta.SubscriptionsService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CreateSubscription,
      Google.Apps.Events.Subscriptions.V1beta.CreateSubscriptionRequest,
      Google.Longrunning.Operation

  rpc :DeleteSubscription,
      Google.Apps.Events.Subscriptions.V1beta.DeleteSubscriptionRequest,
      Google.Longrunning.Operation

  rpc :GetSubscription,
      Google.Apps.Events.Subscriptions.V1beta.GetSubscriptionRequest,
      Google.Apps.Events.Subscriptions.V1beta.Subscription

  rpc :ListSubscriptions,
      Google.Apps.Events.Subscriptions.V1beta.ListSubscriptionsRequest,
      Google.Apps.Events.Subscriptions.V1beta.ListSubscriptionsResponse

  rpc :UpdateSubscription,
      Google.Apps.Events.Subscriptions.V1beta.UpdateSubscriptionRequest,
      Google.Longrunning.Operation

  rpc :ReactivateSubscription,
      Google.Apps.Events.Subscriptions.V1beta.ReactivateSubscriptionRequest,
      Google.Longrunning.Operation
end

defmodule Google.Apps.Events.Subscriptions.V1beta.SubscriptionsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Apps.Events.Subscriptions.V1beta.SubscriptionsService.Service
end
