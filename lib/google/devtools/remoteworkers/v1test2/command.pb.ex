defmodule Google.Devtools.Remoteworkers.V1test2.CommandTask.Inputs.EnvironmentVariable do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: String.t()
        }

  defstruct name: "",
            value: ""

  field :name, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Devtools.Remoteworkers.V1test2.CommandTask.Inputs do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          arguments: [String.t()],
          files: [Google.Devtools.Remoteworkers.V1test2.Digest.t()],
          inline_blobs: [Google.Devtools.Remoteworkers.V1test2.Blob.t()],
          environment_variables: [
            Google.Devtools.Remoteworkers.V1test2.CommandTask.Inputs.EnvironmentVariable.t()
          ],
          working_directory: String.t()
        }

  defstruct arguments: [],
            files: [],
            inline_blobs: [],
            environment_variables: [],
            working_directory: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          files: [String.t()],
          directories: [String.t()],
          stdout_destination: String.t(),
          stderr_destination: String.t()
        }

  defstruct files: [],
            directories: [],
            stdout_destination: "",
            stderr_destination: ""

  field :files, 1, repeated: true, type: :string
  field :directories, 2, repeated: true, type: :string
  field :stdout_destination, 3, type: :string, json_name: "stdoutDestination"
  field :stderr_destination, 4, type: :string, json_name: "stderrDestination"
end
defmodule Google.Devtools.Remoteworkers.V1test2.CommandTask.Timeouts do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          execution: Google.Protobuf.Duration.t() | nil,
          idle: Google.Protobuf.Duration.t() | nil,
          shutdown: Google.Protobuf.Duration.t() | nil
        }

  defstruct execution: nil,
            idle: nil,
            shutdown: nil

  field :execution, 1, type: Google.Protobuf.Duration
  field :idle, 2, type: Google.Protobuf.Duration
  field :shutdown, 3, type: Google.Protobuf.Duration
end
defmodule Google.Devtools.Remoteworkers.V1test2.CommandTask do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          inputs: Google.Devtools.Remoteworkers.V1test2.CommandTask.Inputs.t() | nil,
          expected_outputs: Google.Devtools.Remoteworkers.V1test2.CommandTask.Outputs.t() | nil,
          timeouts: Google.Devtools.Remoteworkers.V1test2.CommandTask.Timeouts.t() | nil
        }

  defstruct inputs: nil,
            expected_outputs: nil,
            timeouts: nil

  field :inputs, 1, type: Google.Devtools.Remoteworkers.V1test2.CommandTask.Inputs

  field :expected_outputs, 4,
    type: Google.Devtools.Remoteworkers.V1test2.CommandTask.Outputs,
    json_name: "expectedOutputs"

  field :timeouts, 5, type: Google.Devtools.Remoteworkers.V1test2.CommandTask.Timeouts
end
defmodule Google.Devtools.Remoteworkers.V1test2.CommandOutputs do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          exit_code: integer,
          outputs: Google.Devtools.Remoteworkers.V1test2.Digest.t() | nil
        }

  defstruct exit_code: 0,
            outputs: nil

  field :exit_code, 1, type: :int32, json_name: "exitCode"
  field :outputs, 2, type: Google.Devtools.Remoteworkers.V1test2.Digest
end
defmodule Google.Devtools.Remoteworkers.V1test2.CommandOverhead do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          duration: Google.Protobuf.Duration.t() | nil,
          overhead: Google.Protobuf.Duration.t() | nil
        }

  defstruct duration: nil,
            overhead: nil

  field :duration, 1, type: Google.Protobuf.Duration
  field :overhead, 2, type: Google.Protobuf.Duration
end
defmodule Google.Devtools.Remoteworkers.V1test2.CommandResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          status: Google.Rpc.Status.t() | nil,
          exit_code: integer,
          outputs: Google.Devtools.Remoteworkers.V1test2.Digest.t() | nil,
          duration: Google.Protobuf.Duration.t() | nil,
          overhead: Google.Protobuf.Duration.t() | nil,
          metadata: [Google.Protobuf.Any.t()]
        }

  defstruct status: nil,
            exit_code: 0,
            outputs: nil,
            duration: nil,
            overhead: nil,
            metadata: []

  field :status, 1, type: Google.Rpc.Status
  field :exit_code, 2, type: :int32, json_name: "exitCode"
  field :outputs, 3, type: Google.Devtools.Remoteworkers.V1test2.Digest
  field :duration, 4, type: Google.Protobuf.Duration, deprecated: true
  field :overhead, 5, type: Google.Protobuf.Duration, deprecated: true
  field :metadata, 6, repeated: true, type: Google.Protobuf.Any
end
defmodule Google.Devtools.Remoteworkers.V1test2.FileMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          path: String.t(),
          digest: Google.Devtools.Remoteworkers.V1test2.Digest.t() | nil,
          contents: binary,
          is_executable: boolean
        }

  defstruct path: "",
            digest: nil,
            contents: "",
            is_executable: false

  field :path, 1, type: :string
  field :digest, 2, type: Google.Devtools.Remoteworkers.V1test2.Digest
  field :contents, 3, type: :bytes
  field :is_executable, 4, type: :bool, json_name: "isExecutable"
end
defmodule Google.Devtools.Remoteworkers.V1test2.DirectoryMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          path: String.t(),
          digest: Google.Devtools.Remoteworkers.V1test2.Digest.t() | nil
        }

  defstruct path: "",
            digest: nil

  field :path, 1, type: :string
  field :digest, 2, type: Google.Devtools.Remoteworkers.V1test2.Digest
end
defmodule Google.Devtools.Remoteworkers.V1test2.Digest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hash: String.t(),
          size_bytes: integer
        }

  defstruct hash: "",
            size_bytes: 0

  field :hash, 1, type: :string
  field :size_bytes, 2, type: :int64, json_name: "sizeBytes"
end
defmodule Google.Devtools.Remoteworkers.V1test2.Blob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          digest: Google.Devtools.Remoteworkers.V1test2.Digest.t() | nil,
          contents: binary
        }

  defstruct digest: nil,
            contents: ""

  field :digest, 1, type: Google.Devtools.Remoteworkers.V1test2.Digest
  field :contents, 2, type: :bytes
end
defmodule Google.Devtools.Remoteworkers.V1test2.Directory do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          files: [Google.Devtools.Remoteworkers.V1test2.FileMetadata.t()],
          directories: [Google.Devtools.Remoteworkers.V1test2.DirectoryMetadata.t()]
        }

  defstruct files: [],
            directories: []

  field :files, 1, repeated: true, type: Google.Devtools.Remoteworkers.V1test2.FileMetadata

  field :directories, 2,
    repeated: true,
    type: Google.Devtools.Remoteworkers.V1test2.DirectoryMetadata
end
