defmodule Google.Cloud.Websecurityscanner.V1beta.CreateScanConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          scan_config: Google.Cloud.Websecurityscanner.V1beta.ScanConfig.t() | nil
        }

  defstruct [:parent, :scan_config]

  field :parent, 1, type: :string
  field :scan_config, 2, type: Google.Cloud.Websecurityscanner.V1beta.ScanConfig
end

defmodule Google.Cloud.Websecurityscanner.V1beta.DeleteScanConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1beta.GetScanConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ListScanConfigsRequest do
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

defmodule Google.Cloud.Websecurityscanner.V1beta.UpdateScanConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scan_config: Google.Cloud.Websecurityscanner.V1beta.ScanConfig.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:scan_config, :update_mask]

  field :scan_config, 2, type: Google.Cloud.Websecurityscanner.V1beta.ScanConfig
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ListScanConfigsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scan_configs: [Google.Cloud.Websecurityscanner.V1beta.ScanConfig.t()],
          next_page_token: String.t()
        }

  defstruct [:scan_configs, :next_page_token]

  field :scan_configs, 1, repeated: true, type: Google.Cloud.Websecurityscanner.V1beta.ScanConfig
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1beta.StartScanRunRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1beta.GetScanRunRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ListScanRunsRequest do
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

defmodule Google.Cloud.Websecurityscanner.V1beta.ListScanRunsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scan_runs: [Google.Cloud.Websecurityscanner.V1beta.ScanRun.t()],
          next_page_token: String.t()
        }

  defstruct [:scan_runs, :next_page_token]

  field :scan_runs, 1, repeated: true, type: Google.Cloud.Websecurityscanner.V1beta.ScanRun
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1beta.StopScanRunRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ListCrawledUrlsRequest do
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

defmodule Google.Cloud.Websecurityscanner.V1beta.ListCrawledUrlsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          crawled_urls: [Google.Cloud.Websecurityscanner.V1beta.CrawledUrl.t()],
          next_page_token: String.t()
        }

  defstruct [:crawled_urls, :next_page_token]

  field :crawled_urls, 1, repeated: true, type: Google.Cloud.Websecurityscanner.V1beta.CrawledUrl
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1beta.GetFindingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ListFindingsRequest do
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

defmodule Google.Cloud.Websecurityscanner.V1beta.ListFindingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          findings: [Google.Cloud.Websecurityscanner.V1beta.Finding.t()],
          next_page_token: String.t()
        }

  defstruct [:findings, :next_page_token]

  field :findings, 1, repeated: true, type: Google.Cloud.Websecurityscanner.V1beta.Finding
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ListFindingTypeStatsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t()
        }

  defstruct [:parent]

  field :parent, 1, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ListFindingTypeStatsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          finding_type_stats: [Google.Cloud.Websecurityscanner.V1beta.FindingTypeStats.t()]
        }

  defstruct [:finding_type_stats]

  field :finding_type_stats, 1,
    repeated: true,
    type: Google.Cloud.Websecurityscanner.V1beta.FindingTypeStats
end
