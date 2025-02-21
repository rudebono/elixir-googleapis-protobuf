defmodule Google.Chat.V1.SpaceReadState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string

  field :last_read_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "lastReadTime",
    deprecated: false
end

defmodule Google.Chat.V1.GetSpaceReadStateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Chat.V1.UpdateSpaceReadStateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :space_read_state, 1,
    type: Google.Chat.V1.SpaceReadState,
    json_name: "spaceReadState",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
