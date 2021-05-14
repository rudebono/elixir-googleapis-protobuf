defmodule Google.Devtools.Resultstore.V2.LineCoverage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instrumented_lines: binary,
          executed_lines: binary
        }

  defstruct [:instrumented_lines, :executed_lines]

  field :instrumented_lines, 1, type: :bytes
  field :executed_lines, 2, type: :bytes
end

defmodule Google.Devtools.Resultstore.V2.BranchCoverage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          branch_present: binary,
          branches_in_line: [integer],
          executed: binary,
          taken: binary
        }

  defstruct [:branch_present, :branches_in_line, :executed, :taken]

  field :branch_present, 1, type: :bytes
  field :branches_in_line, 2, repeated: true, type: :int32
  field :executed, 3, type: :bytes
  field :taken, 4, type: :bytes
end

defmodule Google.Devtools.Resultstore.V2.FileCoverage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          path: String.t(),
          line_coverage: Google.Devtools.Resultstore.V2.LineCoverage.t() | nil,
          branch_coverage: Google.Devtools.Resultstore.V2.BranchCoverage.t() | nil
        }

  defstruct [:path, :line_coverage, :branch_coverage]

  field :path, 1, type: :string
  field :line_coverage, 2, type: Google.Devtools.Resultstore.V2.LineCoverage
  field :branch_coverage, 3, type: Google.Devtools.Resultstore.V2.BranchCoverage
end

defmodule Google.Devtools.Resultstore.V2.ActionCoverage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file_coverages: [Google.Devtools.Resultstore.V2.FileCoverage.t()]
        }

  defstruct [:file_coverages]

  field :file_coverages, 2, repeated: true, type: Google.Devtools.Resultstore.V2.FileCoverage
end

defmodule Google.Devtools.Resultstore.V2.AggregateCoverage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file_coverages: [Google.Devtools.Resultstore.V2.FileCoverage.t()]
        }

  defstruct [:file_coverages]

  field :file_coverages, 1, repeated: true, type: Google.Devtools.Resultstore.V2.FileCoverage
end
