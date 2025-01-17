defmodule Google.Chat.V1.DeletionMetadata.DeletionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :DELETION_TYPE_UNSPECIFIED, 0
  field :CREATOR, 1
  field :SPACE_OWNER, 2
  field :ADMIN, 3
  field :APP_MESSAGE_EXPIRY, 4
  field :CREATOR_VIA_APP, 5
  field :SPACE_OWNER_VIA_APP, 6
end

defmodule Google.Chat.V1.DeletionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :deletion_type, 1,
    type: Google.Chat.V1.DeletionMetadata.DeletionType,
    json_name: "deletionType",
    enum: true
end
