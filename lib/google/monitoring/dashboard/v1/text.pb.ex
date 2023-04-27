defmodule Google.Monitoring.Dashboard.V1.Text.Format do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :FORMAT_UNSPECIFIED, 0
  field :MARKDOWN, 1
  field :RAW, 2
end

defmodule Google.Monitoring.Dashboard.V1.Text do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :content, 1, type: :string
  field :format, 2, type: Google.Monitoring.Dashboard.V1.Text.Format, enum: true
end