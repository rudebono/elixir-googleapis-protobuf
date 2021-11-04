defmodule Google.Cloud.Networkmanagement.V1beta1.ListConnectivityTestsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networkmanagement.V1beta1.ListConnectivityTestsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resources: [Google.Cloud.Networkmanagement.V1beta1.ConnectivityTest.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:resources, :next_page_token, :unreachable]

  field :resources, 1,
    repeated: true,
    type: Google.Cloud.Networkmanagement.V1beta1.ConnectivityTest

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networkmanagement.V1beta1.GetConnectivityTestRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networkmanagement.V1beta1.CreateConnectivityTestRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          test_id: String.t(),
          resource: Google.Cloud.Networkmanagement.V1beta1.ConnectivityTest.t() | nil
        }

  defstruct [:parent, :test_id, :resource]

  field :parent, 1, type: :string
  field :test_id, 2, type: :string, json_name: "testId"
  field :resource, 3, type: Google.Cloud.Networkmanagement.V1beta1.ConnectivityTest

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networkmanagement.V1beta1.UpdateConnectivityTestRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          resource: Google.Cloud.Networkmanagement.V1beta1.ConnectivityTest.t() | nil
        }

  defstruct [:update_mask, :resource]

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :resource, 2, type: Google.Cloud.Networkmanagement.V1beta1.ConnectivityTest

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networkmanagement.V1beta1.DeleteConnectivityTestRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networkmanagement.V1beta1.RerunConnectivityTestRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networkmanagement.V1beta1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          target: String.t(),
          verb: String.t(),
          status_detail: String.t(),
          cancel_requested: boolean,
          api_version: String.t()
        }

  defstruct [
    :create_time,
    :end_time,
    :target,
    :verb,
    :status_detail,
    :cancel_requested,
    :api_version
  ]

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :status_detail, 5, type: :string, json_name: "statusDetail"
  field :cancel_requested, 6, type: :bool, json_name: "cancelRequested"
  field :api_version, 7, type: :string, json_name: "apiVersion"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networkmanagement.V1beta1.ReachabilityService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.networkmanagement.v1beta1.ReachabilityService"

  rpc :ListConnectivityTests,
      Google.Cloud.Networkmanagement.V1beta1.ListConnectivityTestsRequest,
      Google.Cloud.Networkmanagement.V1beta1.ListConnectivityTestsResponse

  rpc :GetConnectivityTest,
      Google.Cloud.Networkmanagement.V1beta1.GetConnectivityTestRequest,
      Google.Cloud.Networkmanagement.V1beta1.ConnectivityTest

  rpc :CreateConnectivityTest,
      Google.Cloud.Networkmanagement.V1beta1.CreateConnectivityTestRequest,
      Google.Longrunning.Operation

  rpc :UpdateConnectivityTest,
      Google.Cloud.Networkmanagement.V1beta1.UpdateConnectivityTestRequest,
      Google.Longrunning.Operation

  rpc :RerunConnectivityTest,
      Google.Cloud.Networkmanagement.V1beta1.RerunConnectivityTestRequest,
      Google.Longrunning.Operation

  rpc :DeleteConnectivityTest,
      Google.Cloud.Networkmanagement.V1beta1.DeleteConnectivityTestRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Networkmanagement.V1beta1.ReachabilityService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Networkmanagement.V1beta1.ReachabilityService.Service
end
