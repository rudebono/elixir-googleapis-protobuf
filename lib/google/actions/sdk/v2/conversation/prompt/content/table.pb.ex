defmodule Google.Actions.Sdk.V2.Conversation.TableColumn.HorizontalAlignment do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :LEADING, 1
  field :CENTER, 2
  field :TRAILING, 3
end
defmodule Google.Actions.Sdk.V2.Conversation.Table do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :title, 1, type: :string
  field :subtitle, 2, type: :string
  field :image, 4, type: Google.Actions.Sdk.V2.Conversation.Image
  field :columns, 5, repeated: true, type: Google.Actions.Sdk.V2.Conversation.TableColumn
  field :rows, 6, repeated: true, type: Google.Actions.Sdk.V2.Conversation.TableRow
  field :button, 7, type: Google.Actions.Sdk.V2.Conversation.Link
end
defmodule Google.Actions.Sdk.V2.Conversation.TableColumn do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :header, 1, type: :string

  field :align, 2,
    type: Google.Actions.Sdk.V2.Conversation.TableColumn.HorizontalAlignment,
    enum: true
end
defmodule Google.Actions.Sdk.V2.Conversation.TableCell do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :text, 1, type: :string
end
defmodule Google.Actions.Sdk.V2.Conversation.TableRow do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :cells, 1, repeated: true, type: Google.Actions.Sdk.V2.Conversation.TableCell
  field :divider, 2, type: :bool
end
