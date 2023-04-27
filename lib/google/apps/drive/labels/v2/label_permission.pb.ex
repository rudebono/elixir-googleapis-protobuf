defmodule Google.Apps.Drive.Labels.V2.LabelPermission.LabelRole do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :LABEL_ROLE_UNSPECIFIED, 0
  field :READER, 1
  field :APPLIER, 2
  field :ORGANIZER, 3
  field :EDITOR, 4
end

defmodule Google.Apps.Drive.Labels.V2.LabelPermission do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end