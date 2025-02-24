defmodule Google.Cloud.Workflows.Type.ExecutionsSystemLog.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
  field :CANCELLED, 4
end

defmodule Google.Cloud.Workflows.Type.ExecutionsSystemLog.Start do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :argument, 2, type: :string
end

defmodule Google.Cloud.Workflows.Type.ExecutionsSystemLog.Success do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :result, 2, type: :string
end

defmodule Google.Cloud.Workflows.Type.ExecutionsSystemLog.Failure do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :exception, 1, type: :string
  field :source, 2, type: :string
end

defmodule Google.Cloud.Workflows.Type.ExecutionsSystemLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :details, 0

  field :message, 1, type: :string
  field :activity_time, 2, type: Google.Protobuf.Timestamp, json_name: "activityTime"
  field :state, 3, type: Google.Cloud.Workflows.Type.ExecutionsSystemLog.State, enum: true
  field :start, 4, type: Google.Cloud.Workflows.Type.ExecutionsSystemLog.Start, oneof: 0
  field :success, 5, type: Google.Cloud.Workflows.Type.ExecutionsSystemLog.Success, oneof: 0
  field :failure, 6, type: Google.Cloud.Workflows.Type.ExecutionsSystemLog.Failure, oneof: 0
end
