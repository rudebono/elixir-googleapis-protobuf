defmodule Google.Cloud.Talent.V4beta1.CreateCompanyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          company: Google.Cloud.Talent.V4beta1.Company.t() | nil
        }

  defstruct parent: "",
            company: nil

  field :parent, 1, type: :string, deprecated: false
  field :company, 2, type: Google.Cloud.Talent.V4beta1.Company, deprecated: false
end
defmodule Google.Cloud.Talent.V4beta1.GetCompanyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Talent.V4beta1.UpdateCompanyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          company: Google.Cloud.Talent.V4beta1.Company.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct company: nil,
            update_mask: nil

  field :company, 1, type: Google.Cloud.Talent.V4beta1.Company, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Talent.V4beta1.DeleteCompanyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Talent.V4beta1.ListCompaniesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer,
          require_open_jobs: boolean
        }

  defstruct parent: "",
            page_token: "",
            page_size: 0,
            require_open_jobs: false

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :require_open_jobs, 4, type: :bool, json_name: "requireOpenJobs"
end
defmodule Google.Cloud.Talent.V4beta1.ListCompaniesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          companies: [Google.Cloud.Talent.V4beta1.Company.t()],
          next_page_token: String.t(),
          metadata: Google.Cloud.Talent.V4beta1.ResponseMetadata.t() | nil
        }

  defstruct companies: [],
            next_page_token: "",
            metadata: nil

  field :companies, 1, repeated: true, type: Google.Cloud.Talent.V4beta1.Company
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :metadata, 3, type: Google.Cloud.Talent.V4beta1.ResponseMetadata
end
defmodule Google.Cloud.Talent.V4beta1.CompanyService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.talent.v4beta1.CompanyService"

  rpc :CreateCompany,
      Google.Cloud.Talent.V4beta1.CreateCompanyRequest,
      Google.Cloud.Talent.V4beta1.Company

  rpc :GetCompany,
      Google.Cloud.Talent.V4beta1.GetCompanyRequest,
      Google.Cloud.Talent.V4beta1.Company

  rpc :UpdateCompany,
      Google.Cloud.Talent.V4beta1.UpdateCompanyRequest,
      Google.Cloud.Talent.V4beta1.Company

  rpc :DeleteCompany, Google.Cloud.Talent.V4beta1.DeleteCompanyRequest, Google.Protobuf.Empty

  rpc :ListCompanies,
      Google.Cloud.Talent.V4beta1.ListCompaniesRequest,
      Google.Cloud.Talent.V4beta1.ListCompaniesResponse
end

defmodule Google.Cloud.Talent.V4beta1.CompanyService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Talent.V4beta1.CompanyService.Service
end
