defmodule Google.Cloud.Metastore.Logging.V1.RequestsLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :message, 1, type: :string
end

defmodule Google.Cloud.Metastore.Logging.V1.SystemActivityLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :message, 1, type: :string
end
