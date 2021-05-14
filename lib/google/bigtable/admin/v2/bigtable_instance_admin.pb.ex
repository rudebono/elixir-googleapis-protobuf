defmodule Google.Bigtable.Admin.V2.CreateInstanceRequest.ClustersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Bigtable.Admin.V2.Cluster.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Bigtable.Admin.V2.Cluster
end

defmodule Google.Bigtable.Admin.V2.CreateInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          instance_id: String.t(),
          instance: Google.Bigtable.Admin.V2.Instance.t() | nil,
          clusters: %{String.t() => Google.Bigtable.Admin.V2.Cluster.t() | nil}
        }

  defstruct [:parent, :instance_id, :instance, :clusters]

  field :parent, 1, type: :string
  field :instance_id, 2, type: :string
  field :instance, 3, type: Google.Bigtable.Admin.V2.Instance

  field :clusters, 4,
    repeated: true,
    type: Google.Bigtable.Admin.V2.CreateInstanceRequest.ClustersEntry,
    map: true
end

defmodule Google.Bigtable.Admin.V2.GetInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Bigtable.Admin.V2.ListInstancesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t()
        }

  defstruct [:parent, :page_token]

  field :parent, 1, type: :string
  field :page_token, 2, type: :string
end

defmodule Google.Bigtable.Admin.V2.ListInstancesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instances: [Google.Bigtable.Admin.V2.Instance.t()],
          failed_locations: [String.t()],
          next_page_token: String.t()
        }

  defstruct [:instances, :failed_locations, :next_page_token]

  field :instances, 1, repeated: true, type: Google.Bigtable.Admin.V2.Instance
  field :failed_locations, 2, repeated: true, type: :string
  field :next_page_token, 3, type: :string
end

defmodule Google.Bigtable.Admin.V2.PartialUpdateInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: Google.Bigtable.Admin.V2.Instance.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:instance, :update_mask]

  field :instance, 1, type: Google.Bigtable.Admin.V2.Instance
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Bigtable.Admin.V2.DeleteInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Bigtable.Admin.V2.CreateClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          cluster_id: String.t(),
          cluster: Google.Bigtable.Admin.V2.Cluster.t() | nil
        }

  defstruct [:parent, :cluster_id, :cluster]

  field :parent, 1, type: :string
  field :cluster_id, 2, type: :string
  field :cluster, 3, type: Google.Bigtable.Admin.V2.Cluster
end

defmodule Google.Bigtable.Admin.V2.GetClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Bigtable.Admin.V2.ListClustersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t()
        }

  defstruct [:parent, :page_token]

  field :parent, 1, type: :string
  field :page_token, 2, type: :string
end

defmodule Google.Bigtable.Admin.V2.ListClustersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          clusters: [Google.Bigtable.Admin.V2.Cluster.t()],
          failed_locations: [String.t()],
          next_page_token: String.t()
        }

  defstruct [:clusters, :failed_locations, :next_page_token]

  field :clusters, 1, repeated: true, type: Google.Bigtable.Admin.V2.Cluster
  field :failed_locations, 2, repeated: true, type: :string
  field :next_page_token, 3, type: :string
end

defmodule Google.Bigtable.Admin.V2.DeleteClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Bigtable.Admin.V2.CreateInstanceMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          original_request: Google.Bigtable.Admin.V2.CreateInstanceRequest.t() | nil,
          request_time: Google.Protobuf.Timestamp.t() | nil,
          finish_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:original_request, :request_time, :finish_time]

  field :original_request, 1, type: Google.Bigtable.Admin.V2.CreateInstanceRequest
  field :request_time, 2, type: Google.Protobuf.Timestamp
  field :finish_time, 3, type: Google.Protobuf.Timestamp
end

defmodule Google.Bigtable.Admin.V2.UpdateInstanceMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          original_request: Google.Bigtable.Admin.V2.PartialUpdateInstanceRequest.t() | nil,
          request_time: Google.Protobuf.Timestamp.t() | nil,
          finish_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:original_request, :request_time, :finish_time]

  field :original_request, 1, type: Google.Bigtable.Admin.V2.PartialUpdateInstanceRequest
  field :request_time, 2, type: Google.Protobuf.Timestamp
  field :finish_time, 3, type: Google.Protobuf.Timestamp
end

defmodule Google.Bigtable.Admin.V2.CreateClusterMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          original_request: Google.Bigtable.Admin.V2.CreateClusterRequest.t() | nil,
          request_time: Google.Protobuf.Timestamp.t() | nil,
          finish_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:original_request, :request_time, :finish_time]

  field :original_request, 1, type: Google.Bigtable.Admin.V2.CreateClusterRequest
  field :request_time, 2, type: Google.Protobuf.Timestamp
  field :finish_time, 3, type: Google.Protobuf.Timestamp
end

defmodule Google.Bigtable.Admin.V2.UpdateClusterMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          original_request: Google.Bigtable.Admin.V2.Cluster.t() | nil,
          request_time: Google.Protobuf.Timestamp.t() | nil,
          finish_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:original_request, :request_time, :finish_time]

  field :original_request, 1, type: Google.Bigtable.Admin.V2.Cluster
  field :request_time, 2, type: Google.Protobuf.Timestamp
  field :finish_time, 3, type: Google.Protobuf.Timestamp
end

defmodule Google.Bigtable.Admin.V2.CreateAppProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          app_profile_id: String.t(),
          app_profile: Google.Bigtable.Admin.V2.AppProfile.t() | nil,
          ignore_warnings: boolean
        }

  defstruct [:parent, :app_profile_id, :app_profile, :ignore_warnings]

  field :parent, 1, type: :string
  field :app_profile_id, 2, type: :string
  field :app_profile, 3, type: Google.Bigtable.Admin.V2.AppProfile
  field :ignore_warnings, 4, type: :bool
end

defmodule Google.Bigtable.Admin.V2.GetAppProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Bigtable.Admin.V2.ListAppProfilesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 2, type: :string
end

defmodule Google.Bigtable.Admin.V2.ListAppProfilesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          app_profiles: [Google.Bigtable.Admin.V2.AppProfile.t()],
          next_page_token: String.t(),
          failed_locations: [String.t()]
        }

  defstruct [:app_profiles, :next_page_token, :failed_locations]

  field :app_profiles, 1, repeated: true, type: Google.Bigtable.Admin.V2.AppProfile
  field :next_page_token, 2, type: :string
  field :failed_locations, 3, repeated: true, type: :string
end

defmodule Google.Bigtable.Admin.V2.UpdateAppProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          app_profile: Google.Bigtable.Admin.V2.AppProfile.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          ignore_warnings: boolean
        }

  defstruct [:app_profile, :update_mask, :ignore_warnings]

  field :app_profile, 1, type: Google.Bigtable.Admin.V2.AppProfile
  field :update_mask, 2, type: Google.Protobuf.FieldMask
  field :ignore_warnings, 3, type: :bool
end

defmodule Google.Bigtable.Admin.V2.DeleteAppProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          ignore_warnings: boolean
        }

  defstruct [:name, :ignore_warnings]

  field :name, 1, type: :string
  field :ignore_warnings, 2, type: :bool
end

defmodule Google.Bigtable.Admin.V2.UpdateAppProfileMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
