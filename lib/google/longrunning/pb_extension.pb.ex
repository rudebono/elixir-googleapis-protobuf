defmodule Google.Longrunning.PbExtension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1"

  extend Google.Protobuf.MethodOptions, :operation_info, 1049,
    optional: true,
    type: Google.Longrunning.OperationInfo,
    json_name: "operationInfo"
end
