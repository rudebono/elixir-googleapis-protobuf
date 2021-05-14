defmodule Google.Ads.Admob.V1.GetPublisherAccountRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Ads.Admob.V1.ListPublisherAccountsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:page_size, :page_token]

  field :page_size, 1, type: :int32
  field :page_token, 2, type: :string
end

defmodule Google.Ads.Admob.V1.ListPublisherAccountsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          account: [Google.Ads.Admob.V1.PublisherAccount.t()],
          next_page_token: String.t()
        }

  defstruct [:account, :next_page_token]

  field :account, 1, repeated: true, type: Google.Ads.Admob.V1.PublisherAccount
  field :next_page_token, 2, type: :string
end

defmodule Google.Ads.Admob.V1.GenerateMediationReportRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          report_spec: Google.Ads.Admob.V1.MediationReportSpec.t() | nil
        }

  defstruct [:parent, :report_spec]

  field :parent, 1, type: :string
  field :report_spec, 2, type: Google.Ads.Admob.V1.MediationReportSpec
end

defmodule Google.Ads.Admob.V1.GenerateMediationReportResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          payload: {atom, any}
        }

  defstruct [:payload]

  oneof :payload, 0
  field :header, 1, type: Google.Ads.Admob.V1.ReportHeader, oneof: 0
  field :row, 2, type: Google.Ads.Admob.V1.ReportRow, oneof: 0
  field :footer, 3, type: Google.Ads.Admob.V1.ReportFooter, oneof: 0
end

defmodule Google.Ads.Admob.V1.GenerateNetworkReportRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          report_spec: Google.Ads.Admob.V1.NetworkReportSpec.t() | nil
        }

  defstruct [:parent, :report_spec]

  field :parent, 1, type: :string
  field :report_spec, 2, type: Google.Ads.Admob.V1.NetworkReportSpec
end

defmodule Google.Ads.Admob.V1.GenerateNetworkReportResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          payload: {atom, any}
        }

  defstruct [:payload]

  oneof :payload, 0
  field :header, 1, type: Google.Ads.Admob.V1.ReportHeader, oneof: 0
  field :row, 2, type: Google.Ads.Admob.V1.ReportRow, oneof: 0
  field :footer, 3, type: Google.Ads.Admob.V1.ReportFooter, oneof: 0
end

defmodule Google.Ads.Admob.V1.AdMobApi.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.admob.v1.AdMobApi"

  rpc :GetPublisherAccount,
      Google.Ads.Admob.V1.GetPublisherAccountRequest,
      Google.Ads.Admob.V1.PublisherAccount

  rpc :ListPublisherAccounts,
      Google.Ads.Admob.V1.ListPublisherAccountsRequest,
      Google.Ads.Admob.V1.ListPublisherAccountsResponse

  rpc :GenerateNetworkReport,
      Google.Ads.Admob.V1.GenerateNetworkReportRequest,
      stream(Google.Ads.Admob.V1.GenerateNetworkReportResponse)

  rpc :GenerateMediationReport,
      Google.Ads.Admob.V1.GenerateMediationReportRequest,
      stream(Google.Ads.Admob.V1.GenerateMediationReportResponse)
end

defmodule Google.Ads.Admob.V1.AdMobApi.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Admob.V1.AdMobApi.Service
end
