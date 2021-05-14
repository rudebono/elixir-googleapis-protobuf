defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.UrlHint do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :HINT_UNSPECIFIED | :AMP

  field :HINT_UNSPECIFIED, 0

  field :AMP, 1
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticLinkPrompt do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          open: Google.Actions.Sdk.V2.Interactionmodel.Prompt.OpenUrl.t() | nil
        }

  defstruct [:name, :open]

  field :name, 1, type: :string
  field :open, 2, type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.OpenUrl
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.OpenUrl do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t(),
          hint: Google.Actions.Sdk.V2.Interactionmodel.Prompt.UrlHint.t()
        }

  defstruct [:url, :hint]

  field :url, 1, type: :string
  field :hint, 2, type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.UrlHint, enum: true
end
