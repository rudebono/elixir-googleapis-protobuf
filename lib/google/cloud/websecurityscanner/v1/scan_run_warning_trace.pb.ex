defmodule Google.Cloud.Websecurityscanner.V1.ScanRunWarningTrace.Code do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CODE_UNSPECIFIED, 0
  field :INSUFFICIENT_CRAWL_RESULTS, 1
  field :TOO_MANY_CRAWL_RESULTS, 2
  field :TOO_MANY_FUZZ_TASKS, 3
  field :BLOCKED_BY_IAP, 4
  field :NO_STARTING_URL_FOUND_FOR_MANAGED_SCAN, 5
end

defmodule Google.Cloud.Websecurityscanner.V1.ScanRunWarningTrace do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :code, 1, type: Google.Cloud.Websecurityscanner.V1.ScanRunWarningTrace.Code, enum: true
end
