defmodule Google.Cloud.Dialogflow.Cx.V3.DataStoreType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DATA_STORE_TYPE_UNSPECIFIED, 0
  field :PUBLIC_WEB, 1
  field :UNSTRUCTURED, 2
  field :STRUCTURED, 3
end

defmodule Google.Cloud.Dialogflow.Cx.V3.DataStoreConnection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :data_store_type, 1,
    type: Google.Cloud.Dialogflow.Cx.V3.DataStoreType,
    json_name: "dataStoreType",
    enum: true

  field :data_store, 2, type: :string, json_name: "dataStore"
end