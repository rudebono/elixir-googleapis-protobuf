defmodule Google.Actions.Sdk.V2.Actions.Engagement.PushNotification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Actions.Sdk.V2.Actions.Engagement.DailyUpdate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Actions.Sdk.V2.Actions.Engagement.ActionLink do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :title, 1, type: :string
end

defmodule Google.Actions.Sdk.V2.Actions.Engagement.AssistantLink do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :title, 1, type: :string
end

defmodule Google.Actions.Sdk.V2.Actions.Engagement do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :recurring_update, 0

  field :title, 1, type: :string

  field :push_notification, 2,
    type: Google.Actions.Sdk.V2.Actions.Engagement.PushNotification,
    json_name: "pushNotification"

  field :daily_update, 3,
    type: Google.Actions.Sdk.V2.Actions.Engagement.DailyUpdate,
    json_name: "dailyUpdate",
    oneof: 0

  field :action_link, 4,
    type: Google.Actions.Sdk.V2.Actions.Engagement.ActionLink,
    json_name: "actionLink",
    deprecated: true

  field :assistant_link, 6,
    type: Google.Actions.Sdk.V2.Actions.Engagement.AssistantLink,
    json_name: "assistantLink"
end

defmodule Google.Actions.Sdk.V2.Actions.CustomAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :engagement, 2, type: Google.Actions.Sdk.V2.Actions.Engagement
end

defmodule Google.Actions.Sdk.V2.Actions.CustomEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Actions.Sdk.V2.Actions.CustomAction
end

defmodule Google.Actions.Sdk.V2.Actions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :custom, 3, repeated: true, type: Google.Actions.Sdk.V2.Actions.CustomEntry, map: true
end