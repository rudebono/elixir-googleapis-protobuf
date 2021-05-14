defmodule Google.Cloud.Securitycenter.V1beta1.ListAssetsResponse.ListAssetsResult.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :UNUSED | :ADDED | :REMOVED | :ACTIVE

  field :STATE_UNSPECIFIED, 0

  field :UNUSED, 1

  field :ADDED, 2

  field :REMOVED, 3

  field :ACTIVE, 4
end

defmodule Google.Cloud.Securitycenter.V1beta1.CreateFindingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          finding_id: String.t(),
          finding: Google.Cloud.Securitycenter.V1beta1.Finding.t() | nil
        }

  defstruct [:parent, :finding_id, :finding]

  field :parent, 1, type: :string
  field :finding_id, 2, type: :string
  field :finding, 3, type: Google.Cloud.Securitycenter.V1beta1.Finding
end

defmodule Google.Cloud.Securitycenter.V1beta1.CreateSourceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          source: Google.Cloud.Securitycenter.V1beta1.Source.t() | nil
        }

  defstruct [:parent, :source]

  field :parent, 1, type: :string
  field :source, 2, type: Google.Cloud.Securitycenter.V1beta1.Source
end

defmodule Google.Cloud.Securitycenter.V1beta1.GetOrganizationSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Securitycenter.V1beta1.GetSourceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Securitycenter.V1beta1.GroupAssetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          group_by: String.t(),
          compare_duration: Google.Protobuf.Duration.t() | nil,
          read_time: Google.Protobuf.Timestamp.t() | nil,
          page_token: String.t(),
          page_size: integer
        }

  defstruct [:parent, :filter, :group_by, :compare_duration, :read_time, :page_token, :page_size]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :group_by, 3, type: :string
  field :compare_duration, 4, type: Google.Protobuf.Duration
  field :read_time, 5, type: Google.Protobuf.Timestamp
  field :page_token, 7, type: :string
  field :page_size, 8, type: :int32
end

defmodule Google.Cloud.Securitycenter.V1beta1.GroupAssetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          group_by_results: [Google.Cloud.Securitycenter.V1beta1.GroupResult.t()],
          read_time: Google.Protobuf.Timestamp.t() | nil,
          next_page_token: String.t()
        }

  defstruct [:group_by_results, :read_time, :next_page_token]

  field :group_by_results, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1beta1.GroupResult

  field :read_time, 2, type: Google.Protobuf.Timestamp
  field :next_page_token, 3, type: :string
end

defmodule Google.Cloud.Securitycenter.V1beta1.GroupFindingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          group_by: String.t(),
          read_time: Google.Protobuf.Timestamp.t() | nil,
          page_token: String.t(),
          page_size: integer
        }

  defstruct [:parent, :filter, :group_by, :read_time, :page_token, :page_size]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :group_by, 3, type: :string
  field :read_time, 4, type: Google.Protobuf.Timestamp
  field :page_token, 5, type: :string
  field :page_size, 6, type: :int32
end

defmodule Google.Cloud.Securitycenter.V1beta1.GroupFindingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          group_by_results: [Google.Cloud.Securitycenter.V1beta1.GroupResult.t()],
          read_time: Google.Protobuf.Timestamp.t() | nil,
          next_page_token: String.t()
        }

  defstruct [:group_by_results, :read_time, :next_page_token]

  field :group_by_results, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1beta1.GroupResult

  field :read_time, 2, type: Google.Protobuf.Timestamp
  field :next_page_token, 3, type: :string
end

defmodule Google.Cloud.Securitycenter.V1beta1.GroupResult.PropertiesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Protobuf.Value.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Securitycenter.V1beta1.GroupResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          properties: %{String.t() => Google.Protobuf.Value.t() | nil},
          count: integer
        }

  defstruct [:properties, :count]

  field :properties, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1beta1.GroupResult.PropertiesEntry,
    map: true

  field :count, 2, type: :int64
end

defmodule Google.Cloud.Securitycenter.V1beta1.ListSourcesRequest do
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
  field :page_size, 7, type: :int32
end

defmodule Google.Cloud.Securitycenter.V1beta1.ListSourcesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sources: [Google.Cloud.Securitycenter.V1beta1.Source.t()],
          next_page_token: String.t()
        }

  defstruct [:sources, :next_page_token]

  field :sources, 1, repeated: true, type: Google.Cloud.Securitycenter.V1beta1.Source
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Securitycenter.V1beta1.ListAssetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          order_by: String.t(),
          read_time: Google.Protobuf.Timestamp.t() | nil,
          compare_duration: Google.Protobuf.Duration.t() | nil,
          field_mask: Google.Protobuf.FieldMask.t() | nil,
          page_token: String.t(),
          page_size: integer
        }

  defstruct [
    :parent,
    :filter,
    :order_by,
    :read_time,
    :compare_duration,
    :field_mask,
    :page_token,
    :page_size
  ]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :order_by, 3, type: :string
  field :read_time, 4, type: Google.Protobuf.Timestamp
  field :compare_duration, 5, type: Google.Protobuf.Duration
  field :field_mask, 7, type: Google.Protobuf.FieldMask
  field :page_token, 8, type: :string
  field :page_size, 9, type: :int32
end

defmodule Google.Cloud.Securitycenter.V1beta1.ListAssetsResponse.ListAssetsResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          asset: Google.Cloud.Securitycenter.V1beta1.Asset.t() | nil,
          state: Google.Cloud.Securitycenter.V1beta1.ListAssetsResponse.ListAssetsResult.State.t()
        }

  defstruct [:asset, :state]

  field :asset, 1, type: Google.Cloud.Securitycenter.V1beta1.Asset

  field :state, 2,
    type: Google.Cloud.Securitycenter.V1beta1.ListAssetsResponse.ListAssetsResult.State,
    enum: true
end

defmodule Google.Cloud.Securitycenter.V1beta1.ListAssetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          list_assets_results: [
            Google.Cloud.Securitycenter.V1beta1.ListAssetsResponse.ListAssetsResult.t()
          ],
          read_time: Google.Protobuf.Timestamp.t() | nil,
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct [:list_assets_results, :read_time, :next_page_token, :total_size]

  field :list_assets_results, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1beta1.ListAssetsResponse.ListAssetsResult

  field :read_time, 2, type: Google.Protobuf.Timestamp
  field :next_page_token, 3, type: :string
  field :total_size, 4, type: :int32
end

defmodule Google.Cloud.Securitycenter.V1beta1.ListFindingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          order_by: String.t(),
          read_time: Google.Protobuf.Timestamp.t() | nil,
          field_mask: Google.Protobuf.FieldMask.t() | nil,
          page_token: String.t(),
          page_size: integer
        }

  defstruct [:parent, :filter, :order_by, :read_time, :field_mask, :page_token, :page_size]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :order_by, 3, type: :string
  field :read_time, 4, type: Google.Protobuf.Timestamp
  field :field_mask, 5, type: Google.Protobuf.FieldMask
  field :page_token, 6, type: :string
  field :page_size, 7, type: :int32
end

defmodule Google.Cloud.Securitycenter.V1beta1.ListFindingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          findings: [Google.Cloud.Securitycenter.V1beta1.Finding.t()],
          read_time: Google.Protobuf.Timestamp.t() | nil,
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct [:findings, :read_time, :next_page_token, :total_size]

  field :findings, 1, repeated: true, type: Google.Cloud.Securitycenter.V1beta1.Finding
  field :read_time, 2, type: Google.Protobuf.Timestamp
  field :next_page_token, 3, type: :string
  field :total_size, 4, type: :int32
end

defmodule Google.Cloud.Securitycenter.V1beta1.SetFindingStateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          state: Google.Cloud.Securitycenter.V1beta1.Finding.State.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :state, :start_time]

  field :name, 1, type: :string
  field :state, 2, type: Google.Cloud.Securitycenter.V1beta1.Finding.State, enum: true
  field :start_time, 3, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Securitycenter.V1beta1.RunAssetDiscoveryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t()
        }

  defstruct [:parent]

  field :parent, 1, type: :string
end

defmodule Google.Cloud.Securitycenter.V1beta1.UpdateFindingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          finding: Google.Cloud.Securitycenter.V1beta1.Finding.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:finding, :update_mask]

  field :finding, 1, type: Google.Cloud.Securitycenter.V1beta1.Finding
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Securitycenter.V1beta1.UpdateOrganizationSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          organization_settings:
            Google.Cloud.Securitycenter.V1beta1.OrganizationSettings.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:organization_settings, :update_mask]

  field :organization_settings, 1, type: Google.Cloud.Securitycenter.V1beta1.OrganizationSettings
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Securitycenter.V1beta1.UpdateSourceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: Google.Cloud.Securitycenter.V1beta1.Source.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:source, :update_mask]

  field :source, 1, type: Google.Cloud.Securitycenter.V1beta1.Source
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Securitycenter.V1beta1.UpdateSecurityMarksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          security_marks: Google.Cloud.Securitycenter.V1beta1.SecurityMarks.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:security_marks, :update_mask, :start_time]

  field :security_marks, 1, type: Google.Cloud.Securitycenter.V1beta1.SecurityMarks
  field :update_mask, 2, type: Google.Protobuf.FieldMask
  field :start_time, 3, type: Google.Protobuf.Timestamp
end
