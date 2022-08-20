defmodule Google.Devtools.Resultstore.V2.LineCoverageSummary do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instrumented_line_count, 1, type: :int32, json_name: "instrumentedLineCount"
  field :executed_line_count, 2, type: :int32, json_name: "executedLineCount"
end

defmodule Google.Devtools.Resultstore.V2.BranchCoverageSummary do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :total_branch_count, 1, type: :int32, json_name: "totalBranchCount"
  field :executed_branch_count, 2, type: :int32, json_name: "executedBranchCount"
  field :taken_branch_count, 3, type: :int32, json_name: "takenBranchCount"
end

defmodule Google.Devtools.Resultstore.V2.LanguageCoverageSummary do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :language, 1, type: Google.Devtools.Resultstore.V2.Language, enum: true

  field :line_summary, 2,
    type: Google.Devtools.Resultstore.V2.LineCoverageSummary,
    json_name: "lineSummary"

  field :branch_summary, 3,
    type: Google.Devtools.Resultstore.V2.BranchCoverageSummary,
    json_name: "branchSummary"
end