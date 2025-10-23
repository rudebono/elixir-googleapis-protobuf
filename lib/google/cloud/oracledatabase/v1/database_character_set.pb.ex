defmodule Google.Cloud.Oracledatabase.V1.DatabaseCharacterSet.CharacterSetType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CHARACTER_SET_TYPE_UNSPECIFIED, 0
  field :DATABASE, 1
  field :NATIONAL, 2
end

defmodule Google.Cloud.Oracledatabase.V1.DatabaseCharacterSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :character_set_type, 2,
    type: Google.Cloud.Oracledatabase.V1.DatabaseCharacterSet.CharacterSetType,
    json_name: "characterSetType",
    enum: true,
    deprecated: false

  field :character_set, 3, type: :string, json_name: "characterSet", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListDatabaseCharacterSetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListDatabaseCharacterSetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :database_character_sets, 1,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.DatabaseCharacterSet,
    json_name: "databaseCharacterSets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
