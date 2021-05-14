defmodule Google.Actions.Sdk.V2.Conversation.UrlHint do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :LINK_UNSPECIFIED | :AMP

  field :LINK_UNSPECIFIED, 0

  field :AMP, 1
end

defmodule Google.Actions.Sdk.V2.Conversation.Link do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          open: Google.Actions.Sdk.V2.Conversation.OpenUrl.t() | nil
        }

  defstruct [:name, :open]

  field :name, 1, type: :string
  field :open, 2, type: Google.Actions.Sdk.V2.Conversation.OpenUrl
end

defmodule Google.Actions.Sdk.V2.Conversation.OpenUrl do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t(),
          hint: Google.Actions.Sdk.V2.Conversation.UrlHint.t()
        }

  defstruct [:url, :hint]

  field :url, 1, type: :string
  field :hint, 2, type: Google.Actions.Sdk.V2.Conversation.UrlHint, enum: true
end
