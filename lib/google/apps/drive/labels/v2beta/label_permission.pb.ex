defmodule Google.Apps.Drive.Labels.V2beta.LabelPermission.LabelRole do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LABEL_ROLE_UNSPECIFIED, 0
  field :READER, 1
  field :APPLIER, 2
  field :ORGANIZER, 3
  field :EDITOR, 4
end

defmodule Google.Apps.Drive.Labels.V2beta.LabelPermission do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :principal, 0

  field :person, 3, type: :string, oneof: 0, deprecated: false
  field :group, 4, type: :string, oneof: 0, deprecated: false
  field :audience, 5, type: :string, oneof: 0
  field :name, 1, type: :string
  field :email, 2, type: :string
  field :role, 6, type: Google.Apps.Drive.Labels.V2beta.LabelPermission.LabelRole, enum: true
end
