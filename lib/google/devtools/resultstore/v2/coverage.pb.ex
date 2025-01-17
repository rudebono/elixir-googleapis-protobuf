defmodule Google.Devtools.Resultstore.V2.LineCoverage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :instrumented_lines, 1, type: :bytes, json_name: "instrumentedLines"
  field :executed_lines, 2, type: :bytes, json_name: "executedLines"
end

defmodule Google.Devtools.Resultstore.V2.BranchCoverage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :branch_present, 1, type: :bytes, json_name: "branchPresent"
  field :branches_in_line, 2, repeated: true, type: :int32, json_name: "branchesInLine"
  field :executed, 3, type: :bytes
  field :taken, 4, type: :bytes
end

defmodule Google.Devtools.Resultstore.V2.FileCoverage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :path, 1, type: :string

  field :line_coverage, 2,
    type: Google.Devtools.Resultstore.V2.LineCoverage,
    json_name: "lineCoverage"

  field :branch_coverage, 3,
    type: Google.Devtools.Resultstore.V2.BranchCoverage,
    json_name: "branchCoverage"
end

defmodule Google.Devtools.Resultstore.V2.ActionCoverage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :file_coverages, 2,
    repeated: true,
    type: Google.Devtools.Resultstore.V2.FileCoverage,
    json_name: "fileCoverages"
end

defmodule Google.Devtools.Resultstore.V2.AggregateCoverage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :file_coverages, 1,
    repeated: true,
    type: Google.Devtools.Resultstore.V2.FileCoverage,
    json_name: "fileCoverages"
end
