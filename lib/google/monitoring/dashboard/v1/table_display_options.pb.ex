defmodule Google.Monitoring.Dashboard.V1.TableDisplayOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :shown_columns, 1,
    repeated: true,
    type: :string,
    json_name: "shownColumns",
    deprecated: true
end
