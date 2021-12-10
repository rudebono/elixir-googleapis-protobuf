defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticContentPrompt do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content:
            {:card, Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticCardPrompt.t() | nil}
            | {:image, Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticImagePrompt.t() | nil}
            | {:table, Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticTablePrompt.t() | nil}
            | {:media, Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticMediaPrompt.t() | nil}
            | {:list, Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticListPrompt.t() | nil}
            | {:collection,
               Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticCollectionPrompt.t() | nil}
            | {:collection_browse,
               Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticCollectionBrowsePrompt.t()
               | nil}
        }

  defstruct content: nil

  oneof :content, 0

  field :card, 1, type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticCardPrompt, oneof: 0
  field :image, 2, type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticImagePrompt, oneof: 0
  field :table, 3, type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticTablePrompt, oneof: 0
  field :media, 4, type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticMediaPrompt, oneof: 0
  field :list, 5, type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticListPrompt, oneof: 0

  field :collection, 6,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticCollectionPrompt,
    oneof: 0

  field :collection_browse, 7,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticCollectionBrowsePrompt,
    json_name: "collectionBrowse",
    oneof: 0
end
