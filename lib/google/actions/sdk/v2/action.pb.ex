defmodule Google.Actions.Sdk.V2.Actions.Engagement.PushNotification do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Actions.Sdk.V2.Actions.Engagement.DailyUpdate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Actions.Sdk.V2.Actions.Engagement.ActionLink do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t()
        }

  defstruct title: ""

  field :title, 1, type: :string
end
defmodule Google.Actions.Sdk.V2.Actions.Engagement.AssistantLink do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t()
        }

  defstruct title: ""

  field :title, 1, type: :string
end
defmodule Google.Actions.Sdk.V2.Actions.Engagement do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          recurring_update:
            {:daily_update, Google.Actions.Sdk.V2.Actions.Engagement.DailyUpdate.t() | nil},
          title: String.t(),
          push_notification: Google.Actions.Sdk.V2.Actions.Engagement.PushNotification.t() | nil,
          action_link: Google.Actions.Sdk.V2.Actions.Engagement.ActionLink.t() | nil,
          assistant_link: Google.Actions.Sdk.V2.Actions.Engagement.AssistantLink.t() | nil
        }

  defstruct recurring_update: nil,
            title: "",
            push_notification: nil,
            action_link: nil,
            assistant_link: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          engagement: Google.Actions.Sdk.V2.Actions.Engagement.t() | nil
        }

  defstruct engagement: nil

  field :engagement, 2, type: Google.Actions.Sdk.V2.Actions.Engagement
end
defmodule Google.Actions.Sdk.V2.Actions.CustomEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Actions.Sdk.V2.Actions.CustomAction.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Actions.Sdk.V2.Actions.CustomAction
end
defmodule Google.Actions.Sdk.V2.Actions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          custom: %{String.t() => Google.Actions.Sdk.V2.Actions.CustomAction.t() | nil}
        }

  defstruct custom: %{}

  field :custom, 3, repeated: true, type: Google.Actions.Sdk.V2.Actions.CustomEntry, map: true
end
