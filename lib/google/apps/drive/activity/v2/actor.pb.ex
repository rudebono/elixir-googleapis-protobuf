defmodule Google.Apps.Drive.Activity.V2.SystemEvent.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TYPE_UNSPECIFIED | :USER_DELETION | :TRASH_AUTO_PURGE

  field :TYPE_UNSPECIFIED, 0
  field :USER_DELETION, 1
  field :TRASH_AUTO_PURGE, 2
end
defmodule Google.Apps.Drive.Activity.V2.Actor do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type:
            {:user, Google.Apps.Drive.Activity.V2.User.t() | nil}
            | {:anonymous, Google.Apps.Drive.Activity.V2.AnonymousUser.t() | nil}
            | {:impersonation, Google.Apps.Drive.Activity.V2.Impersonation.t() | nil}
            | {:system, Google.Apps.Drive.Activity.V2.SystemEvent.t() | nil}
            | {:administrator, Google.Apps.Drive.Activity.V2.Administrator.t() | nil}
        }

  defstruct type: nil

  oneof :type, 0

  field :user, 1, type: Google.Apps.Drive.Activity.V2.User, oneof: 0
  field :anonymous, 2, type: Google.Apps.Drive.Activity.V2.AnonymousUser, oneof: 0
  field :impersonation, 3, type: Google.Apps.Drive.Activity.V2.Impersonation, oneof: 0
  field :system, 4, type: Google.Apps.Drive.Activity.V2.SystemEvent, oneof: 0
  field :administrator, 5, type: Google.Apps.Drive.Activity.V2.Administrator, oneof: 0
end
defmodule Google.Apps.Drive.Activity.V2.User.KnownUser do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          person_name: String.t(),
          is_current_user: boolean
        }

  defstruct person_name: "",
            is_current_user: false

  field :person_name, 1, type: :string, json_name: "personName"
  field :is_current_user, 2, type: :bool, json_name: "isCurrentUser"
end
defmodule Google.Apps.Drive.Activity.V2.User.DeletedUser do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Apps.Drive.Activity.V2.User.UnknownUser do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Apps.Drive.Activity.V2.User do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type:
            {:known_user, Google.Apps.Drive.Activity.V2.User.KnownUser.t() | nil}
            | {:deleted_user, Google.Apps.Drive.Activity.V2.User.DeletedUser.t() | nil}
            | {:unknown_user, Google.Apps.Drive.Activity.V2.User.UnknownUser.t() | nil}
        }

  defstruct type: nil

  oneof :type, 0

  field :known_user, 2,
    type: Google.Apps.Drive.Activity.V2.User.KnownUser,
    json_name: "knownUser",
    oneof: 0

  field :deleted_user, 3,
    type: Google.Apps.Drive.Activity.V2.User.DeletedUser,
    json_name: "deletedUser",
    oneof: 0

  field :unknown_user, 4,
    type: Google.Apps.Drive.Activity.V2.User.UnknownUser,
    json_name: "unknownUser",
    oneof: 0
end
defmodule Google.Apps.Drive.Activity.V2.AnonymousUser do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Apps.Drive.Activity.V2.Impersonation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          impersonated_user: Google.Apps.Drive.Activity.V2.User.t() | nil
        }

  defstruct impersonated_user: nil

  field :impersonated_user, 1,
    type: Google.Apps.Drive.Activity.V2.User,
    json_name: "impersonatedUser"
end
defmodule Google.Apps.Drive.Activity.V2.SystemEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Apps.Drive.Activity.V2.SystemEvent.Type.t()
        }

  defstruct type: :TYPE_UNSPECIFIED

  field :type, 1, type: Google.Apps.Drive.Activity.V2.SystemEvent.Type, enum: true
end
defmodule Google.Apps.Drive.Activity.V2.Administrator do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
