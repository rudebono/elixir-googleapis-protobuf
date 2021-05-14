defmodule Google.Cloud.Talent.V4.CreateCompanyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          company: Google.Cloud.Talent.V4.Company.t() | nil
        }

  defstruct [:parent, :company]

  field :parent, 1, type: :string
  field :company, 2, type: Google.Cloud.Talent.V4.Company
end

defmodule Google.Cloud.Talent.V4.GetCompanyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Talent.V4.UpdateCompanyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          company: Google.Cloud.Talent.V4.Company.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:company, :update_mask]

  field :company, 1, type: Google.Cloud.Talent.V4.Company
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Talent.V4.DeleteCompanyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Talent.V4.ListCompaniesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer,
          require_open_jobs: boolean
        }

  defstruct [:parent, :page_token, :page_size, :require_open_jobs]

  field :parent, 1, type: :string
  field :page_token, 2, type: :string
  field :page_size, 3, type: :int32
  field :require_open_jobs, 4, type: :bool
end

defmodule Google.Cloud.Talent.V4.ListCompaniesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          companies: [Google.Cloud.Talent.V4.Company.t()],
          next_page_token: String.t(),
          metadata: Google.Cloud.Talent.V4.ResponseMetadata.t() | nil
        }

  defstruct [:companies, :next_page_token, :metadata]

  field :companies, 1, repeated: true, type: Google.Cloud.Talent.V4.Company
  field :next_page_token, 2, type: :string
  field :metadata, 3, type: Google.Cloud.Talent.V4.ResponseMetadata
end
