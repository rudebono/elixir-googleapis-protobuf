defmodule Google.Monitoring.Dashboard.V1.ErrorReportingPanel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_names, 1, repeated: true, type: :string, json_name: "projectNames"
  field :services, 2, repeated: true, type: :string
  field :versions, 3, repeated: true, type: :string
end
