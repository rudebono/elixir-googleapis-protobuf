defmodule Google.Devtools.Remoteworkers.V1test2.CommandTask.Inputs.EnvironmentVariable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Devtools.Remoteworkers.V1test2.CommandTask.Inputs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :arguments, 1, repeated: true, type: :string
  field :files, 2, repeated: true, type: Google.Devtools.Remoteworkers.V1test2.Digest

  field :inline_blobs, 4,
    repeated: true,
    type: Google.Devtools.Remoteworkers.V1test2.Blob,
    json_name: "inlineBlobs"

  field :environment_variables, 3,
    repeated: true,
    type: Google.Devtools.Remoteworkers.V1test2.CommandTask.Inputs.EnvironmentVariable,
    json_name: "environmentVariables"

  field :working_directory, 5, type: :string, json_name: "workingDirectory"
end

defmodule Google.Devtools.Remoteworkers.V1test2.CommandTask.Outputs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :files, 1, repeated: true, type: :string
  field :directories, 2, repeated: true, type: :string
  field :stdout_destination, 3, type: :string, json_name: "stdoutDestination"
  field :stderr_destination, 4, type: :string, json_name: "stderrDestination"
end

defmodule Google.Devtools.Remoteworkers.V1test2.CommandTask.Timeouts do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :execution, 1, type: Google.Protobuf.Duration
  field :idle, 2, type: Google.Protobuf.Duration
  field :shutdown, 3, type: Google.Protobuf.Duration
end

defmodule Google.Devtools.Remoteworkers.V1test2.CommandTask do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :inputs, 1, type: Google.Devtools.Remoteworkers.V1test2.CommandTask.Inputs

  field :expected_outputs, 4,
    type: Google.Devtools.Remoteworkers.V1test2.CommandTask.Outputs,
    json_name: "expectedOutputs"

  field :timeouts, 5, type: Google.Devtools.Remoteworkers.V1test2.CommandTask.Timeouts
end

defmodule Google.Devtools.Remoteworkers.V1test2.CommandOutputs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :exit_code, 1, type: :int32, json_name: "exitCode"
  field :outputs, 2, type: Google.Devtools.Remoteworkers.V1test2.Digest
end

defmodule Google.Devtools.Remoteworkers.V1test2.CommandOverhead do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :duration, 1, type: Google.Protobuf.Duration
  field :overhead, 2, type: Google.Protobuf.Duration
end

defmodule Google.Devtools.Remoteworkers.V1test2.CommandResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :status, 1, type: Google.Rpc.Status
  field :exit_code, 2, type: :int32, json_name: "exitCode"
  field :outputs, 3, type: Google.Devtools.Remoteworkers.V1test2.Digest
  field :duration, 4, type: Google.Protobuf.Duration, deprecated: true
  field :overhead, 5, type: Google.Protobuf.Duration, deprecated: true
  field :metadata, 6, repeated: true, type: Google.Protobuf.Any
end

defmodule Google.Devtools.Remoteworkers.V1test2.FileMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :path, 1, type: :string
  field :digest, 2, type: Google.Devtools.Remoteworkers.V1test2.Digest
  field :contents, 3, type: :bytes
  field :is_executable, 4, type: :bool, json_name: "isExecutable"
end

defmodule Google.Devtools.Remoteworkers.V1test2.DirectoryMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :path, 1, type: :string
  field :digest, 2, type: Google.Devtools.Remoteworkers.V1test2.Digest
end

defmodule Google.Devtools.Remoteworkers.V1test2.Digest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :hash, 1, type: :string
  field :size_bytes, 2, type: :int64, json_name: "sizeBytes"
end

defmodule Google.Devtools.Remoteworkers.V1test2.Blob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :digest, 1, type: Google.Devtools.Remoteworkers.V1test2.Digest
  field :contents, 2, type: :bytes
end

defmodule Google.Devtools.Remoteworkers.V1test2.Directory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :files, 1, repeated: true, type: Google.Devtools.Remoteworkers.V1test2.FileMetadata

  field :directories, 2,
    repeated: true,
    type: Google.Devtools.Remoteworkers.V1test2.DirectoryMetadata
end
