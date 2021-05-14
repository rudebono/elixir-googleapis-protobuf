defmodule Google.Cloud.Websecurityscanner.V1.ScanRunWarningTrace.Code do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CODE_UNSPECIFIED
          | :INSUFFICIENT_CRAWL_RESULTS
          | :TOO_MANY_CRAWL_RESULTS
          | :TOO_MANY_FUZZ_TASKS
          | :BLOCKED_BY_IAP

  field :CODE_UNSPECIFIED, 0

  field :INSUFFICIENT_CRAWL_RESULTS, 1

  field :TOO_MANY_CRAWL_RESULTS, 2

  field :TOO_MANY_FUZZ_TASKS, 3

  field :BLOCKED_BY_IAP, 4
end

defmodule Google.Cloud.Websecurityscanner.V1.ScanRunWarningTrace do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          code: Google.Cloud.Websecurityscanner.V1.ScanRunWarningTrace.Code.t()
        }

  defstruct [:code]

  field :code, 1, type: Google.Cloud.Websecurityscanner.V1.ScanRunWarningTrace.Code, enum: true
end
