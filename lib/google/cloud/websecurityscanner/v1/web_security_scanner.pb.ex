defmodule Google.Cloud.Websecurityscanner.V1.CreateScanConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          scan_config: Google.Cloud.Websecurityscanner.V1.ScanConfig.t() | nil
        }

  defstruct [:parent, :scan_config]

  field :parent, 1, type: :string
  field :scan_config, 2, type: Google.Cloud.Websecurityscanner.V1.ScanConfig
end

defmodule Google.Cloud.Websecurityscanner.V1.DeleteScanConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1.GetScanConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1.ListScanConfigsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct [:parent, :page_token, :page_size]

  field :parent, 1, type: :string
  field :page_token, 2, type: :string
  field :page_size, 3, type: :int32
end

defmodule Google.Cloud.Websecurityscanner.V1.UpdateScanConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scan_config: Google.Cloud.Websecurityscanner.V1.ScanConfig.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:scan_config, :update_mask]

  field :scan_config, 2, type: Google.Cloud.Websecurityscanner.V1.ScanConfig
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Websecurityscanner.V1.ListScanConfigsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scan_configs: [Google.Cloud.Websecurityscanner.V1.ScanConfig.t()],
          next_page_token: String.t()
        }

  defstruct [:scan_configs, :next_page_token]

  field :scan_configs, 1, repeated: true, type: Google.Cloud.Websecurityscanner.V1.ScanConfig
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1.StartScanRunRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1.GetScanRunRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1.ListScanRunsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct [:parent, :page_token, :page_size]

  field :parent, 1, type: :string
  field :page_token, 2, type: :string
  field :page_size, 3, type: :int32
end

defmodule Google.Cloud.Websecurityscanner.V1.ListScanRunsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scan_runs: [Google.Cloud.Websecurityscanner.V1.ScanRun.t()],
          next_page_token: String.t()
        }

  defstruct [:scan_runs, :next_page_token]

  field :scan_runs, 1, repeated: true, type: Google.Cloud.Websecurityscanner.V1.ScanRun
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1.StopScanRunRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1.ListCrawledUrlsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct [:parent, :page_token, :page_size]

  field :parent, 1, type: :string
  field :page_token, 2, type: :string
  field :page_size, 3, type: :int32
end

defmodule Google.Cloud.Websecurityscanner.V1.ListCrawledUrlsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          crawled_urls: [Google.Cloud.Websecurityscanner.V1.CrawledUrl.t()],
          next_page_token: String.t()
        }

  defstruct [:crawled_urls, :next_page_token]

  field :crawled_urls, 1, repeated: true, type: Google.Cloud.Websecurityscanner.V1.CrawledUrl
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1.GetFindingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1.ListFindingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct [:parent, :filter, :page_token, :page_size]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_token, 3, type: :string
  field :page_size, 4, type: :int32
end

defmodule Google.Cloud.Websecurityscanner.V1.ListFindingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          findings: [Google.Cloud.Websecurityscanner.V1.Finding.t()],
          next_page_token: String.t()
        }

  defstruct [:findings, :next_page_token]

  field :findings, 1, repeated: true, type: Google.Cloud.Websecurityscanner.V1.Finding
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1.ListFindingTypeStatsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t()
        }

  defstruct [:parent]

  field :parent, 1, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1.ListFindingTypeStatsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          finding_type_stats: [Google.Cloud.Websecurityscanner.V1.FindingTypeStats.t()]
        }

  defstruct [:finding_type_stats]

  field :finding_type_stats, 1,
    repeated: true,
    type: Google.Cloud.Websecurityscanner.V1.FindingTypeStats
end
