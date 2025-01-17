defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.TableColumn.HorizontalAlignment do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :LEADING, 1
  field :CENTER, 2
  field :TRAILING, 3
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticTablePrompt do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :title, 1, type: :string, deprecated: false
  field :subtitle, 2, type: :string, deprecated: false

  field :image, 3,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticImagePrompt,
    deprecated: false

  field :columns, 4,
    repeated: true,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.TableColumn,
    deprecated: false

  field :rows, 5,
    repeated: true,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.TableRow,
    deprecated: false

  field :button, 6,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticLinkPrompt,
    deprecated: false
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.TableColumn do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :header, 1, type: :string

  field :align, 2,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.TableColumn.HorizontalAlignment,
    enum: true
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.TableCell do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :text, 1, type: :string
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.TableRow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :cells, 1, repeated: true, type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.TableCell
  field :divider, 2, type: :bool
end
