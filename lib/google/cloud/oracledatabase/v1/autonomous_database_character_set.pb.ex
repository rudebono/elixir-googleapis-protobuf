defmodule Google.Cloud.Oracledatabase.V1.AutonomousDatabaseCharacterSet.CharacterSetType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CHARACTER_SET_TYPE_UNSPECIFIED, 0
  field :DATABASE, 1
  field :NATIONAL, 2
end

defmodule Google.Cloud.Oracledatabase.V1.AutonomousDatabaseCharacterSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :character_set_type, 2,
    type: Google.Cloud.Oracledatabase.V1.AutonomousDatabaseCharacterSet.CharacterSetType,
    json_name: "characterSetType",
    enum: true,
    deprecated: false

  field :character_set, 3, type: :string, json_name: "characterSet", deprecated: false
end