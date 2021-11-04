defmodule Google.Cloud.Talent.V4beta1.CreateApplicationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          application: Google.Cloud.Talent.V4beta1.Application.t() | nil
        }

  defstruct [:parent, :application]

  field :parent, 1, type: :string
  field :application, 2, type: Google.Cloud.Talent.V4beta1.Application

  def transform_module(), do: nil
end

defmodule Google.Cloud.Talent.V4beta1.GetApplicationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Talent.V4beta1.UpdateApplicationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          application: Google.Cloud.Talent.V4beta1.Application.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:application, :update_mask]

  field :application, 1, type: Google.Cloud.Talent.V4beta1.Application
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Talent.V4beta1.DeleteApplicationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Talent.V4beta1.ListApplicationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct [:parent, :page_token, :page_size]

  field :parent, 1, type: :string
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Talent.V4beta1.ListApplicationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          applications: [Google.Cloud.Talent.V4beta1.Application.t()],
          next_page_token: String.t(),
          metadata: Google.Cloud.Talent.V4beta1.ResponseMetadata.t() | nil
        }

  defstruct [:applications, :next_page_token, :metadata]

  field :applications, 1, repeated: true, type: Google.Cloud.Talent.V4beta1.Application
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :metadata, 3, type: Google.Cloud.Talent.V4beta1.ResponseMetadata

  def transform_module(), do: nil
end

defmodule Google.Cloud.Talent.V4beta1.ApplicationService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.talent.v4beta1.ApplicationService"

  rpc :CreateApplication,
      Google.Cloud.Talent.V4beta1.CreateApplicationRequest,
      Google.Cloud.Talent.V4beta1.Application

  rpc :GetApplication,
      Google.Cloud.Talent.V4beta1.GetApplicationRequest,
      Google.Cloud.Talent.V4beta1.Application

  rpc :UpdateApplication,
      Google.Cloud.Talent.V4beta1.UpdateApplicationRequest,
      Google.Cloud.Talent.V4beta1.Application

  rpc :DeleteApplication,
      Google.Cloud.Talent.V4beta1.DeleteApplicationRequest,
      Google.Protobuf.Empty

  rpc :ListApplications,
      Google.Cloud.Talent.V4beta1.ListApplicationsRequest,
      Google.Cloud.Talent.V4beta1.ListApplicationsResponse
end

defmodule Google.Cloud.Talent.V4beta1.ApplicationService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Talent.V4beta1.ApplicationService.Service
end
