defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.TableColumn.HorizontalAlignment do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :LEADING | :CENTER | :TRAILING

  field :UNSPECIFIED, 0

  field :LEADING, 1

  field :CENTER, 2

  field :TRAILING, 3
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticTablePrompt do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          subtitle: String.t(),
          image: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticImagePrompt.t() | nil,
          columns: [Google.Actions.Sdk.V2.Interactionmodel.Prompt.TableColumn.t()],
          rows: [Google.Actions.Sdk.V2.Interactionmodel.Prompt.TableRow.t()],
          button: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticLinkPrompt.t() | nil
        }

  defstruct [:title, :subtitle, :image, :columns, :rows, :button]

  field :title, 1, type: :string
  field :subtitle, 2, type: :string
  field :image, 3, type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticImagePrompt

  field :columns, 4,
    repeated: true,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.TableColumn

  field :rows, 5, repeated: true, type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.TableRow
  field :button, 6, type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticLinkPrompt
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.TableColumn do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: String.t(),
          align: Google.Actions.Sdk.V2.Interactionmodel.Prompt.TableColumn.HorizontalAlignment.t()
        }

  defstruct [:header, :align]

  field :header, 1, type: :string

  field :align, 2,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.TableColumn.HorizontalAlignment,
    enum: true
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.TableCell do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t()
        }

  defstruct [:text]

  field :text, 1, type: :string
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.TableRow do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cells: [Google.Actions.Sdk.V2.Interactionmodel.Prompt.TableCell.t()],
          divider: boolean
        }

  defstruct [:cells, :divider]

  field :cells, 1, repeated: true, type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.TableCell
  field :divider, 2, type: :bool
end
