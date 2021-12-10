defmodule Google.Devtools.Resultstore.V2.LineCoverageSummary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instrumented_line_count: integer,
          executed_line_count: integer
        }

  defstruct instrumented_line_count: 0,
            executed_line_count: 0

  field :instrumented_line_count, 1, type: :int32, json_name: "instrumentedLineCount"
  field :executed_line_count, 2, type: :int32, json_name: "executedLineCount"
end
defmodule Google.Devtools.Resultstore.V2.BranchCoverageSummary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          total_branch_count: integer,
          executed_branch_count: integer,
          taken_branch_count: integer
        }

  defstruct total_branch_count: 0,
            executed_branch_count: 0,
            taken_branch_count: 0

  field :total_branch_count, 1, type: :int32, json_name: "totalBranchCount"
  field :executed_branch_count, 2, type: :int32, json_name: "executedBranchCount"
  field :taken_branch_count, 3, type: :int32, json_name: "takenBranchCount"
end
defmodule Google.Devtools.Resultstore.V2.LanguageCoverageSummary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          language: Google.Devtools.Resultstore.V2.Language.t(),
          line_summary: Google.Devtools.Resultstore.V2.LineCoverageSummary.t() | nil,
          branch_summary: Google.Devtools.Resultstore.V2.BranchCoverageSummary.t() | nil
        }

  defstruct language: :LANGUAGE_UNSPECIFIED,
            line_summary: nil,
            branch_summary: nil

  field :language, 1, type: Google.Devtools.Resultstore.V2.Language, enum: true

  field :line_summary, 2,
    type: Google.Devtools.Resultstore.V2.LineCoverageSummary,
    json_name: "lineSummary"

  field :branch_summary, 3,
    type: Google.Devtools.Resultstore.V2.BranchCoverageSummary,
    json_name: "branchSummary"
end
