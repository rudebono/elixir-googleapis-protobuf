defmodule Google.Actions.Sdk.V2.Conversation.TableColumn.HorizontalAlignment do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :LEADING | :CENTER | :TRAILING

  field :UNSPECIFIED, 0
  field :LEADING, 1
  field :CENTER, 2
  field :TRAILING, 3
end

defmodule Google.Actions.Sdk.V2.Conversation.Table do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          subtitle: String.t(),
          image: Google.Actions.Sdk.V2.Conversation.Image.t() | nil,
          columns: [Google.Actions.Sdk.V2.Conversation.TableColumn.t()],
          rows: [Google.Actions.Sdk.V2.Conversation.TableRow.t()],
          button: Google.Actions.Sdk.V2.Conversation.Link.t() | nil
        }

  defstruct [:title, :subtitle, :image, :columns, :rows, :button]

  field :title, 1, type: :string
  field :subtitle, 2, type: :string
  field :image, 4, type: Google.Actions.Sdk.V2.Conversation.Image
  field :columns, 5, repeated: true, type: Google.Actions.Sdk.V2.Conversation.TableColumn
  field :rows, 6, repeated: true, type: Google.Actions.Sdk.V2.Conversation.TableRow
  field :button, 7, type: Google.Actions.Sdk.V2.Conversation.Link

  def transform_module(), do: nil
end

defmodule Google.Actions.Sdk.V2.Conversation.TableColumn do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: String.t(),
          align: Google.Actions.Sdk.V2.Conversation.TableColumn.HorizontalAlignment.t()
        }

  defstruct [:header, :align]

  field :header, 1, type: :string

  field :align, 2,
    type: Google.Actions.Sdk.V2.Conversation.TableColumn.HorizontalAlignment,
    enum: true

  def transform_module(), do: nil
end

defmodule Google.Actions.Sdk.V2.Conversation.TableCell do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t()
        }

  defstruct [:text]

  field :text, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Actions.Sdk.V2.Conversation.TableRow do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cells: [Google.Actions.Sdk.V2.Conversation.TableCell.t()],
          divider: boolean
        }

  defstruct [:cells, :divider]

  field :cells, 1, repeated: true, type: Google.Actions.Sdk.V2.Conversation.TableCell
  field :divider, 2, type: :bool

  def transform_module(), do: nil
end
